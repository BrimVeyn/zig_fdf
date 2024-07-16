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
///
const std = @import("std");
const libmlx = @cImport({
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

const Key = enum(u16) {
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
    LEFT = 1,
    UP = 2,
    RIGHT = 3,
    DOWN = 4,
    X = 0,
    Y = 1,
    ESCAPE = 65307,
    PLEFT = 91,
    PRIGHT = 93,
};

const Map = @import("map.zig").Map;

extern fn mlx_init() ?*anyopaque;

extern fn mlx_get_data_addr(
    img_handle: ?*anyopaque,
    img_bpp: *i32,
    img_size: *i32,
    img_endian: *i32,
) [*:0]u32;

extern fn mlx_put_image_to_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, img_ptr: ?*anyopaque, x: u32, y: u32) u32;

extern fn mlx_hook(
    win_handle: ?*anyopaque,
    x_event: i32,
    x_mask: i32,
    callback: ?*const fn (u32, ?*anyopaque) callconv(.C) c_int,
    arg: ?*anyopaque,
) callconv(.C) c_int;

extern fn mlx_loop_hook(mlx_ptr: ?*anyopaque, funct_ptr: ?*const fn (?*anyopaque) callconv(.C) c_int, param: ?*anyopaque) callconv(.C) c_int;

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

const fdfData = struct {
    mlx_res: *MlxRessources,
    map: *Map(f32),
    key_hash: std.AutoHashMap(u32, bool),

    pub fn init(allocator: *std.mem.Allocator, mlx_res: *MlxRessources, map: *Map(f32)) !fdfData {
        return fdfData{
            .mlx_res = mlx_res,
            .map = map,
            .key_hash = std.AutoHashMap(u32, bool).init(allocator.*),
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

    pub fn init(allocator: *std.mem.Allocator) !*MlxRessources {
        var result = try allocator.create(MlxRessources);
        result.*.allocator = allocator;
        result.*.mlx = libmlx.mlx_init();
        result.*.win = libmlx.mlx_new_window(result.*.mlx, width, height, @constCast(@alignCast(@ptrCast(title.ptr))));
        result.*.img = libmlx.mlx_new_image(result.*.mlx, width, height);
        std.debug.print("init mlx_ptr = {*}\n", .{result.*.mlx});
        std.debug.print("init win_ptr = {*}\n", .{result.*.win});
        std.debug.print("init img_ptr = {*}\n", .{result.*.img});
        result.*.data = mlx_get_data_addr(result.*.img, &result.img_bits_per_pixel, &result.*.img_size, &result.*.img_endian);
        _ = mlx_put_image_to_window(result.*.mlx, result.*.win, result.*.img, 0, 0);
        return (result);
    }

    pub fn on_program_quit(keycode: u32, arg: ?*anyopaque) callconv(.C) c_int {
        _ = keycode; // autofix
        const maybe_mlx_res = @as(?*MlxRessources, @alignCast(@ptrCast(arg)));
        if (maybe_mlx_res != null) {
            maybe_mlx_res.?.deinit();
        }
        return 1;
    }

    pub fn fdfLoop(param: ?*anyopaque) callconv(.C) c_int {
        const maybe_data = @as(?*fdfData, @alignCast(@ptrCast(param)));
        if (maybe_data) |data| {
            data.map.draw(data.mlx_res);
            data.mlx_res.pushImgToScreen();
        }
        return 0;
    }

    pub fn loop(mlx_res: *MlxRessources, map: *Map(f32)) void {
        var data = try fdfData.init(mlx_res.allocator, mlx_res, map);
        const data_ptr = @as(?*anyopaque, @ptrCast(&data));

        _ = mlx_hook(mlx_res.win, @as(i32, 17), @as(i32, 1 << 17), on_program_quit, mlx_res);
        _ = mlx_hook(mlx_res.win, 2, @as(i64, 1 << 0), keyHandler, data_ptr);
        _ = mlx_hook(mlx_res.win, 3, @as(i64, 1 << 1), keyReleaseHandler, data_ptr);
        _ = mlx_loop_hook(mlx_res.mlx, fdfLoop, data_ptr);
        _ = libmlx.mlx_loop(mlx_res.mlx);
    }

    pub fn paintScreen(self: *Self, color: u32) void {
        for (0..height) |h| {
            for (0..width) |w| {
                self.*.data[w + (h * height)] = color;
            }
        }
    }

    pub fn keyHandler(keycode: u32, param: ?*anyopaque) callconv(.C) c_int {
        const maybe_data = @as(?*fdfData, @alignCast(@ptrCast(param)));
        if (maybe_data) |data| {
            std.debug.print("keycode = {d}\n", .{keycode});
            if (data.key_hash.put(keycode, true)) |_| {} else |e| {
                switch (e) {
                    error.OutOfMemory => return -1,
                }
            }
        }
        return 0;
    }

    pub fn keyReleaseHandler(keycode: u32, param: ?*anyopaque) callconv(.C) c_int {
        const maybe_data = @as(?*fdfData, @alignCast(@ptrCast(param)));
        if (maybe_data) |data| {
            std.debug.print("kecode = {d} value = {any}\n", .{ keycode, data.key_hash.get(keycode) });
        }
        return 0;
    }

    pub fn pushImgToScreen(self: *Self) void {
        _ = mlx_put_image_to_window(self.mlx, self.win, self.img, 0, 0);
    }

    pub fn deinit(mlx_res: *MlxRessources) void {
        const allocator = mlx_res.allocator;
        _ = libmlx.mlx_destroy_image(mlx_res.*.mlx, mlx_res.*.img);
        _ = libmlx.mlx_destroy_window(mlx_res.*.mlx, mlx_res.*.win);
        _ = libmlx.mlx_destroy_display(mlx_res.*.mlx.?);
        _ = libmlx.free(mlx_res.*.mlx.?);
        allocator.destroy(mlx_res);
        std.posix.exit(0);
    }
};
