const std = @import("std");
const angle = @import("angles.zig");
const ArrayList = std.ArrayList;
const Allocator = std.mem.Allocator;

const math = std.math;
const lerp = math.lerp;
const PI = math.pi;
const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;
const main = @import("main.zig");
const FdfError = main.FdfError;
const renderer = @import("renderer.zig");
const Renderer = renderer.Renderer;
const ColorMode = renderer.ColorMode;

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

    pub fn oob(self: *Self, mlx_res: *MlxRessources) bool {
        return ((self.ax < 0 or self.ax > @as(f32, @floatFromInt(mlx_res.*.width))) and (self.ay < 0 or self.ay > @as(f32, @floatFromInt(mlx_res.*.height))) and (self.bx < 0 or self.bx > @as(f32, @floatFromInt(mlx_res.*.width))) and (self.by < 0 or self.by > @as(f32, @floatFromInt(mlx_res.*.height))));
    }

    pub fn debug(self: *Self) void {
        std.debug.print("a: {d},{d} b: {d},{d}\n", .{ self.ax, self.ay, self.bx, self.by });
    }
};

pub const Map = struct {
    const Self = @This();

    allocator: std.mem.Allocator,
    color_data: ArrayList(Color),
    map_data: ArrayList(Point),
    map_save: ArrayList(Point),

    width: usize,
    height: usize,

    pub fn init(allocator: Allocator) Allocator.Error!*Self {
        const new: *Self = try allocator.create(Self);
        new.* = Self{
            .allocator = allocator,
            .color_data = ArrayList(Color).init(allocator),
            .map_data = ArrayList(Point).init(allocator),
            .map_save = ArrayList(Point).init(allocator),
            .width = 0,
            .height = 0,
        };
        return (new);
    }

    pub fn parse(self: *Self, raw_points: []const u8) (FdfError || Allocator.Error)!void {
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

                const x: f32 = @floatFromInt(width);
                const y: f32 = @floatFromInt(height);

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
        var mid_x: f32 = @floatFromInt(self.width);
        var mid_y: f32 = @floatFromInt(self.height);
        mid_x /= 2;
        mid_y /= 2;

        const sp_x: f32 = -mid_x + 0.5;
        const sp_y: f32 = -mid_y + 0.5;

        for (0..self.height) |h| {
            for (0..self.width) |w| {
                self.map_data.items[w + h * self.width].x = sp_x + @as(f32, @floatFromInt(w));
                self.map_data.items[w + h * self.width].y = sp_y + @as(f32, @floatFromInt(h));
            }
        }
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
