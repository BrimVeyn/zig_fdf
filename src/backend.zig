// ************************************************************************** //
//                                                                            //
//                                                        :::      ::::::::   //
//   backend.zig                                        :+:      :+:    :+:   //
//                                                    +:+ +:+         +:+     //
//   By: pollivie <pollivie.student.42.fr>          +#+  +:+       +#+        //
//                                                +#+#+#+#+#+   +#+           //
//   Created: 2024/07/12 16:17:15 by pollivie          #+#    #+#             //
//   Updated: 2024/07/12 16:17:16 by pollivie         ###   ########.fr       //
//                                                                            //
// ************************************************************************** //

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
extern fn wrap_mlx_set_font(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, name: [*:0]u8) void;
extern fn wrap_mlx_string_put(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: i32, y: i32, string: [*:0]u8) i32;
extern fn wrap_mlx_xpm_file_to_image(mlx_ptr: ?*anyopaque, filename: [*:0]u8, width: *i32, height: *i32) ?*anyopaque;
extern fn wrap_mlx_xpm_to_image(mlx_ptr: ?*anyopaque, filename: *[*:0]u8, width: *i32, height: *i32) i32;

const Key = enum(u32) {
    None = 0,
    PLUS = 61,
    MINUS = 45,
    WHEEL_DOWN = 5,
    W_KEY = 119,
    A_KEY = 97,
    S_KEY = 115,
    D_KEY = 100,
    P_KEY = 112,
    E_KEY = 101,
    ARROW_LEFT = 65361,
    ARROW_UP = 65362,
    ARROW_RIGHT = 65363,
    ARROW_DOWN = 65364,
    ESCAPE = 65307,
    PLEFT = 91,
    PRIGHT = 93,

    pub fn toEnum(keycode: u32) Key {
        return switch (keycode) {
            61 => .PLUS,
            45 => .MINUS,
            5 => .WHEEL_DOWN,
            119 => .W_KEY,
            97 => .A_KEY,
            115 => .S_KEY,
            100 => .D_KEY,
            112 => .P_KEY,
            101 => .E_KEY,
            65361 => .ARROW_LEFT,
            65362 => .ARROW_UP,
            65363 => .ARROW_RIGHT,
            65364 => .ARROW_DOWN,
            65307 => .ESCAPE,
            91 => .PLEFT,
            93 => .PRIGHT,
            else => .None,
        };
    }
};

const Map = @import("map.zig").Map;

// should probably be a member function but it's good anyway
pub fn myMlxPixelPut(mlx_res: *MlxRessources, x: i16, y: i16, color: u32) void {
    if (x > 1000 or x < 0 or y > 1000 or y < 0) {
        return;
    } else {
        // std.debug.print("drawinnnn...", .{});
        const fx: usize = @intCast(x);
        const fy: usize = @intCast(y);
        mlx_res.*.data[fx + (fy * MlxRessources.height)] = color;
    }
}

// Types in Zig should be PascalCased
// since your type isn't use anywhere else
// you can "hide" it inside of the type,
const FdfData = packed struct {
    pressed: Key,
    map: *Map(f32),
    mlx_res: *MlxRessources,

    // the hashmap feels unecessary, you can simply use the enum directly
    // go to your loop to see how you could do it
    pub fn init(mlx_res: *MlxRessources, map: *Map(f32)) FdfData {
        return FdfData{
            .mlx_res = mlx_res,
            .map = map,
            .pressed = .None,
        };
    }
};

pub const MlxRessources = packed struct {
    const Self = @This();
    const width: i32 = 1000;
    const height: i32 = 1000;
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

    pub fn init(allocator: *std.mem.Allocator) !*MlxRessources {
        var result = try allocator.create(MlxRessources);
        result.*.allocator = allocator;
        result.*.mlx = wrap_mlx_init();
        result.*.win = wrap_mlx_new_window(result.*.mlx, width, height, @constCast(@alignCast(@ptrCast(title.ptr))));
        result.*.img = wrap_mlx_new_image(result.*.mlx, width, height);
        std.debug.print("init mlx_ptr = {*}\n", .{result.*.mlx});
        std.debug.print("init win_ptr = {*}\n", .{result.*.win});
        std.debug.print("init img_ptr = {*}\n", .{result.*.img});
        result.*.data = wrap_mlx_get_data_addr(result.*.img, &result.img_bits_per_pixel, &result.*.img_size, &result.*.img_endian);
        _ = wrap_mlx_put_image_to_window(result.*.mlx, result.*.win, result.*.img, 0, 0);
        return (result);
    }

    pub fn on_program_quit(maybe_mlx_res: ?*anyopaque) callconv(.C) c_int {
        const mlx_res = maybe_mlx_res;
        var temp = @as(*MlxRessources, @alignCast(@ptrCast(mlx_res orelse return (0))));
        _ = wrap_mlx_loop_end(temp);
        temp.deinit();
        return (1);
    }

    pub fn fdfLoop(param: ?*anyopaque) callconv(.C) c_int {
        var data = @as(*FdfData, @alignCast(@ptrCast(param orelse return (0))));
        switch (data.pressed) {
            Key.D_KEY => {
                data.map.theta_z += 1;
            },
            Key.A_KEY => {
                data.map.theta_z -= 1;
            },
            Key.W_KEY => {
                data.map.theta_x += 1;
            },
            Key.S_KEY => {
                data.map.theta_x -= 1;
            },
            Key.ESCAPE => {
                data.mlx_res.deinit();
            },
            else => {},
        }

        data.mlx_res.curr_time = std.time.nanoTimestamp();
        const delta_time_ns = data.mlx_res.curr_time - data.mlx_res.last_time;
        const delta_time_s = @as(f32, @floatFromInt(delta_time_ns)) / 1_000_000_000.0;
        const fps = 1.0 / delta_time_s;

        // Print FPS
        std.debug.print("curr fps = {d}\n", .{fps});
        data.mlx_res.last_time = std.time.nanoTimestamp();

        var fps_str_buf: [64]u8 = undefined;
        const fps_str = std.fmt.bufPrint(&fps_str_buf, "{d}", .{fps}) catch "N/A";
        _ = fps_str; // autofix

        const original: []const u8 = "Hello, Zig!";
        const c_string: [*:0]u8 = @ptrCast(original);
        wrap_mlx_string_put(data.mlx_res.mlx, data.mlx_res.win, 930, 20, c_string);

        data.map.rotateZ(data.map.theta_z);
        data.map.rotateX(data.map.theta_x);
        data.map.scale();
        data.mlx_res.paintScreen(0x00);
        data.map.draw(data.mlx_res);
        data.mlx_res.pushImgToScreen();
        return 0;
    }

    pub fn loop(mlx_res: *MlxRessources, map: *Map(f32)) void {
        mlx_res.last_time = std.time.nanoTimestamp();
        var data = FdfData.init(mlx_res, map);
        const ptr = @as(?*anyopaque, @alignCast(@ptrCast(&data)));
        const mlx_ptr = @as(?*anyopaque, @alignCast(@ptrCast(mlx_res)));
        _ = wrap_mlx_hook_1(mlx_res.win, @as(i32, 17), @as(i32, 1 << 17), on_program_quit, mlx_ptr);
        _ = wrap_mlx_hook_2(mlx_res.win, 2, @as(i64, 1 << 0), keyHandler, ptr);
        _ = wrap_mlx_hook_2(mlx_res.win, 3, @as(i64, 1 << 1), keyReleaseHandler, ptr);
        _ = wrap_mlx_loop_hook_1(mlx_res.mlx, fdfLoop, @ptrCast(&data));
        _ = wrap_mlx_loop(@alignCast(@ptrCast(mlx_res.*.mlx)));
    }

    pub fn paintScreen(self: *Self, color: u32) void {
        for (0..height) |h| {
            for (0..width) |w| {
                self.*.data[w + (h * height)] = color;
            }
        }
    }

    pub fn keyHandler(keycode: i32, maybe_data: ?*anyopaque) callconv(.C) c_int {
        const data = @as(?*FdfData, @alignCast(@ptrCast(maybe_data))) orelse return (0);
        data.pressed = Key.toEnum(@bitCast(keycode));
        return 0;
    }

    pub fn keyReleaseHandler(_: i32, maybe_data: ?*anyopaque) callconv(.C) c_int {
        const data = @as(?*FdfData, @alignCast(@ptrCast(maybe_data))) orelse return (0);
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
        allocator.destroy(mlx_res);
        std.posix.exit(0);
    }
};
