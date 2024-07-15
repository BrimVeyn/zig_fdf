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

extern fn mlx_init() ?*anyopaque;

extern fn mlx_get_data_addr(
    img_handle: ?*anyopaque,
    img_bpp: *i32,
    img_size: *i32,
    img_endian: *i32,
) [*:0]u8;

extern fn mlx_put_image_to_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, img_ptr: ?*anyopaque, x: u32, y: u32) u32;

extern fn mlx_hook(
    win_handle: ?*anyopaque,
    x_event: i32,
    x_mask: i32,
    callback: ?*const fn (?*anyopaque) callconv(.C) c_int,
    arg: ?*anyopaque,
) callconv(.C) c_int;

pub const MlxRessources = packed struct {
    const width: i32 = 1000;
    const height: i32 = 1000;
    const title: [:0]const u8 = "fdf";
    allocator: *std.mem.Allocator,
    mlx: ?*anyopaque,
    win: ?*anyopaque,
    img: ?*anyopaque,
    data: [*:0]u8,
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
        result.*.data[4] = 0xFF;
        result.*.data[5] = 0xFF;
        result.*.data[6] = 0xFF;
        _ = mlx_put_image_to_window(result.*.mlx, result.*.win, result.*.img, 0, 0);
        return (result);
    }

    pub fn on_program_quit(arg: ?*anyopaque) callconv(.C) c_int {
        const maybe_mlx_res = @as(?*MlxRessources, @alignCast(@ptrCast(arg)));
        if (maybe_mlx_res != null) {
            maybe_mlx_res.?.deinit();
        }
        return 1;
    }

    pub fn loop(mlx_res: *MlxRessources) void {
        _ = mlx_hook(mlx_res.win, @as(i32, 17), @as(i32, 1 << 17), on_program_quit, mlx_res);
        _ = libmlx.mlx_loop(mlx_res.mlx);
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
