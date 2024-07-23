const std = @import("std");

const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;
const stderr = std.io.getStdErr().writer();

const map_42 = @embedFile("test_maps/elem-fract.fdf");

// let's put aside our type into it's own file and import the types
const map = @import("map.zig");
const Map = map.Map;
const MapError = map.MapError;
const Point = map.Point;
const Color = map.Color;

pub const FdfError = error{
    wrong_z, //unexcepted Z value
    wrong_color, //Wrong color format
    empty_map, //Empty map lol
    out_of_bonds,
    parsing_error,
    opendir_error, //opening test_map dir failed
};

pub const Resolution = struct {
    height: u16,
    width: u16,
};

fn setResolution() !Resolution {
    const args = std.os.argv;
    var res_height: u16 = undefined;
    var res_width: u16 = undefined;

    if (args.len != 3) {
        std.log.err("usage: ./fdf [width] [height]", .{});
        return error.resolution_error;
    }

    const len_width: usize = std.mem.len(args[1]);
    const width_zig_string: []const u8 = args[1][0..len_width];
    const width_result = std.fmt.parseInt(u16, width_zig_string, 10);

    if (width_result) |width| {
        res_width = width;
    } else |_| {
        return error.resolution_error;
    }

    const len_height: usize = std.mem.len(args[2]);
    const height_zig_string: []const u8 = args[2][0..len_height];
    const height_result = std.fmt.parseInt(u16, height_zig_string, 10);

    if (height_result) |height| {
        res_height = height;
    } else |_| {
        return error.resolution_error;
    }

    std.debug.print("Loading [screenHeight = {d}, screenWidth = {d}]\n", .{ res_width, res_height });
    return Resolution{
        .width = res_width,
        .height = res_height,
    };
}

pub fn main() !void {
    const windowResolution = try setResolution();

    var gpa = std.heap.GeneralPurposeAllocator(.{ .safety = true }){};
    defer _ = gpa.deinit();
    var allocator = gpa.allocator();
    const mlx_res = try MlxRessources.init(&allocator, windowResolution.width, windowResolution.height);

    const fdfmap = try Map.init(allocator);
    defer fdfmap.deinit();

    if (fdfmap.parse(map_42)) |_| {
        std.debug.print("Map infos:\n", .{});
        std.debug.print("height = {d}\n", .{fdfmap.height});
        std.debug.print("width = {d}\n", .{fdfmap.width});
    } else |e| {
        switch (e) {
            error.empty_map => try stderr.print("Empty map\n", .{}),
            else => try stderr.print("Unknown error!\nAborting now ...\n", .{}),
        }
    }

    mlx_res.loop(fdfmap);
    defer mlx_res.deinit();
}
