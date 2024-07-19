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
const lerp = math.lerp;
const PI = math.pi;
const COS30: f32 = 0.86602540378;
const SIN30: f32 = 0.5;

const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;

pub const MapError = error{
    wrong_z, //unexcepted Z value
    wrong_color, //Wrong color format
    empty_map, //Empty map lol
    out_of_bonds,
    parsing_error,
};

pub const RotateParams = struct {
    cos_thetaX: f32,
    sin_thetaX: f32,
    cos_thetaY: f32,
    sin_thetaY: f32,
    cos_thetaZ: f32,
    sin_thetaZ: f32,

    pub fn init(deg_angle_x: f32, deg_angle_y: f32, deg_angle_z: f32) RotateParams {
        const theta_x = roundToNearest(@mod(deg_angle_x * math.rad_per_deg, 6.28319), 0.01);
        const rounded_theta_x = @mod(@as(u32, @intFromFloat(theta_x * 100)), 627);
        const theta_y = roundToNearest(@mod(deg_angle_y * math.rad_per_deg, 6.28319), 0.01);
        const rounded_theta_y = @mod(@as(u32, @intFromFloat(theta_y * 100)), 627);
        const theta_z = roundToNearest(@mod(deg_angle_z * math.rad_per_deg, 6.28319), 0.01);
        const rounded_theta_z = @mod(@as(u32, @intFromFloat(theta_z * 100)), 627);

        return RotateParams{
            .cos_thetaX = angle.precomputed_cos[rounded_theta_x],
            .sin_thetaX = angle.precomputed_sin[rounded_theta_x],
            .cos_thetaY = angle.precomputed_cos[rounded_theta_y],
            .sin_thetaY = angle.precomputed_sin[rounded_theta_y],
            .cos_thetaZ = angle.precomputed_cos[rounded_theta_z],
            .sin_thetaZ = angle.precomputed_sin[rounded_theta_z],
        };
    }
};

pub const ColorMode = enum(u32) {
    pub var mode: u16 = 0;
    RGB,
    RBG,
    BRG,
    BGR,
    GRB,
    GBR,

    pub fn switch_mode() u16 {
        mode = @mod(mode + 1, 6);
        return mode;
    }
};

pub const Color = struct {
    const Self = @This();
    a: u8,
    r: u8,
    g: u8,
    b: u8,

    pub fn init(int_color: u32) Self {
        return Self{
            .a = @intCast((int_color >> 24) & 0xFF),
            .r = @intCast((int_color >> 16) & 0xFF),
            .g = @intCast((int_color >> 8) & 0xFF),
            .b = @intCast(int_color & 0xFF),
        };
    }

    pub fn toInt(self: *const Self, color_mode: u16) u32 {
        switch (color_mode) {
            @intFromEnum(ColorMode.RGB) => return (@as(u32, self.a) << 24) |
                (@as(u32, self.r) << 16) |
                (@as(u32, self.g) << 8) |
                @as(u32, self.b),
            @intFromEnum(ColorMode.RBG) => return (@as(u32, self.a) << 24) |
                (@as(u32, self.r) << 16) |
                (@as(u32, self.b) << 8) |
                @as(u32, self.g),
            @intFromEnum(ColorMode.BGR) => return (@as(u32, self.a) << 24) |
                (@as(u32, self.b) << 16) |
                (@as(u32, self.g) << 8) |
                @as(u32, self.r),
            @intFromEnum(ColorMode.BRG) => return (@as(u32, self.a) << 24) |
                (@as(u32, self.b) << 16) |
                (@as(u32, self.r) << 8) |
                @as(u32, self.g),
            @intFromEnum(ColorMode.GBR) => return (@as(u32, self.a) << 24) |
                (@as(u32, self.g) << 16) |
                (@as(u32, self.r) << 8) |
                @as(u32, self.b),
            @intFromEnum(ColorMode.GRB) => return (@as(u32, self.a) << 24) |
                (@as(u32, self.g) << 16) |
                (@as(u32, self.r) << 8) |
                @as(u32, self.b),
            else => return 1,
        }
    }

    pub fn blendColors(color1: Color, color2: Color, alpha: f32) Color {
        const inv_alpha = 1.0 - alpha;
        return Color{
            .a = 0,
            .r = @as(u8, @intFromFloat((@as(f32, @floatFromInt(color1.r)) * inv_alpha) + (@as(f32, @floatFromInt(color2.r)) * alpha))),
            .g = @as(u8, @intFromFloat((@as(f32, @floatFromInt(color1.g)) * inv_alpha) + (@as(f32, @floatFromInt(color2.g)) * alpha))),
            .b = @as(u8, @intFromFloat((@as(f32, @floatFromInt(color1.b)) * inv_alpha) + (@as(f32, @floatFromInt(color2.b)) * alpha))),
        };
    }

    pub fn debug(self: *Self) void {
        std.debug.print("RGBA |{d}|{d}|{d}|{d}|\n", .{ self.r, self.g, self.b, self.a });
    }
};

pub const Point = struct {
    const Self = @This();
    x: f32,
    y: f32,
    z: f32,
    color: Color,

    pub fn init(a: f32, b: f32, c: f32, d: u32) Self {
        return Self{
            .x = a,
            .y = b,
            .z = c,
            .color = Color.init(d),
        };
    }

    pub fn rotateX(cos_theta: f32, sin_theta: f32, v0: Point) Self {
        return Self{
            .x = v0.x,
            .y = (v0.y * cos_theta) - (v0.z * sin_theta),
            .z = (v0.y * sin_theta) + (v0.z * cos_theta),
            .color = v0.color,
        };
    }

    pub fn rotateY(cos_theta: f32, sin_theta: f32, v0: Point) Self {
        return Self{
            .x = (v0.x * cos_theta) + (v0.z * sin_theta),
            .y = v0.y,
            .z = -(v0.x * sin_theta) + (v0.z * cos_theta),
            .color = v0.color,
        };
    }

    pub fn rotateZ(cos_theta: f32, sin_theta: f32, v0: Point) Self {
        return Self{
            .x = (v0.x * cos_theta) - (v0.y * sin_theta),
            .y = (v0.x * sin_theta) + (v0.y * cos_theta),
            .z = v0.z,
            .color = v0.color,
        };
    }
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

    pub fn init(pa: Point, pb: Point) Self {
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

    pub fn getGradient(color_a: Color, color_b: Color, x: f32, color_mode: u16) u32 {
        const r: u8 = @intFromFloat(@round(lerp(@as(f32, @floatFromInt(color_a.r)), @as(f32, @floatFromInt(color_b.r)), x)));
        const g: u8 = @intFromFloat(@round(lerp(@as(f32, @floatFromInt(color_a.g)), @as(f32, @floatFromInt(color_b.g)), x)));
        const b: u8 = @intFromFloat(@round(lerp(@as(f32, @floatFromInt(color_a.b)), @as(f32, @floatFromInt(color_b.b)), x)));

        var GradColor = Color{
            .a = 0,
            .r = r,
            .g = g,
            .b = b,
        };

        return GradColor.toInt(color_mode);
    }

    pub fn draw(self: *Self, mlx_res: *MlxRessources, color_a: Color, color_b: Color, color_mode: u16) void {
        const int_dab: u16 = @intFromFloat(self.dab);

        var compute_gradient: bool = true;
        if (color_a.toInt(color_mode) == color_b.toInt(color_mode))
            compute_gradient = false;

        for (0..int_dab) |i| {
            const x: i32 = @intFromFloat(@round(self.ax + (self.dx * @as(f32, @as(f32, @floatFromInt(i)) / self.dab))));
            const y: i32 = @intFromFloat(@round(self.ay + (self.dy * @as(f32, @as(f32, @floatFromInt(i)) / self.dab))));
            const color = if (compute_gradient) getGradient(color_a, color_b, @as(f32, @as(f32, @floatFromInt(i)) / self.dab), color_mode) else color_a.toInt(color_mode);
            if (backend.myMlxPixelPut(mlx_res, x, y, color)) {} else |_| {
                break;
            }
        }
    }

    pub fn oob(self: *Self, mlx_res: *MlxRessources) bool {
        return ((self.ax < 0 or self.ax > @as(f32, @floatFromInt(mlx_res.*.width))) and (self.ay < 0 or self.ay > @as(f32, @floatFromInt(mlx_res.*.height))) and (self.bx < 0 or self.bx > @as(f32, @floatFromInt(mlx_res.*.width))) and (self.by < 0 or self.by > @as(f32, @floatFromInt(mlx_res.*.height))));
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
        const Self = @This();

        allocator: std.mem.Allocator,
        color_data: ArrayList(Color),
        map_data: ArrayList(Point),
        map_save: ArrayList(Point),

        theta_z: f32,
        theta_x: f32,
        theta_y: f32,

        zoom_scalar: f32,
        z_axis_scalar: f32,

        width: usize,
        height: usize,

        color_mode: u16,

        pub fn init(allocator: Allocator) Allocator.Error!*Self {
            const new: *Self = try allocator.create(Self);
            new.* = Self{
                .allocator = allocator,
                .color_data = ArrayList(Color).init(allocator),
                .map_data = ArrayList(Point).init(allocator),
                .map_save = ArrayList(Point).init(allocator),
                .width = 0,
                .height = 0,
                .theta_x = 0,
                .theta_y = 0,
                .theta_z = 0,
                .zoom_scalar = 1,
                .z_axis_scalar = 1,
                .color_mode = ColorMode.mode,
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

                    var color: u32 = undefined;
                    var color_entry = std.mem.splitScalar(u8, entry, ',');
                    var z: f32 = undefined;

                    if (color_entry.next()) |value| {
                        z = std.fmt.parseFloat(f32, value) catch 0;
                        if (std.mem.eql(u8, value, entry)) {
                            color = 0x00FFFFFF;
                        } else {
                            if (color_entry.next()) |col| {
                                const col_no_prefix = col[2..];
                                color = std.fmt.parseInt(u32, col_no_prefix, 16) catch 0;
                            }
                        }
                    }

                    const x: T = @floatFromInt(width);
                    const y: T = @floatFromInt(height);

                    const entry_point = Point.init(x, y, z, color);

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

            world_center(self);
            self.map_save = try self.map_data.clone();
        }

        fn world_center(self: *Self) void {
            var mid_x: T = @floatFromInt(self.width);
            var mid_y: T = @floatFromInt(self.height);
            mid_x /= 2;
            mid_y /= 2;

            const sp_x: T = -mid_x + 0.5;
            const sp_y: T = -mid_y + 0.5;
            // std.debug.print("sp_x {d}, sp_y {d}\n", .{ sp_x, sp_y });

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_data.items[w + h * self.width].x = sp_x + @as(T, @floatFromInt(w));
                    self.map_data.items[w + h * self.width].y = sp_y + @as(T, @floatFromInt(h));
                }
                // std.debug.print("\n", .{});
            }
        }

        pub fn rotateXYZ(p: RotateParams, v0: Point) Point {
            var result = Point.rotateX(p.cos_thetaX, p.sin_thetaX, v0);
            result = Point.rotateY(p.cos_thetaY, p.sin_thetaY, result);
            result = Point.rotateZ(p.cos_thetaZ, p.sin_thetaZ, result);
            return result;
        }

        pub fn multZAxisScalar(self: *Self, step: f32) void {
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    self.map_save.items[w + (h * self.width)].z *= step;
                }
            }
        }

        pub fn project(v0: Point) Point {
            return Point{
                .x = (v0.x - v0.y) * COS30,
                .y = (v0.x + v0.y) * SIN30 - v0.z,
                .z = v0.z,
                .color = v0.color,
            };
        }

        pub fn render(self: *Self, windowH: usize, windowW: usize) void {
            const half_width = @as(f32, @floatFromInt(windowW)) / 2.0;
            const half_height = @as(f32, @floatFromInt(windowH)) / 2.0;
            const rotation_params = RotateParams.init(self.theta_x, self.theta_y, self.theta_z);

            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    //Rotate
                    self.map_data.items[w + (h * self.width)] = rotateXYZ(rotation_params, self.map_save.items[w + (h * self.width)]);
                    //Project
                    self.map_data.items[w + (h * self.width)] = project(self.map_data.items[w + (h * self.width)]);
                    //Zoom
                    self.map_data.items[w + (h * self.width)].x = self.map_data.items[w + (h * self.width)].x * self.zoom_scalar + half_width;
                    self.map_data.items[w + (h * self.width)].y = self.map_data.items[w + (h * self.width)].y * self.zoom_scalar + half_height;
                }
            }
        }

        pub fn draw(self: *Self, mlx_res: *MlxRessources) void {
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    if (w < self.width - 1) {
                        var vect_ab = Vector2.init(self.map_data.items[w + (h * self.width)], self.map_data.items[(w + 1) + (h * self.width)]);
                        if (!vect_ab.oob(mlx_res))
                            vect_ab.draw(mlx_res, self.map_data.items[w + (h * self.width)].color, self.map_data.items[(w + 1) + (h * self.width)].color, self.color_mode);
                    }
                    if (h < self.height - 1) {
                        var vect_ab = Vector2.init(self.map_data.items[w + (h * self.width)], self.map_data.items[w + ((h + 1) * self.width)]);
                        if (!vect_ab.oob(mlx_res))
                            vect_ab.draw(mlx_res, self.map_data.items[w + (h * self.width)].color, self.map_data.items[(w + ((h + 1) * self.width))].color, self.color_mode);
                    }
                }
            }
        }

        pub fn reset(self: *Self) void {
            self.theta_y = 0;
            self.theta_z = 0;
            self.theta_x = 0;
            self.zoom_scalar = 1;
            self.z_axis_scalar = 1;
        }

        pub fn debugMapData(self: *Self) void {
            std.debug.print("HEIGHT: {d} | WIDTH: {d}\n", .{ self.height, self.width });
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    const pts = self.map_data.items[w + h * self.width];
                    std.debug.print("pts[{d}][{d}] = |{d}|{d}|{d}|{?d}|\n", .{ w, h, pts.x, pts.y, pts.z, pts.color });
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
