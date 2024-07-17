const std = @import("std");

const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;
const stderr = std.io.getStdErr().writer();

const map_42 = @embedFile("test_maps/elem-fract-no-color.fdf");

// let's put aside our type into it's own file and import the types
const map = @import("map.zig");
const Map = map.Map;
const MapError = map.MapError;
const Point = map.Point;
const Color = map.Color;

// this is done in order to prevent the lazy evaluation
// such that it will still work when you do zig build test
comptime {
    _ = map;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{ .safety = true }){};
    defer _ = gpa.deinit();
    var allocator = gpa.allocator();
    const mlx_res = try MlxRessources.init(&allocator);

    const fdfmap = try Map(f32).init(allocator);
    defer fdfmap.deinit();

    if (fdfmap.parse(map_42)) |_| {
        // fdfmap.debugMapData();
        fdfmap.rotateZ(fdfmap.theta_z);
        fdfmap.rotateX(fdfmap.theta_x);
        fdfmap.scale();
        fdfmap.draw(mlx_res);
        mlx_res.pushImgToScreen();
        // mlx_res.paintScreen(0x0);
        // fdfmap.debugPoint();
        std.debug.print("heihgt = {d}\n", .{fdfmap.height});
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
