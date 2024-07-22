/// Here we put aside everything related to the mlx backend such that we don't
/// have to see all that ugly code.
const std = @import("std");
pub const libmlx = @cImport({
    @cInclude("stdlib.h");
    @cInclude("stdio.h");
    @cInclude("string.h");
    @cInclude("unistd.h");
    @cInclude("fcntl.h");
    @cInclude("sys/mman.h");
    @cInclude("X11/Xlib.h");
    @cInclude("X11/Xutil.h");
    @cInclude("sys/ipc.h");
    @cInclude("sys/shm.h");
    @cInclude("X11/extensions/XShm.h");
    @cInclude("X11/XKBlib.h");
    @cInclude("mlx_int.h");
    @cInclude("mlx.h");
});

extern fn wrap_mlx_clear_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_destroy_display(mlx_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_destroy_image(mlx_ptr: ?*anyopaque, img_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_destroy_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_do_key_autorepeatoff(mlx_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_do_key_autorepeaton(mlx_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_do_sync(mlx_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_expose_hook_1(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (arg: ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) i32;
extern fn wrap_mlx_expose_hook_2(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (keycode: i32, arg: ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) i32;
extern fn wrap_mlx_get_color_value(mlx_ptr: ?*anyopaque, color: i32) i32;
extern fn wrap_mlx_get_data_addr(img_handle: ?*anyopaque, img_bpp: *i32, img_size: *i32, img_endian: *i32) [*:0]u32;
extern fn wrap_mlx_get_screen_size(mlx_ptr: ?*anyopaque, size_x: *i32, size_y: *i32) i32;
extern fn wrap_mlx_hook_1(win_handle: ?*anyopaque, x_event: i32, x_mask: i32, callback: ?*const fn (?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) callconv(.C) i32;
extern fn wrap_mlx_hook_2(win_handle: ?*anyopaque, x_event: i32, x_mask: i32, callback: ?*const fn (i32, ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) callconv(.C) i32;
extern fn wrap_mlx_init() ?*anyopaque;
extern fn wrap_mlx_key_hook_1(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (arg: ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) i32;
extern fn wrap_mlx_key_hook_2(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (keycode: i32, arg: ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) i32;
extern fn wrap_mlx_loop(mlx_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_loop_end(mlx_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_loop_hook_1(mlx_ptr: ?*anyopaque, funct_ptr: ?*const fn (?*anyopaque) callconv(.C) i32, param: ?*anyopaque) callconv(.C) i32;
extern fn wrap_mlx_loop_hook_2(mlx_ptr: ?*anyopaque, funct_ptr: ?*const fn (i32, ?*anyopaque) callconv(.C) i32, param: ?*anyopaque) callconv(.C) i32;
extern fn wrap_mlx_mouse_get_pos(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: *i32, y: *i32) i32;
extern fn wrap_mlx_mouse_hide(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_mouse_hook_1(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (arg: ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) i32;
extern fn wrap_mlx_mouse_hook_2(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (keycode: i32, arg: ?*anyopaque) callconv(.C) i32, arg: ?*anyopaque) i32;
extern fn wrap_mlx_mouse_move(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: i32, y: i32) i32;
extern fn wrap_mlx_mouse_show(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) i32;
extern fn wrap_mlx_new_image(mlx_ptr: ?*anyopaque, width: i32, height: i32) ?*anyopaque;
extern fn wrap_mlx_new_window(mlx_ptr: ?*anyopaque, size_x: i32, size_y: i32, title: [*:0]u8) ?*anyopaque;
extern fn wrap_mlx_pixel_put(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: i32, y: i32, color: i32) i32;
extern fn wrap_mlx_put_image_to_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, img_ptr: ?*anyopaque, x: i32, y: i32) i32;
extern fn wrap_mlx_set_font(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, name: [*:0]const u8) void;

extern fn wrap_mlx_string_put(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: i32, y: i32, color: u32, string: [*:0]u8) i32;
extern fn wrap_mlx_xpm_file_to_image(mlx_ptr: ?*anyopaque, filename: [*:0]u8, width: *i32, height: *i32) ?*anyopaque;
extern fn wrap_mlx_xpm_to_image(mlx_ptr: ?*anyopaque, filename: *[*:0]u8, width: *i32, height: *i32) i32;

const Key = enum(u32) {
    None = 0,
    PLUS = 61,
    MINUS = 45,
    WHEEL_DOWN = 5,
    R_KEY = 114,
    C_KEY = 99,
    W_KEY = 119,
    A_KEY = 97,
    S_KEY = 115,
    D_KEY = 100,
    P_KEY = 112,
    Q_KEY = 113,
    E_KEY = 101,
    M_KEY = 109,
    G_KEY = 103,
    F_KEY = 102,
    ARROW_LEFT = 65361,
    ARROW_UP = 65362,
    ARROW_RIGHT = 65363,
    ARROW_DOWN = 65364,
    ESCAPE = 65307,
    LEFT_BRACKET = 91,
    RIGHT_BRACKET = 93,

    pub fn toEnum(keycode: u32) Key {
        return switch (keycode) {
            61 => .PLUS,
            45 => .MINUS,
            5 => .WHEEL_DOWN,
            119 => .W_KEY,
            113 => .Q_KEY,
            97 => .A_KEY,
            114 => .R_KEY,
            99 => .C_KEY,
            103 => .G_KEY,
            102 => .F_KEY,
            115 => .S_KEY,
            100 => .D_KEY,
            112 => .P_KEY,
            101 => .E_KEY,
            109 => .M_KEY,
            65361 => .ARROW_LEFT,
            65362 => .ARROW_UP,
            65363 => .ARROW_RIGHT,
            65364 => .ARROW_DOWN,
            65307 => .ESCAPE,
            91 => .LEFT_BRACKET,
            93 => .RIGHT_BRACKET,
            else => .None,
        };
    }
};

const map_file = @import("map.zig");
const Map = map_file.Map;
const Color = map_file.Color;
const ColorMode = map_file.ColorMode;
const MapError = map_file.MapError;

const io = std.io;
const os = std.os;

// should probably be a member function but it's good anyway
pub fn myMlxPixelPut(mlx_res: *MlxRessources, x: i32, y: i32, color: u32) !void {
    if (x > mlx_res.*.width or x < 0 or y > mlx_res.*.height or y < 0) {
        return MapError.out_of_bonds;
    } else {
        // std.debug.print("drawinnnn...", .{});
        const fx: usize = @intCast(x);
        const fy: usize = @intCast(y);
        mlx_res.*.data[fx + (fy * mlx_res.*.width)] = color;
    }
}

const FdfData = packed struct {
    pressed: Key,
    repeated: Key,
    map: *Map(f32),
    mlx_res: *MlxRessources,
    time_to_press: i64,

    pub fn init(mlx_res: *MlxRessources, map: *Map(f32)) FdfData {
        return FdfData{
            .mlx_res = mlx_res,
            .map = map,
            .pressed = .None,
            .repeated = .None,
            .time_to_press = std.time.milliTimestamp(),
        };
    }
};

pub const MlxRessources = struct {
    const Self = @This();
    const title: [:0]const u8 = "fdf";
    allocator: *std.mem.Allocator,
    mlx: ?*anyopaque,
    win: ?*anyopaque,
    img: ?*anyopaque,
    data: [*:0]u32,
    win_width: i32,
    win_height: i32,
    img_size: i32,
    img_bits_per_pixel: i32,
    img_endian: i32,
    last_time: i128,
    curr_time: i128,
    width: usize,
    height: usize,

    map_dir: std.fs.Dir,
    map_it: std.fs.Dir.Iterator,

    gui: bool,

    fn getMapDir() !std.fs.Dir {
        const cwd = std.fs.cwd();

        const dir = try cwd.openDir("./src/test_maps", .{ .iterate = true });

        return dir;
    }

    pub fn init(allocator: *std.mem.Allocator, w: usize, h: usize) !*MlxRessources {
        var result = try allocator.create(MlxRessources);
        result.*.gui = false;
        result.*.width = w;
        result.*.height = h;
        result.*.allocator = allocator;
        result.*.mlx = wrap_mlx_init();
        result.*.win = wrap_mlx_new_window(result.*.mlx, @intCast(result.*.width), @intCast(result.*.height), @constCast(@alignCast(@ptrCast(title.ptr))));
        result.*.img = wrap_mlx_new_image(result.*.mlx, @intCast(result.*.width), @intCast(result.*.height));
        result.*.data = wrap_mlx_get_data_addr(result.*.img, &result.img_bits_per_pixel, &result.*.img_size, &result.*.img_endian);
        _ = wrap_mlx_put_image_to_window(result.*.mlx, result.*.win, result.*.img, 0, 0);
        result.*.map_dir = try getMapDir();
        result.*.map_it = result.*.map_dir.iterate();
        return (result);
    }

    pub fn on_program_quit(maybe_mlx_res: ?*anyopaque) callconv(.C) c_int {
        const mlx_res = maybe_mlx_res;
        var temp = @as(*MlxRessources, @alignCast(@ptrCast(mlx_res orelse return (0))));
        _ = wrap_mlx_loop_end(temp);
        temp.deinit();
        return (1);
    }

    pub fn guiToggle(self: *Self) void {
        self.gui = !self.gui;
    }

    pub fn renderGui(self: *Self) void {
        // std.debug.print("GUI RENDERED\n", .{});
        const third_screen_width = self.width / 3;

        for (0..self.height) |h| {
            for (0..third_screen_width) |w| {
                const item = self.data[w + (h * self.width)];
                const col = Color.init(item);
                const color = Color.blendColors(col, Color.init(0x00F6E7CB), 0.5);
                // color.debug();
                if (myMlxPixelPut(self, @intCast(w), @intCast(h), color.toInt(0))) {} else |_| {
                    break;
                }
            }
        }
    }

    fn switchMap(data: *FdfData) void {
        // data.map.deinit();

        if (Map(f32).init(data.map.allocator)) |new_map| {
            data.map = new_map;
        } else |_| {}

        if (data.mlx_res.map_it.next()) |maybe_entry| {
            if (maybe_entry) |entry| {
                std.debug.print("entry name = {s}\n", .{entry.name});
                if (data.mlx_res.map_dir.openFile(entry.name, .{})) |new_map_file| {
                    defer new_map_file.close();
                    if (new_map_file.readToEndAlloc(data.map.allocator, 50_000_000)) |new_map_buffer| {
                        if (data.map.parse(new_map_buffer)) |_| {
                            const largest: bool = data.map.width > data.map.height;
                            var vect = @Vector(2, usize){ data.map.height, data.mlx_res.height };
                            if (largest) {
                                vect[0] = data.map.width;
                                vect[1] = data.mlx_res.width;
                            }
                            data.map.zoom_scalar = @as(f32, @floatFromInt(vect[1])) / @as(f32, @floatFromInt(vect[0])) * 0.5;
                            std.debug.print("Map infos:\n", .{});
                            std.debug.print("height = {d}\n", .{data.map.height});
                            std.debug.print("width = {d}\n", .{data.map.width});
                        } else |e| {
                            std.debug.print("e = {any}", .{e});
                        }
                    } else |_| {}
                } else |_| {}
            } else data.mlx_res.map_it.reset();
        } else |_| {}
    }

    pub fn fdfLoop(param: ?*anyopaque) callconv(.C) c_int {
        var data = @as(*FdfData, @alignCast(@ptrCast(param orelse return (0))));

        switch (data.repeated) {
            Key.D_KEY => data.map.theta_z += 1,
            Key.A_KEY => data.map.theta_z -= 1,
            Key.W_KEY => data.map.theta_y += 1,
            Key.S_KEY => data.map.theta_y -= 1,
            Key.Q_KEY => data.map.theta_x -= 1,
            Key.E_KEY => data.map.theta_x += 1,
            Key.PLUS => data.map.zoom_scalar *= 1.1,
            Key.MINUS => data.map.zoom_scalar /= 1.1,
            Key.LEFT_BRACKET => data.map.multZAxisScalar(0.98),
            Key.RIGHT_BRACKET => data.map.multZAxisScalar(1.02),
            else => {},
        }

        switch (data.pressed) {
            Key.G_KEY => data.mlx_res.guiToggle(),
            Key.C_KEY => data.map.color_mode = ColorMode.switch_mode(),
            Key.F_KEY => switchMap(data),
            Key.R_KEY => data.map.reset(),
            Key.ESCAPE => data.mlx_res.deinit(),
            else => {},
        }

        data.pressed = .None;

        data.map.render(data.mlx_res.height, data.mlx_res.width);
        data.mlx_res.paintScreen(0x00);
        data.map.draw(data.mlx_res);
        data.mlx_res.pushImgToScreen();
        MlxRessources.displayFPS(data);
        if (data.mlx_res.gui)
            data.mlx_res.renderGui();

        return 0;
    }

    fn displayFPS(data: *FdfData) void {
        data.mlx_res.curr_time = std.time.nanoTimestamp();
        const delta_time_s = @as(f32, @floatFromInt(data.mlx_res.curr_time - data.mlx_res.last_time)) / 1_000_000_000.0;
        const fps = @round(1.0 / delta_time_s);
        data.mlx_res.last_time = std.time.nanoTimestamp();

        var fps_str_buf: [64:0]u8 = undefined;
        if (std.fmt.bufPrintZ(&fps_str_buf, "FPS: {d}", .{fps})) |result| {
            const fps_str: [*:0]u8 = result[0.. :0].ptr;
            _ = wrap_mlx_string_put(data.mlx_res.mlx, data.mlx_res.win, @intCast(data.mlx_res.width - 70), 20, 0xFFFFFF, fps_str);
        } else |_| {}
    }

    pub fn loop(mlx_res: *MlxRessources, map: *Map(f32)) void {
        var data = FdfData.init(mlx_res, map);
        const ptr = @as(?*anyopaque, @alignCast(@ptrCast(&data)));
        const mlx_ptr = @as(?*anyopaque, @alignCast(@ptrCast(mlx_res)));
        var font_str = "8x16";
        const c_font_str: [*:0]const u8 = font_str[0.. :0].ptr;

        data.map.zoom_scalar = @as(f32, @floatFromInt(data.mlx_res.width)) / @as(f32, @floatFromInt(data.map.width));

        _ = wrap_mlx_set_font(data.mlx_res.mlx, data.mlx_res.win, c_font_str);
        _ = wrap_mlx_hook_1(mlx_res.win, @as(i32, 17), @as(i32, 1 << 17), on_program_quit, mlx_ptr);
        _ = wrap_mlx_hook_2(mlx_res.win, 2, @as(i64, 1 << 0), keyHandler, ptr);
        _ = wrap_mlx_hook_2(mlx_res.win, 3, @as(i64, 1 << 1), keyReleaseHandler, ptr);
        _ = wrap_mlx_loop_hook_1(mlx_res.mlx, fdfLoop, @ptrCast(&data));
        _ = wrap_mlx_loop(@alignCast(@ptrCast(mlx_res.*.mlx)));
    }

    pub fn paintScreen(self: *Self, color: u32) void {
        for (0..self.height) |h| {
            for (0..self.width) |w| {
                self.*.data[w + (h * self.width)] = color;
            }
        }
    }

    pub fn keyHandler(keycode: i32, maybe_data: ?*anyopaque) callconv(.C) c_int {
        const data = @as(?*FdfData, @alignCast(@ptrCast(maybe_data))) orelse return (0);
        switch (keycode) {
            @intFromEnum(Key.F_KEY), @intFromEnum(Key.ESCAPE), @intFromEnum(Key.C_KEY), @intFromEnum(Key.G_KEY), @intFromEnum(Key.R_KEY) => {
                if (std.time.milliTimestamp() >= data.time_to_press) {
                    data.pressed = Key.toEnum(@bitCast(keycode));
                    data.time_to_press = std.time.milliTimestamp() + 200;
                    std.debug.print("pressed\n", .{});
                }
            },
            else => {
                data.repeated = Key.toEnum(@bitCast(keycode));
            },
        }
        return (0);
    }

    pub fn keyReleaseHandler(_: i32, maybe_data: ?*anyopaque) callconv(.C) c_int {
        const data = @as(?*FdfData, @alignCast(@ptrCast(maybe_data))) orelse return (0);
        data.repeated = .None;
        data.pressed = .None;
        return (0);
    }

    // this is good
    pub fn pushImgToScreen(self: *Self) void {
        _ = wrap_mlx_put_image_to_window(self.mlx, self.win, self.img, 0, 0);
    }

    // this si good too
    pub fn deinit(mlx_res: *MlxRessources) void {
        const allocator = mlx_res.allocator;
        // libmlx.wrap_mlx_destroy_experimental(&mlx_res.*.mlx, &mlx_res.*.win, &mlx_res.*.img, mlx_res.*.data);
        _ = wrap_mlx_destroy_image(mlx_res.*.mlx, mlx_res.*.img);
        _ = wrap_mlx_destroy_window(mlx_res.*.mlx, mlx_res.*.win);
        _ = wrap_mlx_destroy_display(mlx_res.*.mlx.?);
        _ = libmlx.free(mlx_res.*.mlx.?);
        mlx_res.map_dir.close();
        allocator.destroy(mlx_res);
        std.posix.exit(0);
    }
};
