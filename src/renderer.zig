const std = @import("std");
const map_file = @import("map.zig");
const backend = @import("backend.zig");
const main = @import("main.zig");
const Key = backend.Key;
const Point = map_file.Point;
const Map = map_file.Map;
const MlxRessources = backend.MlxRessources;
const FdfError = main.FdfError;
const Color = map_file.Color;
const Vector2 = map_file.Vector2;
const lerp = math.lerp;

const COS30: f32 = 0.86602540378;
const SIN30: f32 = 0.5;

extern fn wrap_mlx_set_font(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, name: [*:0]const u8) void;
extern fn wrap_mlx_string_put(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: i32, y: i32, color: u32, string: [*:0]u8) i32;

const math = std.math;
const angle = @import("angles.zig");

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

fn roundToNearest(x: f32, nearest: f32) f32 {
    return std.math.round(x / nearest) * nearest;
}

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

pub const Renderer = packed struct {
    const Self = @This();
    pressed: Key,
    repeated: Key,
    map: *Map,
    mlx_res: *MlxRessources,
    time_to_press: i64,
    gui: bool,

    theta_z: f32,
    theta_x: f32,
    theta_y: f32,

    zoom_scalar: f32,
    z_axis_scalar: f32,

    color_mode: u16,

    pub fn init(mlx_res: *MlxRessources, map: *Map) Renderer {
        return Renderer{
            .mlx_res = mlx_res,
            .map = map,
            .pressed = .None,
            .repeated = .None,
            .time_to_press = std.time.milliTimestamp(),
            .gui = false,
            .theta_x = 0,
            .theta_y = 0,
            .theta_z = 0,
            .zoom_scalar = 1,
            .z_axis_scalar = 1,
            .color_mode = ColorMode.mode,
        };
    }

    pub fn myMlxPixelPut(self: *Self, x: i32, y: i32, color: u32) !void {
        if (x > self.mlx_res.width or x < 0 or y > self.mlx_res.height or y < 0) {
            return FdfError.out_of_bonds;
        } else {
            self.mlx_res.data[@as(usize, @intCast(x)) + (@as(usize, @intCast(y)) * self.mlx_res.width)] = color;
        }
    }

    fn switchMap(self: *Self) void {
        if (Map.init(self.map.allocator)) |new_map| {
            self.map = new_map;
        } else |_| {}

        if (self.mlx_res.map_it.next()) |maybe_entry| {
            if (maybe_entry) |entry| {
                std.debug.print("entry name = {s}\n", .{entry.name});
                if (self.mlx_res.map_dir.openFile(entry.name, .{})) |new_map_file| {
                    defer new_map_file.close();
                    if (new_map_file.readToEndAlloc(self.map.allocator, 50_000_000)) |new_map_buffer| {
                        if (self.map.parse(new_map_buffer)) |_| {
                            const largest: bool = self.map.width > self.map.height;
                            var vect = @Vector(2, usize){ self.map.height, self.mlx_res.height };
                            if (largest) {
                                vect[0] = self.map.width;
                                vect[1] = self.mlx_res.width;
                            }
                            self.zoom_scalar = @as(f32, @floatFromInt(vect[1])) / @as(f32, @floatFromInt(vect[0])) * 0.5;
                            std.debug.print("Map infos:\n", .{});
                            std.debug.print("height = {d}\n", .{self.map.height});
                            std.debug.print("width = {d}\n", .{self.map.width});
                        } else |e| {
                            std.debug.print("e = {any}", .{e});
                        }
                    } else |_| {}
                } else |_| {}
            } else self.mlx_res.map_it.reset();
        } else |_| {}
    }

    pub fn renderGui(self: *Self) void {
        const third_screen_width = self.mlx_res.width / 3;

        for (0..self.mlx_res.height) |h| {
            for (0..third_screen_width) |w| {
                const item = self.mlx_res.data[w + (h * self.mlx_res.width)];
                const col = Color.init(item);
                const color = Color.blendColors(col, Color.init(0x00F6E7CB), 0.5);
                if (self.myMlxPixelPut(@intCast(w), @intCast(h), color.toInt(0))) {} else |_| {
                    break;
                }
            }
        }
    }

    fn displayFPS(self: *Self) void {
        self.mlx_res.curr_time = std.time.nanoTimestamp();
        const delta_time_s = @as(f32, @floatFromInt(self.mlx_res.curr_time - self.mlx_res.last_time)) / 1_000_000_000.0;
        const fps = @round(1.0 / delta_time_s);
        self.mlx_res.last_time = std.time.nanoTimestamp();

        var fps_str_buf: [64:0]u8 = undefined;
        if (std.fmt.bufPrintZ(&fps_str_buf, "FPS: {d}", .{fps})) |result| {
            const fps_str: [*:0]u8 = result[0.. :0].ptr;
            _ = wrap_mlx_string_put(self.mlx_res.mlx, self.mlx_res.win, @intCast(self.mlx_res.width - 70), 20, 0xFFFFFF, fps_str);
        } else |_| {}
    }

    fn paintScreen(self: *Self, color: u32) void {
        for (0..self.mlx_res.height) |h| {
            for (0..self.mlx_res.width) |w| {
                self.mlx_res.data[w + (h * self.mlx_res.width)] = color;
            }
        }
    }

    fn rotateXYZ(p: RotateParams, v0: Point) Point {
        var result = Point.rotateX(p.cos_thetaX, p.sin_thetaX, v0);
        result = Point.rotateY(p.cos_thetaY, p.sin_thetaY, result);
        result = Point.rotateZ(p.cos_thetaZ, p.sin_thetaZ, result);
        return result;
    }

    fn multZAxisScalar(self: *Self, step: f32) void {
        for (0..self.map.height) |h| {
            for (0..self.map.width) |w| {
                self.map.map_save.items[w + (h * self.map.width)].z *= step;
            }
        }
    }

    fn project(v0: Point) Point {
        return Point{
            .x = (v0.x - v0.y) * COS30,
            .y = (v0.x + v0.y) * SIN30 - v0.z,
            .z = v0.z,
            .color = v0.color,
        };
    }

    fn render(self: *Self, windowH: usize, windowW: usize) void {
        const half_width = @as(f32, @floatFromInt(windowW)) / 2.0;
        const half_height = @as(f32, @floatFromInt(windowH)) / 2.0;
        const rotation_params = RotateParams.init(self.theta_x, self.theta_y, self.theta_z);

        for (0..self.map.height) |h| {
            for (0..self.map.width) |w| {
                //Rotate
                self.map.map_data.items[w + (h * self.map.width)] = rotateXYZ(rotation_params, self.map.map_save.items[w + (h * self.map.width)]);
                //Project
                self.map.map_data.items[w + (h * self.map.width)] = project(self.map.map_data.items[w + (h * self.map.width)]);
                //Zoom
                self.map.map_data.items[w + (h * self.map.width)].x = self.map.map_data.items[w + (h * self.map.width)].x * self.zoom_scalar + half_width;
                self.map.map_data.items[w + (h * self.map.width)].y = self.map.map_data.items[w + (h * self.map.width)].y * self.zoom_scalar + half_height;
            }
        }
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

    pub fn draw_vector(self: *Self, vect: Vector2, color_a: Color, color_b: Color, color_mode: u16) void {
        const int_dab: u16 = @intFromFloat(vect.dab);

        var compute_gradient: bool = true;
        const color_a_int = color_a.toInt(color_mode);
        if (color_a.toInt(color_mode) == color_b.toInt(color_mode))
            compute_gradient = false;

        for (0..int_dab) |i| {
            const x: i32 = @intFromFloat(@round(vect.ax + (vect.dx * @as(f32, @as(f32, @floatFromInt(i)) / vect.dab))));
            const y: i32 = @intFromFloat(@round(vect.ay + (vect.dy * @as(f32, @as(f32, @floatFromInt(i)) / vect.dab))));
            const color = if (compute_gradient) getGradient(color_a, color_b, @as(f32, @as(f32, @floatFromInt(i)) / vect.dab), color_mode) else color_a_int;
            if (self.myMlxPixelPut(x, y, color)) {} else |_| {
                break;
            }
        }
    }

    pub fn draw(self: *Self) void {
        for (0..self.map.height) |h| {
            for (0..self.map.width) |w| {
                if (w < self.map.width - 1) {
                    const vect_ab = Vector2.init(self.map.map_data.items[w + (h * self.map.width)], self.map.map_data.items[(w + 1) + (h * self.map.width)]);
                    self.draw_vector(vect_ab, self.map.map_data.items[w + (h * self.map.width)].color, self.map.map_data.items[(w + 1) + (h * self.map.width)].color, self.color_mode);
                }
                if (h < self.map.height - 1) {
                    const vect_ac = Vector2.init(self.map.map_data.items[w + (h * self.map.width)], self.map.map_data.items[w + ((h + 1) * self.map.width)]);
                    self.draw_vector(vect_ac, self.map.map_data.items[w + (h * self.map.width)].color, self.map.map_data.items[(w + ((h + 1) * self.map.width))].color, self.color_mode);
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

    pub fn FdfLoop(param: ?*anyopaque) callconv(.C) c_int {
        var self = @as(*Renderer, @alignCast(@ptrCast(param orelse return (0))));

        switch (self.repeated) {
            Key.D_KEY => self.theta_z += 1,
            Key.A_KEY => self.theta_z -= 1,
            Key.W_KEY => self.theta_y += 1,
            Key.S_KEY => self.theta_y -= 1,
            Key.Q_KEY => self.theta_x -= 1,
            Key.E_KEY => self.theta_x += 1,
            Key.PLUS => self.zoom_scalar *= 1.1,
            Key.MINUS => self.zoom_scalar /= 1.1,
            Key.LEFT_BRACKET => self.multZAxisScalar(0.98),
            Key.RIGHT_BRACKET => self.multZAxisScalar(1.02),
            else => {},
        }

        switch (self.pressed) {
            Key.G_KEY => self.gui = !self.gui,
            Key.C_KEY => self.color_mode = ColorMode.switch_mode(),
            Key.F_KEY => switchMap(self),
            Key.R_KEY => self.reset(),
            Key.ESCAPE => self.mlx_res.deinit(),
            else => {},
        }
        self.pressed = .None;

        self.render(self.mlx_res.height, self.mlx_res.width);
        self.paintScreen(0x00);
        self.draw();
        self.mlx_res.pushImgToScreen();
        self.displayFPS();

        if (self.mlx_res.gui)
            self.renderGui();

        return 0;
    }
};
