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

pub const Key = enum(u32) {
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
const renderer_file = @import("renderer.zig");
const renderer = renderer_file.Renderer;
const Map = map_file.Map;
const Color = map_file.Color;
const ColorMode = map_file.ColorMode;
const MapError = map_file.MapError;
const io = std.io;
const os = std.os;
const fs = std.fs;

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

    map_dir: fs.Dir,
    map_it: fs.Dir.Iterator,

    gui: bool,

    fn getMapDir() !fs.Dir {
        const cwd = fs.cwd();
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

    pub fn loop(mlx_res: *MlxRessources, map: *Map) void {
        var data = renderer.init(mlx_res, map);
        const ptr = @as(?*anyopaque, @alignCast(@ptrCast(&data)));
        const mlx_ptr = @as(?*anyopaque, @alignCast(@ptrCast(mlx_res)));
        var font_str = "8x16";
        const c_font_str: [*:0]const u8 = font_str[0.. :0].ptr;

        data.zoom_scalar = @as(f32, @floatFromInt(data.mlx_res.width)) / @as(f32, @floatFromInt(data.map.width));

        _ = wrap_mlx_set_font(data.mlx_res.mlx, data.mlx_res.win, c_font_str);
        _ = wrap_mlx_hook_1(mlx_res.win, @as(i32, 17), @as(i32, 1 << 17), on_program_quit, mlx_ptr);
        _ = wrap_mlx_hook_2(mlx_res.win, 2, @as(i64, 1 << 0), keyHandler, ptr);
        _ = wrap_mlx_hook_2(mlx_res.win, 3, @as(i64, 1 << 1), keyReleaseHandler, ptr);
        _ = wrap_mlx_loop_hook_1(mlx_res.mlx, renderer.FdfLoop, @ptrCast(&data));
        _ = wrap_mlx_loop(@alignCast(@ptrCast(mlx_res.*.mlx)));
    }

    pub fn keyHandler(keycode: i32, maybe_data: ?*anyopaque) callconv(.C) c_int {
        const data = @as(?*renderer, @alignCast(@ptrCast(maybe_data))) orelse return (0);
        switch (keycode) {
            @intFromEnum(Key.F_KEY), @intFromEnum(Key.ESCAPE), @intFromEnum(Key.C_KEY), @intFromEnum(Key.G_KEY), @intFromEnum(Key.R_KEY) => {
                if (std.time.milliTimestamp() >= data.time_to_press) {
                    data.pressed = Key.toEnum(@bitCast(keycode));
                    data.time_to_press = std.time.milliTimestamp() + 200;
                    // std.debug.print("pressed\n", .{});
                }
            },
            else => {
                data.repeated = Key.toEnum(@bitCast(keycode));
            },
        }
        return (0);
    }

    pub fn keyReleaseHandler(_: i32, maybe_data: ?*anyopaque) callconv(.C) c_int {
        const data = @as(?*renderer, @alignCast(@ptrCast(maybe_data))) orelse return (0);
        data.repeated = .None;
        data.pressed = .None;
        return (0);
    }

    pub fn pushImgToScreen(self: *Self) void {
        _ = wrap_mlx_put_image_to_window(self.mlx, self.win, self.img, 0, 0);
    }

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
