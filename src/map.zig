// ************************************************************************** //
//                                                                            //
//                                                        :::      ::::::::   //
//   map.zig                                            :+:      :+:    :+:   //
//                                                    +:+ +:+         +:+     //
//   By: pollivie <pollivie.student.42.fr>          +#+  +:+       +#+        //
//                                                +#+#+#+#+#+   +#+           //
//   Created: 2024/07/12 16:17:04 by pollivie          #+#    #+#             //
//   Updated: 2024/07/13 18:14:55 by bvan-pae         ###   ########.fr       //
//                                                                            //
// ************************************************************************** //

const std = @import("std");
const ArrayList = std.ArrayList;
const Allocator = std.mem.Allocator;

// Let's make this a comptime struct such that
// if you need to change the type of your point
// you can easily do so,
pub fn Point(comptime T: type) type {
    return struct {
        const Self = @This();
        x: T,
        y: T,
        z: T,

        pub fn init(x: T, y: T, z: T) Self {
            return Self{
                .x = x,
                .y = y,
                .z = z,
            };
        }
    };
}

/// let's represent the colors by a struct
/// right now it's dead simple but maybe later
/// you want to methods like Color.lerp()
pub const Color = union {
    color: u32,

    pub fn init(value: u32) Color {
        return Color{
            .color = value,
        };
    }
};

pub const MapError = error{
    hill_formed_entry, // when an entry Z has the wrong format
    hill_formed_map, // when the rows aren't the same length
    empty_map, // empty lol

};

/// here we make the map comptime again such that it can create an ArrayList of Points(T)
pub fn Map(comptime T: type) type {
    return struct {
        const DefaultColor = "0x00000000";
        const Self = @This();
        allocator: std.mem.Allocator,

        color_data: ArrayList(Color),
        color: ArrayList([]Color),

        map_data: ArrayList(Point(T)),
        map: ArrayList([]Point(T)),

        width: usize,
        height: usize,

        /// when we init a big structure it's usually better to give it a pointer
        /// similar to the C++ constructor/destructor, the init method is a method
        /// that's meant to set our memory for our struct to some sane default
        /// in an init function you can't omit to initialize a value
        /// this method returns a pointer to the map but you could also
        /// do it like the next method
        /// HEAP BASED init
        pub fn init(allocator: Allocator) Allocator.Error!*Self {
            const new: *Self = try allocator.create(Self);
            new.* = Self{
                .allocator = allocator,
                .color_data = ArrayList(Color).init(allocator),
                .color = ArrayList([]Color).init(allocator),
                .map_data = ArrayList(Point(T)).init(allocator),
                .map = ArrayList([]Point(T)).init(allocator),
                .width = 0,
                .height = 0,
            };
            return (new);
        }

        /// This is where the fun begins first as you can see I used Zig's great type system
        /// to bring some expresivness into my function, now my parse function which is meant
        /// to parse the map.fdf buffer, can return descriptive errors indicating exactly what
        /// was wrong with the map
        pub fn parse(self: *Self, raw_points: []const u8) (MapError || Allocator.Error)!void {
            var height: usize = 0;
            var width: usize = 0;

            // here we can leverage the optional type to check that the width are the same
            // in each rows we first put it to null, and on the first check when we see that
            // it's null we will skip checking if (prev_width == width) and give instead
            // to our maybe_prev_width the value of width
            var max_width: usize = 0;

            // let's leverage iterators to parse the map without any memory allocation
            var row_iterator = std.mem.splitScalar(u8, raw_points, '\n');
            while (row_iterator.next()) |row| {
                var entry_iterator = std.mem.splitScalar(u8, row, ' ');
                width = 0;
                if (row.len == 0) continue;
                height += 1;
                while (entry_iterator.next()) |entry| {
                    if (entry.len == 0) continue;

                    std.debug.print("entry = {s}\n", .{entry});
                    const salope = std.fmt.parseInt(u32, entry, 10) catch 0;

                    std.debug.print("salope = {d}\n", .{salope});
                    width += 1;
                }
                std.debug.print("width = {d}\n", .{width});
                max_width = if (width > max_width) width else max_width;
            }
            self.height = height;
            self.width = max_width;

            // here we leverage the type system of zig to effortlessly get [][]Point and [][]Color
            // while also being cache friendly and optimized, because our points and colors are stored
            // linearly in the color_data / point_data Arraylist, and we use the map height/width
            // to take a slice of those (a slice is a fat pointer aka ptr/len ) and now we have a 2d
            // matrix of both points and colors;
            // for (0..self.height) |i| {
            //     const begin = i * self.width;
            //     const end = self.width + begin;
            //     const color_slice = self.color_data.items[begin..end];
            //     const point_slice = self.map_data.items[begin..end];
            //
            //     try self.map.append(point_slice);
            //     try self.color.append(color_slice);
            // }
        }

        pub fn debugColor(self: *Self) void {
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    std.debug.print("{any}", .{self.color.items[h][w].color});
                }
                std.debug.print("\n", .{});
            }
        }

        pub fn debugPoint(self: *Self) void {
            for (0..self.height) |h| {
                for (0..self.width) |w| {
                    std.debug.print("{any}", .{self.map.items[h][w]});
                }
                std.debug.print("\n", .{});
            }
        }

        /// this is the equivalent of the destructor
        /// it's convention in zig for struct that have
        /// to handle memory allocation to have an init/deinit
        pub fn deinit(self: *Self) void {
            self.map_data.deinit();
            self.map.deinit();
            self.color_data.deinit();
            self.color.deinit();
            self.allocator.destroy(self);
        }
    };
}

/// Now that we have a working map and a working parser let's have fun
/// and let's use the builtin testing framework to ensure that our map
/// is working as expected
const testing = std.testing;
const expect = std.testing.expect;

const TESTMAP =
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
    \\1,0x000000FF 1,0x0000FF00 1,0x00FF0000 1,0xFF000000\n
;

test "test - fillWith" {
    // first we use the testing allocator not a regular one
    const allocator = testing.allocator;
    var map = try Map(i32).init(allocator);
    defer map.deinit();

    try map.parse(TESTMAP);
    map.debugColor();
    map.debugPoint();
    try expect(map.width == 4);
    try expect(map.height == 4);
    // you will see that this is actually the best part of zig
    // the fact that it is so easy and cheap to "test" your code
    // makes it a really good ergonomic language, because as you
    // go longer and longer in your project having test ensures
    // that your refactoring won't break your code behind your back
}
