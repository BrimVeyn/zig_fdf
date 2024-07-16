// # **************************************************************************** #
// #                                                                              #
// #                                                         :::      ::::::::    #
// #    map.zig                                            :+:      :+:    :+:    #
// #                                                     +:+ +:+         +:+      #
// #    By: bvan-pae <bryan.vanpaemel@gmail.com>       +#+  +:+       +#+         #
// #                                                 +#+#+#+#+#+   +#+            #
// #    Created: 2024/07/16 11:11:06 by bvan-pae          #+#    #+#              #
// #    Updated: 2024/07/16 11:11:06 by bvan-pae         ###   ########.fr        #
// #                                                                              #
// # **************************************************************************** #

const std = @import("std");
const ArrayList = std.ArrayList;
const Allocator = std.mem.Allocator;
const angle = @import("rotations.zig");
const math = std.math;
const PI = math.pi;

const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;

// Let's make this a comptime struct such that
// if you need to change the type of your point
// you can easily do so,
pub fn Point(comptime T: type) type {
    return struct {
        const Self = @This();
        x: T,
        y: T,
        z: T,

        pub fn init(x: T, y: T, z: T) Self {
            return Self{
                .x = x,
                .y = y,
                .z = z,
            };
        }
    };
}

pub const Color = union {
    color: u32,

    pub fn init(value: u32) Color {
        return Color{
            .color = value,
        };
    }
};

// Really great
pub const MapError = error{
    wrong_z, //unexcepted Z value
    wrong_color, //Wrong color format
    empty_map, //Empty map lol

};

// the name could be better I think put this is a neat pick
pub const Vector2 = struct {
    const Self = @This();
    ax: f32,
    ay: f32,
    bx: f32,
    by: f32,
    dx: f32,
    dy: f32,
    dab: f32,

    pub fn init(pa: Point(f32), pb: Point(f32)) Self {
        const ax = pa.x;
        const ay = pa.y;
        const bx = pb.x;
        const by = pb.y;
        const dx = pb.x - pa.x;
        const dy = pb.y - pa.y;
        const dab = @sqrt((dx) * (dx) + (dy) * (dy));

        return Self{
            .ax = ax,
            .ay = ay,
            .bx = bx,
            .by = by,
            .dx = dx,
            .dy = dy,
            .dab = dab,
        };
    }

    pub fn draw(self: *Self, mlx_res: *MlxRessources) void {
        // I know this is 42's norme trauma but x and y should be declared
        // inisde the loop the reason is that local variable are easier
        // for a compiler to optimize
        // var x: i16 = undefined;
        // var y: i16 = undefined;

        // here you should replace the while loop with a for loop
        // the reason is that for loop have better auto vectorization
        const int_dab: u16 = @intFromFloat(self.dab);
        for (0..int_dab) |i| {
            const x: i16 = @intFromFloat(@round(self.ax + (self.dx * @as(f32, @as(f32, @floatFromInt(i)) / self.dab))));
            const y: i16 = @intFromFloat(@round(self.ay + (self.dy * @as(f32, @as(f32, @floatFromInt(i)) / self.dab))));
            const color: u32 = 0x0000FF00;
            // std.debug.print("pixel: {d},{d}\n", .{ x, y });
            backend.myMlxPixelPut(mlx_res, x, y, color);
        }
    }

    pub fn debug(self: *Self) void {
        std.debug.print("a: {d},{d} b: {d},{d}\n", .{ self.ax, self.ay, self.bx, self.by });
    }
};

fn roundToNearest(x: f32, nearest: f32) f32 {
    return std.math.round(x / nearest) * nearest;
}

/// here we make the map comptime again such that it can create an ArrayList of Points(T)
pub fn Map(comptime T: type) type {
    return struct {
        const DefaultColor = "0x00000000";
        const Self = @This();

        allocator: std.mem.Allocator,
        color_data: ArrayList(Color),
        map_data: ArrayList(Point(T)),
        theta_z: f32,
        theta_x: f32,
        z_factor: f32,
        min_x: f32,
        max_x: f32,
        min_y: f32,
        max_y: f32,

        width: usize,
        height: usize,

        pub fn init(allocator: Allocator) Allocator.Error!*Self {
            const new: *Self = try allocator.create(Self);
            new.* = Self{
                .allocator = allocator,
                .color_data = ArrayList(Color).init(allocator),
                .map_data = ArrayList(Point(T)).init(allocator),
                .width = 0,
                .height = 0,
                .theta_z = 45,
                .theta_x = 45,
                .z_factor = 1,
                .min_x = 0,
                .max_x = 0,
                .min_y = 0,
                .max_y = 0,
            };
            return (new);
        }

        pub fn parse(self: *Self, raw_points: []const u8) (MapError || Allocator.Error)!void {
            var height: usize = 0;
            var width: usize = 0;
            var max_width: usize = 0;

            var row_iterator = std.mem.splitScalar(u8, raw_points, '\n');
            while (row_iterator.next()) |row| {
                var entry_iterator = std.mem.splitScalar(u8, row, ' ');
                width = 0;
                if (row.len == 0) continue;
                while (entry_iterator.next()) |entry| {
                    if (entry.len == 0) continue;
                    // std.debug.print("entry = {s}\n", .{entry});
                    const z = std.fmt.parseFloat(T, entry) catch 0;
                    const x: T = @floatFromInt(width);
                    const y: T = @floatFromInt(height);
                    const entry_point = Point(T).init(x, y, z);
                    try self.map_data.append(entry_point);

                    width += 1;
                }
                // std.debug.print("width = {d}\n", .{width});
                max_width = if (width > max_width) width else max_width;
                height += 1;
            }
            if (height == 0) {
                return error.empty_map;
            }
            self.height = height;
            self.width = max_width;

            normalize_pts(self);
        }

        fn normalize_pts(self: *Self) void {
            var mid_x: T = @floatFromInt(self.width);
            var mid_y: T = @floatFromInt(self.height);
            mid_x /= 2;
            mid_y /= 2;
            const is_mid_x_round = @mod(mid_x, 1) == 0.0;
            const is_mid_y_round = @mod(mid_y, 1) == 0.0;
            std.debug.print("mid_x = {d}\n", .{mid_x});
            std.debug.print("mid_y = {d}\n", .{mid_y});
            std.debug.print("is mid_x round ? {}\n", .{is_mid_x_round});
            std.debug.print("is mid_y round ? {}\n", .{is_mid_y_round});

            const sp_x: T = -mid_x + 0.5;
            const sp_y: T = -mid_y + 0.5;
            std.debug.print("sp_x {d}, sp_y {d}\n", .{ sp_x, sp_y });

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_data.items[w + h * self.width].x = sp_x + @as(T, @floatFromInt(w));
                    self.map_data.items[w + h * self.width].y = sp_y + @as(T, @floatFromInt(h));
                }
                std.debug.print("\n", .{});
            }
            // self.debugMapData();
        }

        pub fn rotateX(self: *Self, Angle: f32) void {
            const thetha = @mod(Angle * math.rad_per_deg, 6.28319);
            const rounded_theta = roundToNearest(thetha, 0.01);
            const u_rounded_theta = @mod(@as(u32, @intFromFloat(rounded_theta * 100)), 627);
            std.debug.print("thetha = {d}\n", .{thetha});
            std.debug.print("rounded thetha = {d}\n", .{rounded_theta});
            std.debug.print("u_rounded_theta = {d}\n\n", .{u_rounded_theta});

            const sin_theta = angle.precomputed_sin[u_rounded_theta];
            const cos_theta = angle.precomputed_cos[u_rounded_theta];
            // std.debug.print("cos_theta = {d}\n", .{cos_theta});
            // std.debug.print("sin_theta = {d}\n", .{sin_theta});
            //
            // std.debug.print("cos, sin = |{d}|{d}|\n", .{ cos_theta, sin_theta });

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_data.items[w + h * self.width].y = (self.map_data.items[w + h * self.width].y * cos_theta) - (self.map_data.items[w + h * self.width].z * sin_theta) * self.z_factor;

                    if (self.map_data.items[w + (h * self.width)].x < self.min_x) {
                        self.min_x = self.map_data.items[w + (h * self.width)].x;
                    }
                    if (self.map_data.items[w + (h * self.width)].y < self.min_y) {
                        self.min_y = self.map_data.items[w + (h * self.width)].y;
                    }
                    if (self.map_data.items[w + (h * self.width)].y > self.max_y) {
                        self.max_y = self.map_data.items[w + (h * self.width)].y;
                    }
                    if (self.map_data.items[w + (h * self.width)].x > self.max_x) {
                        self.max_x = self.map_data.items[w + (h * self.width)].x;
                    }
                }
            }
        }

        pub fn rotateZ(self: *Self, Angle: f32) void {
            const thetha = @mod(Angle * math.rad_per_deg, 6.28319);
            const rounded_theta = roundToNearest(thetha, 0.01);
            const u_rounded_theta = @mod(@as(u32, @intFromFloat(rounded_theta * 100)), 627);
            std.debug.print("thetha = {d}\n", .{thetha});
            std.debug.print("rounded thetha = {d}\n", .{rounded_theta});
            std.debug.print("u_rounded_theta = {d}\n\n", .{u_rounded_theta});

            const sin_theta = angle.precomputed_sin[u_rounded_theta];
            const cos_theta = angle.precomputed_cos[u_rounded_theta];

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    const new_x = (self.map_data.items[w + (h * self.width)].x * cos_theta) - (self.map_data.items[w + (h * self.width)].y * sin_theta);
                    self.map_data.items[w + (h * self.width)].y = (self.map_data.items[w + (h * self.width)].x * sin_theta) + (self.map_data.items[w + (h * self.width)].y * cos_theta);
                    self.map_data.items[w + (h * self.width)].x = new_x;
                }
            }
        }

        pub fn scale(self: *Self) void {
            const yc_off = self.min_y + self.max_y;
            const x_factor = 1000 / (self.max_x - self.min_x);
            const y_factor = 1000 / (self.max_y - self.min_y);
            var s_factor = if (x_factor >= y_factor) y_factor else x_factor;
            s_factor *= 0.99;

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_data.items[w + (h * self.width)].x *= s_factor;
                    self.map_data.items[w + (h * self.width)].y *= s_factor;
                    self.map_data.items[w + (h * self.width)].x += 1000 / 2.0;
                    self.map_data.items[w + (h * self.width)].y += 1000 / 2.0 - (yc_off * (s_factor) / 2);
                }
            }
        }

        pub fn draw(self: *Self, mlx_res: *MlxRessources) void {
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    if (w < self.width - 1) {
                        var vect_ab = Vector2.init(self.map_data.items[w + (h * self.width)], self.map_data.items[(w + 1) + (h * self.width)]);
                        // vect_ab.debug();
                        vect_ab.draw(mlx_res);
                    }
                    if (h < self.height - 1) {
                        var vect_ab = Vector2.init(self.map_data.items[w + (h * self.width)], self.map_data.items[w + ((h + 1) * self.width)]);
                        // vect_ab.debug();
                        vect_ab.draw(mlx_res);
                    }
                }
            }
        }

        pub fn debugMapData(self: *Self) void {
            std.debug.print("HEIGHT: {d} | WIDTH: {d}\n", .{ self.height, self.width });
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    const pts = self.map_data.items[w + h * self.width];
                    std.debug.print("pts[{d}][{d}] = |{d}|{d}|{d}|\n", .{ w, h, pts.x, pts.y, pts.z });
                }
                std.debug.print("\n", .{});
            }
        }

        pub fn deinit(self: *Self) void {
            self.map_data.deinit();
            self.color_data.deinit();
            self.allocator.destroy(self);
        }
    };
}

const testing = std.testing;
const expect = std.testing.expect;

const EMPTY_MAP = "";

const TESTMAP =
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
;

test "test - fillWith" {
    // first we use the testing allocator not a regular one
    const allocator = testing.allocator;
    var map = try Map(i32).init(allocator);
    defer map.deinit();

    try map.parse(TESTMAP);
    map.debugMapData();
    try expect(map.width == 4);
    try expect(map.height == 4);
    // you will see that this is actually the best part of zig
    // the fact that it is so easy and cheap to "test" your code
    // makes it a really good ergonomic language, because as you
    // go longer and longer in your project having test ensures
    // that your refactoring won't break your code behind your back
}

test "empty map" {
    const allocator = testing.allocator;
    var map = try Map(i32).init(allocator);
    defer map.deinit();

    try expect(map.parse(EMPTY_MAP) == error.empty_map);
    map.debugMapData();
    try expect(map.width == 0);
    try expect(map.height == 0);
}
