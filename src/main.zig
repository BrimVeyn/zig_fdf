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

const map_42 = @embedFile("test_maps/42.fdf");

extern fn mlx_init() ?*anyopaque;
extern fn mlx_get_data_addr(img_handle: ?*anyopaque, img_bpp: *i32, img_size: *i32, img_endian: *i32) [*:0]u8;
extern fn mlx_hook(win_handle: ?*anyopaque, x_event: i32, x_mask: i32, callback: ?*const fn (?*anyopaque) callconv(.C) c_int, arg: ?*anyopaque) callconv(.C) c_int;

pub const Point = struct {
    X: u32,
    Y: u32,

    pub fn init(x: u32, y: u32) Point {
        return Point{
            .X = x,
            .Y = y,
        };
    }
};

pub const MlxRessources = packed struct {
    const width: i32 = 800;
    const height: i32 = 600;
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

pub const Map = struct {
    matrix: [][]u32,
    pts: [][]Point,
    height: usize,
    width: usize,

    pub fn init_pts(self: *Map) void {
        if (@mod(self.height, 2) != 0) {
            var res: f16 = @floatFromInt(self.height);
            res /= 2;
            std.debug.print("salope {d}", .{res});
        } else {
            std.debug.print("pute {d}", .{self.height / 2});
        }
    }
};

fn parseMap(content: []const u8) !Map {
    var allocator = std.heap.page_allocator;

    // First, count the number of lines to determine height
    var lines_iter = std.mem.splitScalar(u8, content, '\n');
    var height: usize = 0;
    while (lines_iter.next()) |line| {
        if (line.len == 0) continue; // Skip empty lines if any
        height += 1;
    }

    // Second, determine the maximum number of columns (width)
    var max_width: usize = 0;
    lines_iter = std.mem.splitScalar(u8, content, '\n');
    while (lines_iter.next()) |line| {
        if (line.len == 0) continue; // Skip empty lines if any

        var items_iter = std.mem.splitScalar(u8, line, ' ');
        var count: usize = 0;
        while (items_iter.next()) |item| {
            if (item.len == 0) continue; // Skip empty items if any
            count += 1;
        }
        if (count > max_width) max_width = count;
    }

    // Allocate memory for the 2D array
    var map: [][]u32 = try allocator.alloc([]u32, height);
    for (map, 0..) |_, row_index| {
        map[row_index] = try allocator.alloc(u32, max_width);
    }

    // Third, parse and populate the map array
    lines_iter = std.mem.splitScalar(u8, content, '\n');
    var row_index: usize = 0;
    while (lines_iter.next()) |line| {
        if (line.len == 0) continue; // Skip empty lines if any

        var col_index: usize = 0;
        var items_iter = std.mem.splitScalar(u8, line, ' ');
        while (items_iter.next()) |item| {
            if (item.len == 0) continue; // Skip empty items if any
            map[row_index][col_index] = std.fmt.parseInt(u32, item, 10) catch 0;
            col_index += 1;
        }

        // Pad with zeros for columns that may not exist in some rows
        while (col_index < max_width) {
            map[row_index][col_index] = 0;
            col_index += 1;
        }

        row_index += 1;
    }

    return Map{
        .matrix = map,
        .pts = undefined,
        .height = height,
        .width = max_width,
    };
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{ .safety = true }){};
    defer _ = gpa.deinit();
    var allocator = gpa.allocator();
    const mlx_res = try MlxRessources.init(&allocator);
    const p1 = Point.init(12, 13);

    std.debug.print("{}\n", .{p1});
    std.debug.print("{s}\n", .{map_42});
    std.debug.print("{}\n", .{@TypeOf(map_42)});

    var it = std.mem.splitScalar(u8, map_42, '\n');

    while (it.next()) |x| {
        std.debug.print("{s}\n", .{x});
    }

    var parsed_map = try parseMap(map_42);

    for (parsed_map.matrix) |row| {
        for (row) |col| {
            std.debug.print("{d} ", .{col});
        }
        std.debug.print("\n", .{});
    }
    std.debug.print("heihgt = {d}\n", .{parsed_map.height});
    std.debug.print("width = {d}\n", .{parsed_map.width});

    parsed_map.init_pts();

    // mlx_res.loop();
    defer mlx_res.deinit();
}
