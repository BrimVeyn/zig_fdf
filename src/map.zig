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

    pub fn init(pa: @Vector(3, f32), pb: @Vector(3, f32)) Self {
        const ax = pa[0];
        const ay = pa[1];
        const bx = pb[0];
        const by = pb[1];
        const dx = pb[0] - pa[0];
        const dy = pb[1] - pa[1];
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
        const int_dab: u16 = @intFromFloat(self.dab);
        for (0..int_dab) |i| {
            const x: i16 = @intFromFloat(@round(self.ax + (self.dx * @as(f32, @as(f32, @floatFromInt(i)) / self.dab))));
            const y: i16 = @intFromFloat(@round(self.ay + (self.dy * @as(f32, @as(f32, @floatFromInt(i)) / self.dab))));
            const color: u32 = 0x0000FF00;
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
        map_data: ArrayList(@Vector(3, f32)),
        map_save: ArrayList(@Vector(3, f32)),
        theta_z: f32,
        theta_x: f32,
        theta_y: f32,

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
                .map_data = ArrayList(@Vector(3, f32)).init(allocator),
                .map_save = ArrayList(@Vector(3, f32)).init(allocator),
                .width = 0,
                .height = 0,
                .theta_z = 45,
                .theta_x = 45,
                .theta_y = 0,
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
                    const entry_point = @Vector(3, f32){ x, y, z };
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
            self.map_save = try self.map_data.clone();
        }

        fn normalize_pts(self: *Self) void {
            var mid_x: T = @floatFromInt(self.width);
            var mid_y: T = @floatFromInt(self.height);
            mid_x /= 2;
            mid_y /= 2;

            const sp_x: T = -mid_x + 0.5;
            const sp_y: T = -mid_y + 0.5;
            // std.debug.print("sp_x {d}, sp_y {d}\n", .{ sp_x, sp_y });

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_data.items[w + h * self.width][0] = sp_x + @as(T, @floatFromInt(w));
                    self.map_data.items[w + h * self.width][1] = sp_y + @as(T, @floatFromInt(h));
                }
                std.debug.print("\n", .{});
            }
        }

        pub fn rotateX(self: *Self, Angle: f32) void {
            const thetha = @mod(Angle * math.rad_per_deg, 6.28319);
            const rounded_theta = roundToNearest(thetha, 0.01);
            const u_rounded_theta = @mod(@as(u32, @intFromFloat(rounded_theta * 100)), 627);

            const sin_theta = angle.precomputed_sin[u_rounded_theta];
            const cos_theta = angle.precomputed_cos[u_rounded_theta];

            self.min_x = 0;
            self.min_y = 0;
            self.max_x = 0;
            self.max_y = 0;

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_data.items[w + h * self.width][1] = (self.map_save.items[w + h * self.width][1] * cos_theta) - (self.map_save.items[w + h * self.width][2] * sin_theta) * self.z_factor;

                    if (self.map_data.items[w + (h * self.width)][0] < self.min_x) {
                        self.min_x = self.map_data.items[w + (h * self.width)][0];
                    }
                    if (self.map_data.items[w + (h * self.width)][1] < self.min_y) {
                        self.min_y = self.map_data.items[w + (h * self.width)][1];
                    }
                    if (self.map_data.items[w + (h * self.width)][1] > self.max_y) {
                        self.max_y = self.map_data.items[w + (h * self.width)][1];
                    }
                    if (self.map_data.items[w + (h * self.width)][0] > self.max_x) {
                        self.max_x = self.map_data.items[w + (h * self.width)][0];
                    }
                }
            }
        }

        pub fn rotateZ(self: *Self, Angle: f32) void {
            const thetha = @mod(Angle * math.rad_per_deg, 6.28319);
            const rounded_theta = roundToNearest(thetha, 0.01);
            const u_rounded_theta = @mod(@as(u32, @intFromFloat(rounded_theta * 100)), 627);

            const sin_theta = angle.precomputed_sin[u_rounded_theta];
            const cos_theta = angle.precomputed_cos[u_rounded_theta];

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    const new_x = (self.map_save.items[w + (h * self.width)][0] * cos_theta) - (self.map_save.items[w + (h * self.width)][1] * sin_theta);
                    self.map_data.items[w + (h * self.width)][1] = (self.map_save.items[w + (h * self.width)][0] * sin_theta) + (self.map_save.items[w + (h * self.width)][1] * cos_theta);
                    self.map_data.items[w + (h * self.width)][0] = new_x;
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
                    self.map_data.items[w + (h * self.width)][0] *= s_factor;
                    self.map_data.items[w + (h * self.width)][1] *= s_factor;
                    self.map_data.items[w + (h * self.width)][0] += 1000 / 2.0;
                    self.map_data.items[w + (h * self.width)][1] += 1000 / 2.0 - (yc_off * (s_factor) / 2);
                }
            }
        }

        pub fn draw(self: *Self, mlx_res: *MlxRessources) void {
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    if (w < self.width - 1) {
                        var vect_ab = Vector2.init(self.map_data.items[w + (h * self.width)], self.map_data.items[(w + 1) + (h * self.width)]);
                        vect_ab.draw(mlx_res);
                    }
                    if (h < self.height - 1) {
                        var vect_ab = Vector2.init(self.map_data.items[w + (h * self.width)], self.map_data.items[w + ((h + 1) * self.width)]);
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
                    std.debug.print("pts[{d}][{d}] = |{d}|{d}|{d}|\n", .{ w, h, pts[0], pts[1], pts.z });
                }
                std.debug.print("\n", .{});
            }
        }

        pub fn deinit(self: *Self) void {
            self.map_data.deinit();
            self.map_save.deinit();
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
