const std = @import("std");

const backend = @import("backend.zig");
const MlxRessources = backend.MlxRessources;
const stderr = std.io.getStdErr().writer();

const map_42 = @embedFile("test_maps/42.fdf");

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

// see Map.zig
//
//
// pub const Point = struct {
//     X: u32,
//     Y: u32,
//     pub fn init(x: u32, y: u32) Point {
//         return Point{
//             .X = x,
//             .Y = y,
//         };
//     }
// };

// see Map.zig
//
//
// pub const Map = struct {
//     matrix: [][]u32,
//     pts: [][]Point,
//     height: usize,
//     width: usize,
//     pub fn init_pts(self: *Map) void {
//         if (@mod(self.height, 2) != 0) {
//             var res: f16 = @floatFromInt(self.height);
//             res /= 2;
//             std.debug.print("salope {d}", .{res});
//         } else {
//             std.debug.print("pute {d}", .{self.height / 2});
//         }
//     }
// };

// fn parseMap(content: []const u8, allocator : std.mem.Allocator) !void {

fn parseMap(content: []const u8) !void {
    // In zig it's considered to be standard practice to always take
    // an allocator as a parameter for any functions that needs to do
    // memory allocation, even for you it will be simpler to switch your
    // allocator if all your functions accept an allocator to begin with
    // the reason is that Zig want's to be code that's easy to read and
    // easy to understand and in order to do that everything needs to be
    // explicit, so if a function needs to do some memory allocation
    // it should be polite and ask for one, such that later when you see the
    // function signature you know immediately that it does some memory allocation
    var allocator = std.heap.page_allocator;

    // [OK]
    // First, count the number of lines to determine height
    var lines_iter = std.mem.splitScalar(u8, content, '\n');
    var height: usize = 0;
    while (lines_iter.next()) |line| {
        if (line.len == 0) continue; // Skip empty lines if any
        height += 1;
    }

    // [OK]
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

    // [OK]
    // Allocate memory for the 2D array
    var map_array: [][]u32 = try allocator.alloc([]u32, height);
    for (map_array, 0..) |_, row_index| {
        map_array[row_index] = try allocator.alloc(u32, max_width);
    }

    // [OK]
    // Third, parse and populate the map_array 
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

        // [OK]
        // Pad with zeros for columns that may not exist in some rows
        while (col_index < max_width) {
            map[row_index][col_index] = 0;
            col_index += 1;
        }

        row_index += 1;
    }

    // return Map{
    //     .matrix = map,
    //     .pts = undefined,
    //     .height = height,
    //     .width = max_width,
    // };
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
    const fdfmap = try Map(i32).init(allocator);
    defer fdfmap.deinit();

    if (fdfmap.parse(map_42)) |_| {
        fdfmap.debugPoint();
        fdfmap.debugColor();
        std.debug.print("heihgt = {d}\n", .{fdfmap.height});
        std.debug.print("width = {d}\n", .{fdfmap.width});
    } else |e| {
        switch (e) {
            error.hill_formed_entry => try stderr.print("Some entries in the map were hilled formed cannot proceed\n", .{}),
            error.hill_formed_map => try stderr.print("Some rows were of different length\n", .{}),
            error.empty_map => try stderr.print("Empty map\n", .{}),
            else => try stderr.print("Unknown error!\nAborting now ...\n", .{}),
        }
    }

    // mlx_res.loop();
    defer mlx_res.deinit();
}
