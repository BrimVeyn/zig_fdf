const std = @import("std");
const math = std.math;
const PI = math.pi;

pub const precomputed_cos: [628]f32 = blk: {
    @setEvalBranchQuota(1800);
    var my_angle = [_]f32{0.0} ** 628;
    for (0..my_angle.len, 0..628) |i, angle| {
        var tmp_angle: f32 = @floatFromInt(angle);
        tmp_angle /= 100;
        my_angle[i] = @cos(tmp_angle);
    }
    break :blk my_angle;
};

pub const precomputed_sin: [628]f32 = blk: {
    @setEvalBranchQuota(1800);
    var my_angle = [_]f32{0.0} ** 628;
    for (0..my_angle.len, 0..628) |i, angle| {
        var tmp_angle: f32 = @floatFromInt(angle);
        tmp_angle /= 100;
        my_angle[i] = @sin(tmp_angle);
    }
    break :blk my_angle;
};
