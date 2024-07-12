// ************************************************************************** //
//                                                                            //
//                                                        :::      ::::::::   //
//   map.zig                                            :+:      :+:    :+:   //
//                                                    +:+ +:+         +:+     //
//   By: pollivie <pollivie.student.42.fr>          +#+  +:+       +#+        //
//                                                +#+#+#+#+#+   +#+           //
//   Created: 2024/07/12 16:17:04 by pollivie          #+#    #+#             //
//   Updated: 2024/07/12 16:17:05 by pollivie         ###   ########.fr       //
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
        /// equivalent in C :
        ///
        /// t_map *init(t_allocator *allocator) {
        ///      t_map *self;
        ///
        ///      self = (t_map*)malloc(sizeof(t_map));
        ///     *self = (t_map){
        ///           .allocator = allocator,
        ///           .color_data = NULL,
        ///           .color = NULL,
        ///           .map_data = NULL,
        ///           .map = NULL,
        ///           .width = 0,
        ///           .height = 0,
        ///          };
        ///      return (self);
        /// }
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

        /// STACK BASED init
        /// equivalent in C :
        ///
        /// t_map init(t_allocator *allocator) {
        ///     return (t_map){
        ///           .allocator = allocator,
        ///           .color_data = NULL,
        ///           .color = NULL,
        ///           .map_data = NULL,
        ///           .map = NULL,
        ///           .width = 0,
        ///           .height = 0,
        ///          };
        /// }
        pub fn init2(allocator: Allocator) Self {
            return Self{
                .allocator = allocator,
                .color_data = ArrayList(Color).init(allocator),
                .color = ArrayList([]Color).init(allocator),
                .map_data = ArrayList(Point(T)).init(allocator),
                .map = ArrayList([]Point(T)).init(allocator),
                .width = 0,
                .height = 0,
            };
        }

        /// This is where the fun begins first as you can see I used Zig's great type system
        /// to bring some expresivness into my function, now my parse function which is meant
        /// to parse the map.fdf buffer, can return descriptive errors indicating exactly what
        /// was wrong with the map
        pub fn parse(self: *Self, raw_points: []const u8) (MapError || Allocator.Error)!void {
            var height: i32 = 0;
            var width: i32 = 0;

            // here we can leverage the optional type to check that the width are the same
            // in each rows we first put it to null, and on the first check when we see that
            // it's null we will skip checking if (prev_width == width) and give instead
            // to our maybe_prev_width the value of width
            var maybe_prev_width: ?i32 = null;

            // let's leverage iterators to parse the map without any memory allocation
            var row_iterator = std.mem.splitScalar(u8, raw_points, '\n');
            while (row_iterator.next()) |row| : (height += 1) {
                var entry_iterator = std.mem.splitScalar(u8, row, ' ');
                width = 0;
                while (entry_iterator.next()) |entry| : (width += 1) {
                    var value_iterator = std.mem.splitScalar(u8, entry, ',');

                    // this uses the orelse syntax to express hill_formed_entry which is when the map is not
                    // formed properly this allow for a second benefit let's break it down :
                    //
                    // if you look at the return type of value_iterator.next() you will see that it returns
                    // value_iterator.next() ?T
                    //
                    // this is great but also inconvenient because our raw_z is now optional too :(
                    //
                    // but with the orelse syntax we say get me the value or if there is none do X
                    //
                    //
                    //                           ?[]T        (get me the value or return MapError.....)
                    // const raw_z = value_iterator.next() orelse return MapError.hill_formed_entry;
                    //
                    // since we now handle the case whre there is no value_iterator.next returns null;
                    //
                    // const raw_z can be a []const u8, instead of a ?[]const u8
                    //
                    const raw_z = value_iterator.next() orelse return MapError.hill_formed_entry;

                    // here since we know that there can be no colors we transform the optional into a default value

                    // this is another way to handle errors in our case we take the error from std.fmt.parseInt
                    // and we replace it with our own error
                    // this syntax just below is the equivalent of doing
                    //
                    // if (my_expression_doesn't produce a null or an error) |capture that good value| {
                    //    do some stuff with the good value.....
                    // } else |capture the error| {
                    //    do something with the error
                    // }
                    //
                    if (std.fmt.parseInt(i32, raw_z, 10)) |z| {
                        try self.map_data.append(Point(i32).init(width, height, z));
                    } else |_| {
                        return MapError.hill_formed_entry;
                    }

                    if (value_iterator.next()) |color| {
                        const offset = if (color.len >= 2) 2 else return MapError.hill_formed_entry;
                        const c = std.fmt.parseInt(u32, color[offset..], 16) catch 0;
                        // the offset of two is to skip the Ox
                        try self.color_data.append(Color.init(c));
                    } else {
                        try self.color_data.append(Color.init(0));
                    }
                }
                if (maybe_prev_width) |prev_width| {
                    if (width != prev_width)
                        return MapError.hill_formed_map;
                } else {
                    maybe_prev_width = width;
                }
            }
            self.height = @intCast(height);
            self.width = @intCast(width);

            // here we leverage the type system of zig to effortlessly get [][]Point and [][]Color
            // while also being cache friendly and optimized, because our points and colors are stored
            // linearly in the color_data / point_data Arraylist, and we use the map height/width
            // to take a slice of those (a slice is a fat pointer aka ptr/len ) and now we have a 2d
            // matrix of both points and colors;
            for (0..self.height) |i| {
                const begin = i * self.width;
                const end = self.width + begin;
                const color_slice = self.color_data.items[begin..end];
                const point_slice = self.map_data.items[begin..end];

                try self.map.append(point_slice);
                try self.color.append(color_slice);
            }
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
