const std = @import("std");

const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;
const stderr = std.io.getStdErr().writer();

const map_42 = @embedFile("test_maps/elem.fdf");

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

    std.debug.print("{s}\n", .{map_42});
    std.debug.print("{}\n", .{@TypeOf(map_42)});

    var it = std.mem.splitScalar(u8, map_42, '\n');

    while (it.next()) |x| {
        std.debug.print("{s}\n", .{x});
    }

    // here you use the try keyword to say take my error and let it bubble up
    // the callstack, this is ok but you should also consider in which case
    // you should handle the errors yourself
    // var parsed_map = try parseMap(map_42);
    const fdfmap = try Map(f32).init(allocator);
    defer fdfmap.deinit();

    if (fdfmap.parse(map_42)) |_| {
        fdfmap.rotateZ(45);
        fdfmap.rotateX(45);
        fdfmap.scale();
        // fdfmap.debugPoint();
        fdfmap.debugMapData();
        std.debug.print("heihgt = {d}\n", .{fdfmap.height});
        std.debug.print("width = {d}\n", .{fdfmap.width});
    } else |e| {
        switch (e) {
            error.empty_map => try stderr.print("Empty map\n", .{}),
            else => try stderr.print("Unknown error!\nAborting now ...\n", .{}),
        }
    }

    mlx_res.loop();
    defer mlx_res.deinit();
}
