pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const wchar_t = c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub fn atof(arg___nptr: [*c]const u8) callconv(.C) f64 {
    var __nptr = arg___nptr;
    _ = &__nptr;
    return strtod(__nptr, @as([*c][*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))));
}
pub fn atoi(arg___nptr: [*c]const u8) callconv(.C) c_int {
    var __nptr = arg___nptr;
    _ = &__nptr;
    return @as(c_int, @bitCast(@as(c_int, @truncate(strtol(__nptr, @as([*c][*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))), @as(c_int, 10))))));
}
pub fn atol(arg___nptr: [*c]const u8) callconv(.C) c_long {
    var __nptr = arg___nptr;
    _ = &__nptr;
    return strtol(__nptr, @as([*c][*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))), @as(c_int, 10));
}
pub fn atoll(arg___nptr: [*c]const u8) callconv(.C) c_longlong {
    var __nptr = arg___nptr;
    _ = &__nptr;
    return strtoll(__nptr, @as([*c][*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))), @as(c_int, 10));
}
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_1 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_1,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub fn bsearch(arg___key: ?*const anyopaque, arg___base: ?*const anyopaque, arg___nmemb: usize, arg___size: usize, arg___compar: __compar_fn_t) callconv(.C) ?*anyopaque {
    var __key = arg___key;
    _ = &__key;
    var __base = arg___base;
    _ = &__base;
    var __nmemb = arg___nmemb;
    _ = &__nmemb;
    var __size = arg___size;
    _ = &__size;
    var __compar = arg___compar;
    _ = &__compar;
    var __l: usize = undefined;
    _ = &__l;
    var __u: usize = undefined;
    _ = &__u;
    var __idx: usize = undefined;
    _ = &__idx;
    var __p: ?*const anyopaque = undefined;
    _ = &__p;
    var __comparison: c_int = undefined;
    _ = &__comparison;
    __l = 0;
    __u = __nmemb;
    while (__l < __u) {
        __idx = (__l +% __u) / @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
        __p = @as(?*const anyopaque, @ptrCast(@as([*c]const u8, @ptrCast(@alignCast(__base))) + (__idx *% __size)));
        __comparison = __compar.?(__key, __p);
        if (__comparison < @as(c_int, 0)) {
            __u = __idx;
        } else if (__comparison > @as(c_int, 0)) {
            __l = __idx +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
        } else {
            return @as(?*anyopaque, @ptrCast(@volatileCast(@constCast(__p))));
        }
    }
    return @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
}
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const struct___va_list_tag_2 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_2;
pub const __gnuc_va_list = __builtin_va_list;
const union_unnamed_3 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const va_list = __gnuc_va_list;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub fn vprintf(arg___fmt: [*c]const u8, arg___arg: [*c]struct___va_list_tag_2) callconv(.C) c_int {
    var __fmt = arg___fmt;
    _ = &__fmt;
    var __arg = arg___arg;
    _ = &__arg;
    return vfprintf(stdout, __fmt, __arg);
}
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub fn getchar() callconv(.C) c_int {
    return getc(stdin);
}
pub fn getc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    _ = &__fp;
    return if (__builtin_expect(@as(c_long, @intFromBool(__fp.*._IO_read_ptr >= __fp.*._IO_read_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __uflow(__fp) else @as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).*)));
}
pub fn getchar_unlocked() callconv(.C) c_int {
    return if (__builtin_expect(@as(c_long, @intFromBool(stdin.*._IO_read_ptr >= stdin.*._IO_read_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __uflow(stdin) else @as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(blk: {
        const ref = &stdin.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).*)));
}
pub fn fgetc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    _ = &__fp;
    return if (__builtin_expect(@as(c_long, @intFromBool(__fp.*._IO_read_ptr >= __fp.*._IO_read_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __uflow(__fp) else @as(c_int, @bitCast(@as(c_uint, @as([*c]u8, @ptrCast(@alignCast(blk: {
        const ref = &__fp.*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).*)));
}
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub fn putchar(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    return putc(__c, stdout);
}
pub fn fputc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    var __stream = arg___stream;
    _ = &__stream;
    return if (__builtin_expect(@as(c_long, @intFromBool(__stream.*._IO_write_ptr >= __stream.*._IO_write_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __overflow(__stream, @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(__c)))))))) else @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(__c))));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })))));
}
pub fn putc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    var __stream = arg___stream;
    _ = &__stream;
    return if (__builtin_expect(@as(c_long, @intFromBool(__stream.*._IO_write_ptr >= __stream.*._IO_write_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __overflow(__stream, @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(__c)))))))) else @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(__c))));
        (blk_1: {
            const ref = &__stream.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })))));
}
pub fn putchar_unlocked(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    _ = &__c;
    return if (__builtin_expect(@as(c_long, @intFromBool(stdout.*._IO_write_ptr >= stdout.*._IO_write_end)), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) __overflow(stdout, @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(__c)))))))) else @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(__c))));
        (blk_1: {
            const ref = &stdout.*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    })))));
}
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub fn feof_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    _ = &__stream;
    return @intFromBool((__stream.*._flags & @as(c_int, 16)) != @as(c_int, 0));
}
pub fn ferror_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    _ = &__stream;
    return @intFromBool((__stream.*._flags & @as(c_int, 32)) != @as(c_int, 0));
}
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_4 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_4 = @import("std").mem.zeroes([13]?*struct___locale_data_4),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub const useconds_t = __useconds_t;
pub const socklen_t = __socklen_t;
pub extern fn access(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn faccessat(__fd: c_int, __file: [*c]const u8, __type: c_int, __flag: c_int) c_int;
pub extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;
pub extern fn close(__fd: c_int) c_int;
pub extern fn closefrom(__lowfd: c_int) void;
pub extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;
pub extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;
pub extern fn pread(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize, __offset: __off_t) isize;
pub extern fn pwrite(__fd: c_int, __buf: ?*const anyopaque, __n: usize, __offset: __off_t) isize;
pub extern fn pipe(__pipedes: [*c]c_int) c_int;
pub extern fn alarm(__seconds: c_uint) c_uint;
pub extern fn sleep(__seconds: c_uint) c_uint;
pub extern fn ualarm(__value: __useconds_t, __interval: __useconds_t) __useconds_t;
pub extern fn usleep(__useconds: __useconds_t) c_int;
pub extern fn pause() c_int;
pub extern fn chown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn lchown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchownat(__fd: c_int, __file: [*c]const u8, __owner: __uid_t, __group: __gid_t, __flag: c_int) c_int;
pub extern fn chdir(__path: [*c]const u8) c_int;
pub extern fn fchdir(__fd: c_int) c_int;
pub extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
pub extern fn getwd(__buf: [*c]u8) [*c]u8;
pub extern fn dup(__fd: c_int) c_int;
pub extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
pub extern var __environ: [*c][*c]u8;
pub extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execle(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execl(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execlp(__file: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn nice(__inc: c_int) c_int;
pub extern fn _exit(__status: c_int) noreturn;
pub const _PC_LINK_MAX: c_int = 0;
pub const _PC_MAX_CANON: c_int = 1;
pub const _PC_MAX_INPUT: c_int = 2;
pub const _PC_NAME_MAX: c_int = 3;
pub const _PC_PATH_MAX: c_int = 4;
pub const _PC_PIPE_BUF: c_int = 5;
pub const _PC_CHOWN_RESTRICTED: c_int = 6;
pub const _PC_NO_TRUNC: c_int = 7;
pub const _PC_VDISABLE: c_int = 8;
pub const _PC_SYNC_IO: c_int = 9;
pub const _PC_ASYNC_IO: c_int = 10;
pub const _PC_PRIO_IO: c_int = 11;
pub const _PC_SOCK_MAXBUF: c_int = 12;
pub const _PC_FILESIZEBITS: c_int = 13;
pub const _PC_REC_INCR_XFER_SIZE: c_int = 14;
pub const _PC_REC_MAX_XFER_SIZE: c_int = 15;
pub const _PC_REC_MIN_XFER_SIZE: c_int = 16;
pub const _PC_REC_XFER_ALIGN: c_int = 17;
pub const _PC_ALLOC_SIZE_MIN: c_int = 18;
pub const _PC_SYMLINK_MAX: c_int = 19;
pub const _PC_2_SYMLINKS: c_int = 20;
const enum_unnamed_5 = c_uint;
pub const _SC_ARG_MAX: c_int = 0;
pub const _SC_CHILD_MAX: c_int = 1;
pub const _SC_CLK_TCK: c_int = 2;
pub const _SC_NGROUPS_MAX: c_int = 3;
pub const _SC_OPEN_MAX: c_int = 4;
pub const _SC_STREAM_MAX: c_int = 5;
pub const _SC_TZNAME_MAX: c_int = 6;
pub const _SC_JOB_CONTROL: c_int = 7;
pub const _SC_SAVED_IDS: c_int = 8;
pub const _SC_REALTIME_SIGNALS: c_int = 9;
pub const _SC_PRIORITY_SCHEDULING: c_int = 10;
pub const _SC_TIMERS: c_int = 11;
pub const _SC_ASYNCHRONOUS_IO: c_int = 12;
pub const _SC_PRIORITIZED_IO: c_int = 13;
pub const _SC_SYNCHRONIZED_IO: c_int = 14;
pub const _SC_FSYNC: c_int = 15;
pub const _SC_MAPPED_FILES: c_int = 16;
pub const _SC_MEMLOCK: c_int = 17;
pub const _SC_MEMLOCK_RANGE: c_int = 18;
pub const _SC_MEMORY_PROTECTION: c_int = 19;
pub const _SC_MESSAGE_PASSING: c_int = 20;
pub const _SC_SEMAPHORES: c_int = 21;
pub const _SC_SHARED_MEMORY_OBJECTS: c_int = 22;
pub const _SC_AIO_LISTIO_MAX: c_int = 23;
pub const _SC_AIO_MAX: c_int = 24;
pub const _SC_AIO_PRIO_DELTA_MAX: c_int = 25;
pub const _SC_DELAYTIMER_MAX: c_int = 26;
pub const _SC_MQ_OPEN_MAX: c_int = 27;
pub const _SC_MQ_PRIO_MAX: c_int = 28;
pub const _SC_VERSION: c_int = 29;
pub const _SC_PAGESIZE: c_int = 30;
pub const _SC_RTSIG_MAX: c_int = 31;
pub const _SC_SEM_NSEMS_MAX: c_int = 32;
pub const _SC_SEM_VALUE_MAX: c_int = 33;
pub const _SC_SIGQUEUE_MAX: c_int = 34;
pub const _SC_TIMER_MAX: c_int = 35;
pub const _SC_BC_BASE_MAX: c_int = 36;
pub const _SC_BC_DIM_MAX: c_int = 37;
pub const _SC_BC_SCALE_MAX: c_int = 38;
pub const _SC_BC_STRING_MAX: c_int = 39;
pub const _SC_COLL_WEIGHTS_MAX: c_int = 40;
pub const _SC_EQUIV_CLASS_MAX: c_int = 41;
pub const _SC_EXPR_NEST_MAX: c_int = 42;
pub const _SC_LINE_MAX: c_int = 43;
pub const _SC_RE_DUP_MAX: c_int = 44;
pub const _SC_CHARCLASS_NAME_MAX: c_int = 45;
pub const _SC_2_VERSION: c_int = 46;
pub const _SC_2_C_BIND: c_int = 47;
pub const _SC_2_C_DEV: c_int = 48;
pub const _SC_2_FORT_DEV: c_int = 49;
pub const _SC_2_FORT_RUN: c_int = 50;
pub const _SC_2_SW_DEV: c_int = 51;
pub const _SC_2_LOCALEDEF: c_int = 52;
pub const _SC_PII: c_int = 53;
pub const _SC_PII_XTI: c_int = 54;
pub const _SC_PII_SOCKET: c_int = 55;
pub const _SC_PII_INTERNET: c_int = 56;
pub const _SC_PII_OSI: c_int = 57;
pub const _SC_POLL: c_int = 58;
pub const _SC_SELECT: c_int = 59;
pub const _SC_UIO_MAXIOV: c_int = 60;
pub const _SC_IOV_MAX: c_int = 60;
pub const _SC_PII_INTERNET_STREAM: c_int = 61;
pub const _SC_PII_INTERNET_DGRAM: c_int = 62;
pub const _SC_PII_OSI_COTS: c_int = 63;
pub const _SC_PII_OSI_CLTS: c_int = 64;
pub const _SC_PII_OSI_M: c_int = 65;
pub const _SC_T_IOV_MAX: c_int = 66;
pub const _SC_THREADS: c_int = 67;
pub const _SC_THREAD_SAFE_FUNCTIONS: c_int = 68;
pub const _SC_GETGR_R_SIZE_MAX: c_int = 69;
pub const _SC_GETPW_R_SIZE_MAX: c_int = 70;
pub const _SC_LOGIN_NAME_MAX: c_int = 71;
pub const _SC_TTY_NAME_MAX: c_int = 72;
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS: c_int = 73;
pub const _SC_THREAD_KEYS_MAX: c_int = 74;
pub const _SC_THREAD_STACK_MIN: c_int = 75;
pub const _SC_THREAD_THREADS_MAX: c_int = 76;
pub const _SC_THREAD_ATTR_STACKADDR: c_int = 77;
pub const _SC_THREAD_ATTR_STACKSIZE: c_int = 78;
pub const _SC_THREAD_PRIORITY_SCHEDULING: c_int = 79;
pub const _SC_THREAD_PRIO_INHERIT: c_int = 80;
pub const _SC_THREAD_PRIO_PROTECT: c_int = 81;
pub const _SC_THREAD_PROCESS_SHARED: c_int = 82;
pub const _SC_NPROCESSORS_CONF: c_int = 83;
pub const _SC_NPROCESSORS_ONLN: c_int = 84;
pub const _SC_PHYS_PAGES: c_int = 85;
pub const _SC_AVPHYS_PAGES: c_int = 86;
pub const _SC_ATEXIT_MAX: c_int = 87;
pub const _SC_PASS_MAX: c_int = 88;
pub const _SC_XOPEN_VERSION: c_int = 89;
pub const _SC_XOPEN_XCU_VERSION: c_int = 90;
pub const _SC_XOPEN_UNIX: c_int = 91;
pub const _SC_XOPEN_CRYPT: c_int = 92;
pub const _SC_XOPEN_ENH_I18N: c_int = 93;
pub const _SC_XOPEN_SHM: c_int = 94;
pub const _SC_2_CHAR_TERM: c_int = 95;
pub const _SC_2_C_VERSION: c_int = 96;
pub const _SC_2_UPE: c_int = 97;
pub const _SC_XOPEN_XPG2: c_int = 98;
pub const _SC_XOPEN_XPG3: c_int = 99;
pub const _SC_XOPEN_XPG4: c_int = 100;
pub const _SC_CHAR_BIT: c_int = 101;
pub const _SC_CHAR_MAX: c_int = 102;
pub const _SC_CHAR_MIN: c_int = 103;
pub const _SC_INT_MAX: c_int = 104;
pub const _SC_INT_MIN: c_int = 105;
pub const _SC_LONG_BIT: c_int = 106;
pub const _SC_WORD_BIT: c_int = 107;
pub const _SC_MB_LEN_MAX: c_int = 108;
pub const _SC_NZERO: c_int = 109;
pub const _SC_SSIZE_MAX: c_int = 110;
pub const _SC_SCHAR_MAX: c_int = 111;
pub const _SC_SCHAR_MIN: c_int = 112;
pub const _SC_SHRT_MAX: c_int = 113;
pub const _SC_SHRT_MIN: c_int = 114;
pub const _SC_UCHAR_MAX: c_int = 115;
pub const _SC_UINT_MAX: c_int = 116;
pub const _SC_ULONG_MAX: c_int = 117;
pub const _SC_USHRT_MAX: c_int = 118;
pub const _SC_NL_ARGMAX: c_int = 119;
pub const _SC_NL_LANGMAX: c_int = 120;
pub const _SC_NL_MSGMAX: c_int = 121;
pub const _SC_NL_NMAX: c_int = 122;
pub const _SC_NL_SETMAX: c_int = 123;
pub const _SC_NL_TEXTMAX: c_int = 124;
pub const _SC_XBS5_ILP32_OFF32: c_int = 125;
pub const _SC_XBS5_ILP32_OFFBIG: c_int = 126;
pub const _SC_XBS5_LP64_OFF64: c_int = 127;
pub const _SC_XBS5_LPBIG_OFFBIG: c_int = 128;
pub const _SC_XOPEN_LEGACY: c_int = 129;
pub const _SC_XOPEN_REALTIME: c_int = 130;
pub const _SC_XOPEN_REALTIME_THREADS: c_int = 131;
pub const _SC_ADVISORY_INFO: c_int = 132;
pub const _SC_BARRIERS: c_int = 133;
pub const _SC_BASE: c_int = 134;
pub const _SC_C_LANG_SUPPORT: c_int = 135;
pub const _SC_C_LANG_SUPPORT_R: c_int = 136;
pub const _SC_CLOCK_SELECTION: c_int = 137;
pub const _SC_CPUTIME: c_int = 138;
pub const _SC_THREAD_CPUTIME: c_int = 139;
pub const _SC_DEVICE_IO: c_int = 140;
pub const _SC_DEVICE_SPECIFIC: c_int = 141;
pub const _SC_DEVICE_SPECIFIC_R: c_int = 142;
pub const _SC_FD_MGMT: c_int = 143;
pub const _SC_FIFO: c_int = 144;
pub const _SC_PIPE: c_int = 145;
pub const _SC_FILE_ATTRIBUTES: c_int = 146;
pub const _SC_FILE_LOCKING: c_int = 147;
pub const _SC_FILE_SYSTEM: c_int = 148;
pub const _SC_MONOTONIC_CLOCK: c_int = 149;
pub const _SC_MULTI_PROCESS: c_int = 150;
pub const _SC_SINGLE_PROCESS: c_int = 151;
pub const _SC_NETWORKING: c_int = 152;
pub const _SC_READER_WRITER_LOCKS: c_int = 153;
pub const _SC_SPIN_LOCKS: c_int = 154;
pub const _SC_REGEXP: c_int = 155;
pub const _SC_REGEX_VERSION: c_int = 156;
pub const _SC_SHELL: c_int = 157;
pub const _SC_SIGNALS: c_int = 158;
pub const _SC_SPAWN: c_int = 159;
pub const _SC_SPORADIC_SERVER: c_int = 160;
pub const _SC_THREAD_SPORADIC_SERVER: c_int = 161;
pub const _SC_SYSTEM_DATABASE: c_int = 162;
pub const _SC_SYSTEM_DATABASE_R: c_int = 163;
pub const _SC_TIMEOUTS: c_int = 164;
pub const _SC_TYPED_MEMORY_OBJECTS: c_int = 165;
pub const _SC_USER_GROUPS: c_int = 166;
pub const _SC_USER_GROUPS_R: c_int = 167;
pub const _SC_2_PBS: c_int = 168;
pub const _SC_2_PBS_ACCOUNTING: c_int = 169;
pub const _SC_2_PBS_LOCATE: c_int = 170;
pub const _SC_2_PBS_MESSAGE: c_int = 171;
pub const _SC_2_PBS_TRACK: c_int = 172;
pub const _SC_SYMLOOP_MAX: c_int = 173;
pub const _SC_STREAMS: c_int = 174;
pub const _SC_2_PBS_CHECKPOINT: c_int = 175;
pub const _SC_V6_ILP32_OFF32: c_int = 176;
pub const _SC_V6_ILP32_OFFBIG: c_int = 177;
pub const _SC_V6_LP64_OFF64: c_int = 178;
pub const _SC_V6_LPBIG_OFFBIG: c_int = 179;
pub const _SC_HOST_NAME_MAX: c_int = 180;
pub const _SC_TRACE: c_int = 181;
pub const _SC_TRACE_EVENT_FILTER: c_int = 182;
pub const _SC_TRACE_INHERIT: c_int = 183;
pub const _SC_TRACE_LOG: c_int = 184;
pub const _SC_LEVEL1_ICACHE_SIZE: c_int = 185;
pub const _SC_LEVEL1_ICACHE_ASSOC: c_int = 186;
pub const _SC_LEVEL1_ICACHE_LINESIZE: c_int = 187;
pub const _SC_LEVEL1_DCACHE_SIZE: c_int = 188;
pub const _SC_LEVEL1_DCACHE_ASSOC: c_int = 189;
pub const _SC_LEVEL1_DCACHE_LINESIZE: c_int = 190;
pub const _SC_LEVEL2_CACHE_SIZE: c_int = 191;
pub const _SC_LEVEL2_CACHE_ASSOC: c_int = 192;
pub const _SC_LEVEL2_CACHE_LINESIZE: c_int = 193;
pub const _SC_LEVEL3_CACHE_SIZE: c_int = 194;
pub const _SC_LEVEL3_CACHE_ASSOC: c_int = 195;
pub const _SC_LEVEL3_CACHE_LINESIZE: c_int = 196;
pub const _SC_LEVEL4_CACHE_SIZE: c_int = 197;
pub const _SC_LEVEL4_CACHE_ASSOC: c_int = 198;
pub const _SC_LEVEL4_CACHE_LINESIZE: c_int = 199;
pub const _SC_IPV6: c_int = 235;
pub const _SC_RAW_SOCKETS: c_int = 236;
pub const _SC_V7_ILP32_OFF32: c_int = 237;
pub const _SC_V7_ILP32_OFFBIG: c_int = 238;
pub const _SC_V7_LP64_OFF64: c_int = 239;
pub const _SC_V7_LPBIG_OFFBIG: c_int = 240;
pub const _SC_SS_REPL_MAX: c_int = 241;
pub const _SC_TRACE_EVENT_NAME_MAX: c_int = 242;
pub const _SC_TRACE_NAME_MAX: c_int = 243;
pub const _SC_TRACE_SYS_MAX: c_int = 244;
pub const _SC_TRACE_USER_EVENT_MAX: c_int = 245;
pub const _SC_XOPEN_STREAMS: c_int = 246;
pub const _SC_THREAD_ROBUST_PRIO_INHERIT: c_int = 247;
pub const _SC_THREAD_ROBUST_PRIO_PROTECT: c_int = 248;
pub const _SC_MINSIGSTKSZ: c_int = 249;
pub const _SC_SIGSTKSZ: c_int = 250;
const enum_unnamed_6 = c_uint;
pub const _CS_PATH: c_int = 0;
pub const _CS_V6_WIDTH_RESTRICTED_ENVS: c_int = 1;
pub const _CS_GNU_LIBC_VERSION: c_int = 2;
pub const _CS_GNU_LIBPTHREAD_VERSION: c_int = 3;
pub const _CS_V5_WIDTH_RESTRICTED_ENVS: c_int = 4;
pub const _CS_V7_WIDTH_RESTRICTED_ENVS: c_int = 5;
pub const _CS_LFS_CFLAGS: c_int = 1000;
pub const _CS_LFS_LDFLAGS: c_int = 1001;
pub const _CS_LFS_LIBS: c_int = 1002;
pub const _CS_LFS_LINTFLAGS: c_int = 1003;
pub const _CS_LFS64_CFLAGS: c_int = 1004;
pub const _CS_LFS64_LDFLAGS: c_int = 1005;
pub const _CS_LFS64_LIBS: c_int = 1006;
pub const _CS_LFS64_LINTFLAGS: c_int = 1007;
pub const _CS_XBS5_ILP32_OFF32_CFLAGS: c_int = 1100;
pub const _CS_XBS5_ILP32_OFF32_LDFLAGS: c_int = 1101;
pub const _CS_XBS5_ILP32_OFF32_LIBS: c_int = 1102;
pub const _CS_XBS5_ILP32_OFF32_LINTFLAGS: c_int = 1103;
pub const _CS_XBS5_ILP32_OFFBIG_CFLAGS: c_int = 1104;
pub const _CS_XBS5_ILP32_OFFBIG_LDFLAGS: c_int = 1105;
pub const _CS_XBS5_ILP32_OFFBIG_LIBS: c_int = 1106;
pub const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS: c_int = 1107;
pub const _CS_XBS5_LP64_OFF64_CFLAGS: c_int = 1108;
pub const _CS_XBS5_LP64_OFF64_LDFLAGS: c_int = 1109;
pub const _CS_XBS5_LP64_OFF64_LIBS: c_int = 1110;
pub const _CS_XBS5_LP64_OFF64_LINTFLAGS: c_int = 1111;
pub const _CS_XBS5_LPBIG_OFFBIG_CFLAGS: c_int = 1112;
pub const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS: c_int = 1113;
pub const _CS_XBS5_LPBIG_OFFBIG_LIBS: c_int = 1114;
pub const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS: c_int = 1115;
pub const _CS_POSIX_V6_ILP32_OFF32_CFLAGS: c_int = 1116;
pub const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS: c_int = 1117;
pub const _CS_POSIX_V6_ILP32_OFF32_LIBS: c_int = 1118;
pub const _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS: c_int = 1119;
pub const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS: c_int = 1120;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS: c_int = 1121;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LIBS: c_int = 1122;
pub const _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS: c_int = 1123;
pub const _CS_POSIX_V6_LP64_OFF64_CFLAGS: c_int = 1124;
pub const _CS_POSIX_V6_LP64_OFF64_LDFLAGS: c_int = 1125;
pub const _CS_POSIX_V6_LP64_OFF64_LIBS: c_int = 1126;
pub const _CS_POSIX_V6_LP64_OFF64_LINTFLAGS: c_int = 1127;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS: c_int = 1128;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS: c_int = 1129;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS: c_int = 1130;
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS: c_int = 1131;
pub const _CS_POSIX_V7_ILP32_OFF32_CFLAGS: c_int = 1132;
pub const _CS_POSIX_V7_ILP32_OFF32_LDFLAGS: c_int = 1133;
pub const _CS_POSIX_V7_ILP32_OFF32_LIBS: c_int = 1134;
pub const _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS: c_int = 1135;
pub const _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS: c_int = 1136;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS: c_int = 1137;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LIBS: c_int = 1138;
pub const _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS: c_int = 1139;
pub const _CS_POSIX_V7_LP64_OFF64_CFLAGS: c_int = 1140;
pub const _CS_POSIX_V7_LP64_OFF64_LDFLAGS: c_int = 1141;
pub const _CS_POSIX_V7_LP64_OFF64_LIBS: c_int = 1142;
pub const _CS_POSIX_V7_LP64_OFF64_LINTFLAGS: c_int = 1143;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS: c_int = 1144;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS: c_int = 1145;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LIBS: c_int = 1146;
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS: c_int = 1147;
pub const _CS_V6_ENV: c_int = 1148;
pub const _CS_V7_ENV: c_int = 1149;
const enum_unnamed_7 = c_uint;
pub extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
pub extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
pub extern fn sysconf(__name: c_int) c_long;
pub extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
pub extern fn getpid() __pid_t;
pub extern fn getppid() __pid_t;
pub extern fn getpgrp() __pid_t;
pub extern fn __getpgid(__pid: __pid_t) __pid_t;
pub extern fn getpgid(__pid: __pid_t) __pid_t;
pub extern fn setpgid(__pid: __pid_t, __pgid: __pid_t) c_int;
pub extern fn setpgrp() c_int;
pub extern fn setsid() __pid_t;
pub extern fn getsid(__pid: __pid_t) __pid_t;
pub extern fn getuid() __uid_t;
pub extern fn geteuid() __uid_t;
pub extern fn getgid() __gid_t;
pub extern fn getegid() __gid_t;
pub extern fn getgroups(__size: c_int, __list: [*c]__gid_t) c_int;
pub extern fn setuid(__uid: __uid_t) c_int;
pub extern fn setreuid(__ruid: __uid_t, __euid: __uid_t) c_int;
pub extern fn seteuid(__uid: __uid_t) c_int;
pub extern fn setgid(__gid: __gid_t) c_int;
pub extern fn setregid(__rgid: __gid_t, __egid: __gid_t) c_int;
pub extern fn setegid(__gid: __gid_t) c_int;
pub extern fn fork() __pid_t;
pub extern fn vfork() c_int;
pub extern fn ttyname(__fd: c_int) [*c]u8;
pub extern fn ttyname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn isatty(__fd: c_int) c_int;
pub extern fn ttyslot() c_int;
pub extern fn link(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn linkat(__fromfd: c_int, __from: [*c]const u8, __tofd: c_int, __to: [*c]const u8, __flags: c_int) c_int;
pub extern fn symlink(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn symlinkat(__from: [*c]const u8, __tofd: c_int, __to: [*c]const u8) c_int;
pub extern fn readlinkat(__fd: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn unlink(__name: [*c]const u8) c_int;
pub extern fn unlinkat(__fd: c_int, __name: [*c]const u8, __flag: c_int) c_int;
pub extern fn rmdir(__path: [*c]const u8) c_int;
pub extern fn tcgetpgrp(__fd: c_int) __pid_t;
pub extern fn tcsetpgrp(__fd: c_int, __pgrp_id: __pid_t) c_int;
pub extern fn getlogin() [*c]u8;
pub extern fn getlogin_r(__name: [*c]u8, __name_len: usize) c_int;
pub extern fn setlogin(__name: [*c]const u8) c_int;
pub extern var optarg: [*c]u8;
pub extern var optind: c_int;
pub extern var opterr: c_int;
pub extern var optopt: c_int;
pub extern fn getopt(___argc: c_int, ___argv: [*c]const [*c]u8, __shortopts: [*c]const u8) c_int;
pub extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
pub extern fn sethostname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn sethostid(__id: c_long) c_int;
pub extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
pub extern fn setdomainname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn vhangup() c_int;
pub extern fn revoke(__file: [*c]const u8) c_int;
pub extern fn profil(__sample_buffer: [*c]c_ushort, __size: usize, __offset: usize, __scale: c_uint) c_int;
pub extern fn acct(__name: [*c]const u8) c_int;
pub extern fn getusershell() [*c]u8;
pub extern fn endusershell() void;
pub extern fn setusershell() void;
pub extern fn daemon(__nochdir: c_int, __noclose: c_int) c_int;
pub extern fn chroot(__path: [*c]const u8) c_int;
pub extern fn getpass(__prompt: [*c]const u8) [*c]u8;
pub extern fn fsync(__fd: c_int) c_int;
pub extern fn gethostid() c_long;
pub extern fn sync() void;
pub extern fn getpagesize() c_int;
pub extern fn getdtablesize() c_int;
pub extern fn truncate(__file: [*c]const u8, __length: __off_t) c_int;
pub extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;
pub extern fn brk(__addr: ?*anyopaque) c_int;
pub extern fn sbrk(__delta: isize) ?*anyopaque;
pub extern fn syscall(__sysno: c_long, ...) c_long;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: __off_t) c_int;
pub extern fn fdatasync(__fildes: c_int) c_int;
pub extern fn crypt(__key: [*c]const u8, __salt: [*c]const u8) [*c]u8;
pub extern fn getentropy(__buffer: ?*anyopaque, __length: usize) c_int;
pub const struct_flock = extern struct {
    l_type: c_short = @import("std").mem.zeroes(c_short),
    l_whence: c_short = @import("std").mem.zeroes(c_short),
    l_start: __off_t = @import("std").mem.zeroes(__off_t),
    l_len: __off_t = @import("std").mem.zeroes(__off_t),
    l_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
};
pub const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};
pub extern fn fcntl(__fd: c_int, __cmd: c_int, ...) c_int;
pub extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;
pub extern fn openat(__fd: c_int, __file: [*c]const u8, __oflag: c_int, ...) c_int;
pub extern fn creat(__file: [*c]const u8, __mode: mode_t) c_int;
pub extern fn posix_fadvise(__fd: c_int, __offset: off_t, __len: off_t, __advise: c_int) c_int;
pub extern fn posix_fallocate(__fd: c_int, __offset: off_t, __len: off_t) c_int;
pub extern fn mmap(__addr: ?*anyopaque, __len: usize, __prot: c_int, __flags: c_int, __fd: c_int, __offset: __off_t) ?*anyopaque;
pub extern fn munmap(__addr: ?*anyopaque, __len: usize) c_int;
pub extern fn mprotect(__addr: ?*anyopaque, __len: usize, __prot: c_int) c_int;
pub extern fn msync(__addr: ?*anyopaque, __len: usize, __flags: c_int) c_int;
pub extern fn madvise(__addr: ?*anyopaque, __len: usize, __advice: c_int) c_int;
pub extern fn posix_madvise(__addr: ?*anyopaque, __len: usize, __advice: c_int) c_int;
pub extern fn mlock(__addr: ?*const anyopaque, __len: usize) c_int;
pub extern fn munlock(__addr: ?*const anyopaque, __len: usize) c_int;
pub extern fn mlockall(__flags: c_int) c_int;
pub extern fn munlockall() c_int;
pub extern fn mincore(__start: ?*anyopaque, __len: usize, __vec: [*c]u8) c_int;
pub extern fn shm_open(__name: [*c]const u8, __oflag: c_int, __mode: mode_t) c_int;
pub extern fn shm_unlink(__name: [*c]const u8) c_int;
pub const XID = c_ulong;
pub const Mask = c_ulong;
pub const Atom = c_ulong;
pub const VisualID = c_ulong;
pub const Time = c_ulong;
pub const Window = XID;
pub const Drawable = XID;
pub const Font = XID;
pub const Pixmap = XID;
pub const Cursor = XID;
pub const Colormap = XID;
pub const GContext = XID;
pub const KeySym = XID;
pub const KeyCode = u8;
pub const ptrdiff_t = c_long;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub extern fn _Xmblen(str: [*c]u8, len: c_int) c_int;
pub const XPointer = [*c]u8;
pub const struct__XExtData = extern struct {
    number: c_int = @import("std").mem.zeroes(c_int),
    next: [*c]struct__XExtData = @import("std").mem.zeroes([*c]struct__XExtData),
    free_private: ?*const fn ([*c]struct__XExtData) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__XExtData) callconv(.C) c_int),
    private_data: XPointer = @import("std").mem.zeroes(XPointer),
};
pub const XExtData = struct__XExtData;
pub const XExtCodes = extern struct {
    extension: c_int = @import("std").mem.zeroes(c_int),
    major_opcode: c_int = @import("std").mem.zeroes(c_int),
    first_event: c_int = @import("std").mem.zeroes(c_int),
    first_error: c_int = @import("std").mem.zeroes(c_int),
};
pub const XPixmapFormatValues = extern struct {
    depth: c_int = @import("std").mem.zeroes(c_int),
    bits_per_pixel: c_int = @import("std").mem.zeroes(c_int),
    scanline_pad: c_int = @import("std").mem.zeroes(c_int),
};
pub const XGCValues = extern struct {
    function: c_int = @import("std").mem.zeroes(c_int),
    plane_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    foreground: c_ulong = @import("std").mem.zeroes(c_ulong),
    background: c_ulong = @import("std").mem.zeroes(c_ulong),
    line_width: c_int = @import("std").mem.zeroes(c_int),
    line_style: c_int = @import("std").mem.zeroes(c_int),
    cap_style: c_int = @import("std").mem.zeroes(c_int),
    join_style: c_int = @import("std").mem.zeroes(c_int),
    fill_style: c_int = @import("std").mem.zeroes(c_int),
    fill_rule: c_int = @import("std").mem.zeroes(c_int),
    arc_mode: c_int = @import("std").mem.zeroes(c_int),
    tile: Pixmap = @import("std").mem.zeroes(Pixmap),
    stipple: Pixmap = @import("std").mem.zeroes(Pixmap),
    ts_x_origin: c_int = @import("std").mem.zeroes(c_int),
    ts_y_origin: c_int = @import("std").mem.zeroes(c_int),
    font: Font = @import("std").mem.zeroes(Font),
    subwindow_mode: c_int = @import("std").mem.zeroes(c_int),
    graphics_exposures: c_int = @import("std").mem.zeroes(c_int),
    clip_x_origin: c_int = @import("std").mem.zeroes(c_int),
    clip_y_origin: c_int = @import("std").mem.zeroes(c_int),
    clip_mask: Pixmap = @import("std").mem.zeroes(Pixmap),
    dash_offset: c_int = @import("std").mem.zeroes(c_int),
    dashes: u8 = @import("std").mem.zeroes(u8),
};
pub const struct__XGC = opaque {};
pub const GC = ?*struct__XGC;
pub const Visual = extern struct {
    ext_data: [*c]XExtData = @import("std").mem.zeroes([*c]XExtData),
    visualid: VisualID = @import("std").mem.zeroes(VisualID),
    class: c_int = @import("std").mem.zeroes(c_int),
    red_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    green_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    blue_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    bits_per_rgb: c_int = @import("std").mem.zeroes(c_int),
    map_entries: c_int = @import("std").mem.zeroes(c_int),
};
pub const Depth = extern struct {
    depth: c_int = @import("std").mem.zeroes(c_int),
    nvisuals: c_int = @import("std").mem.zeroes(c_int),
    visuals: [*c]Visual = @import("std").mem.zeroes([*c]Visual),
};
pub const struct__XDisplay = opaque {};
pub const Screen = extern struct {
    ext_data: [*c]XExtData = @import("std").mem.zeroes([*c]XExtData),
    display: ?*struct__XDisplay = @import("std").mem.zeroes(?*struct__XDisplay),
    root: Window = @import("std").mem.zeroes(Window),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    mwidth: c_int = @import("std").mem.zeroes(c_int),
    mheight: c_int = @import("std").mem.zeroes(c_int),
    ndepths: c_int = @import("std").mem.zeroes(c_int),
    depths: [*c]Depth = @import("std").mem.zeroes([*c]Depth),
    root_depth: c_int = @import("std").mem.zeroes(c_int),
    root_visual: [*c]Visual = @import("std").mem.zeroes([*c]Visual),
    default_gc: GC = @import("std").mem.zeroes(GC),
    cmap: Colormap = @import("std").mem.zeroes(Colormap),
    white_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    black_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    max_maps: c_int = @import("std").mem.zeroes(c_int),
    min_maps: c_int = @import("std").mem.zeroes(c_int),
    backing_store: c_int = @import("std").mem.zeroes(c_int),
    save_unders: c_int = @import("std").mem.zeroes(c_int),
    root_input_mask: c_long = @import("std").mem.zeroes(c_long),
};
pub const ScreenFormat = extern struct {
    ext_data: [*c]XExtData = @import("std").mem.zeroes([*c]XExtData),
    depth: c_int = @import("std").mem.zeroes(c_int),
    bits_per_pixel: c_int = @import("std").mem.zeroes(c_int),
    scanline_pad: c_int = @import("std").mem.zeroes(c_int),
};
pub const XSetWindowAttributes = extern struct {
    background_pixmap: Pixmap = @import("std").mem.zeroes(Pixmap),
    background_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    border_pixmap: Pixmap = @import("std").mem.zeroes(Pixmap),
    border_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    bit_gravity: c_int = @import("std").mem.zeroes(c_int),
    win_gravity: c_int = @import("std").mem.zeroes(c_int),
    backing_store: c_int = @import("std").mem.zeroes(c_int),
    backing_planes: c_ulong = @import("std").mem.zeroes(c_ulong),
    backing_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    save_under: c_int = @import("std").mem.zeroes(c_int),
    event_mask: c_long = @import("std").mem.zeroes(c_long),
    do_not_propagate_mask: c_long = @import("std").mem.zeroes(c_long),
    override_redirect: c_int = @import("std").mem.zeroes(c_int),
    colormap: Colormap = @import("std").mem.zeroes(Colormap),
    cursor: Cursor = @import("std").mem.zeroes(Cursor),
};
pub const XWindowAttributes = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    border_width: c_int = @import("std").mem.zeroes(c_int),
    depth: c_int = @import("std").mem.zeroes(c_int),
    visual: [*c]Visual = @import("std").mem.zeroes([*c]Visual),
    root: Window = @import("std").mem.zeroes(Window),
    class: c_int = @import("std").mem.zeroes(c_int),
    bit_gravity: c_int = @import("std").mem.zeroes(c_int),
    win_gravity: c_int = @import("std").mem.zeroes(c_int),
    backing_store: c_int = @import("std").mem.zeroes(c_int),
    backing_planes: c_ulong = @import("std").mem.zeroes(c_ulong),
    backing_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    save_under: c_int = @import("std").mem.zeroes(c_int),
    colormap: Colormap = @import("std").mem.zeroes(Colormap),
    map_installed: c_int = @import("std").mem.zeroes(c_int),
    map_state: c_int = @import("std").mem.zeroes(c_int),
    all_event_masks: c_long = @import("std").mem.zeroes(c_long),
    your_event_mask: c_long = @import("std").mem.zeroes(c_long),
    do_not_propagate_mask: c_long = @import("std").mem.zeroes(c_long),
    override_redirect: c_int = @import("std").mem.zeroes(c_int),
    screen: [*c]Screen = @import("std").mem.zeroes([*c]Screen),
};
pub const XHostAddress = extern struct {
    family: c_int = @import("std").mem.zeroes(c_int),
    length: c_int = @import("std").mem.zeroes(c_int),
    address: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const XServerInterpretedAddress = extern struct {
    typelength: c_int = @import("std").mem.zeroes(c_int),
    valuelength: c_int = @import("std").mem.zeroes(c_int),
    type: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    value: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const struct_funcs_8 = extern struct {
    create_image: ?*const fn (?*struct__XDisplay, [*c]Visual, c_uint, c_int, c_int, [*c]u8, c_uint, c_uint, c_int, c_int) callconv(.C) [*c]struct__XImage = @import("std").mem.zeroes(?*const fn (?*struct__XDisplay, [*c]Visual, c_uint, c_int, c_int, [*c]u8, c_uint, c_uint, c_int, c_int) callconv(.C) [*c]struct__XImage),
    destroy_image: ?*const fn ([*c]struct__XImage) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__XImage) callconv(.C) c_int),
    get_pixel: ?*const fn ([*c]struct__XImage, c_int, c_int) callconv(.C) c_ulong = @import("std").mem.zeroes(?*const fn ([*c]struct__XImage, c_int, c_int) callconv(.C) c_ulong),
    put_pixel: ?*const fn ([*c]struct__XImage, c_int, c_int, c_ulong) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__XImage, c_int, c_int, c_ulong) callconv(.C) c_int),
    sub_image: ?*const fn ([*c]struct__XImage, c_int, c_int, c_uint, c_uint) callconv(.C) [*c]struct__XImage = @import("std").mem.zeroes(?*const fn ([*c]struct__XImage, c_int, c_int, c_uint, c_uint) callconv(.C) [*c]struct__XImage),
    add_pixel: ?*const fn ([*c]struct__XImage, c_long) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn ([*c]struct__XImage, c_long) callconv(.C) c_int),
};
pub const struct__XImage = extern struct {
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    xoffset: c_int = @import("std").mem.zeroes(c_int),
    format: c_int = @import("std").mem.zeroes(c_int),
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    byte_order: c_int = @import("std").mem.zeroes(c_int),
    bitmap_unit: c_int = @import("std").mem.zeroes(c_int),
    bitmap_bit_order: c_int = @import("std").mem.zeroes(c_int),
    bitmap_pad: c_int = @import("std").mem.zeroes(c_int),
    depth: c_int = @import("std").mem.zeroes(c_int),
    bytes_per_line: c_int = @import("std").mem.zeroes(c_int),
    bits_per_pixel: c_int = @import("std").mem.zeroes(c_int),
    red_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    green_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    blue_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    obdata: XPointer = @import("std").mem.zeroes(XPointer),
    f: struct_funcs_8 = @import("std").mem.zeroes(struct_funcs_8),
};
pub const XImage = struct__XImage;
pub const XWindowChanges = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    border_width: c_int = @import("std").mem.zeroes(c_int),
    sibling: Window = @import("std").mem.zeroes(Window),
    stack_mode: c_int = @import("std").mem.zeroes(c_int),
};
pub const XColor = extern struct {
    pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    red: c_ushort = @import("std").mem.zeroes(c_ushort),
    green: c_ushort = @import("std").mem.zeroes(c_ushort),
    blue: c_ushort = @import("std").mem.zeroes(c_ushort),
    flags: u8 = @import("std").mem.zeroes(u8),
    pad: u8 = @import("std").mem.zeroes(u8),
};
pub const XSegment = extern struct {
    x1: c_short = @import("std").mem.zeroes(c_short),
    y1: c_short = @import("std").mem.zeroes(c_short),
    x2: c_short = @import("std").mem.zeroes(c_short),
    y2: c_short = @import("std").mem.zeroes(c_short),
};
pub const XPoint = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
};
pub const XRectangle = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
    width: c_ushort = @import("std").mem.zeroes(c_ushort),
    height: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XArc = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
    width: c_ushort = @import("std").mem.zeroes(c_ushort),
    height: c_ushort = @import("std").mem.zeroes(c_ushort),
    angle1: c_short = @import("std").mem.zeroes(c_short),
    angle2: c_short = @import("std").mem.zeroes(c_short),
};
pub const XKeyboardControl = extern struct {
    key_click_percent: c_int = @import("std").mem.zeroes(c_int),
    bell_percent: c_int = @import("std").mem.zeroes(c_int),
    bell_pitch: c_int = @import("std").mem.zeroes(c_int),
    bell_duration: c_int = @import("std").mem.zeroes(c_int),
    led: c_int = @import("std").mem.zeroes(c_int),
    led_mode: c_int = @import("std").mem.zeroes(c_int),
    key: c_int = @import("std").mem.zeroes(c_int),
    auto_repeat_mode: c_int = @import("std").mem.zeroes(c_int),
};
pub const XKeyboardState = extern struct {
    key_click_percent: c_int = @import("std").mem.zeroes(c_int),
    bell_percent: c_int = @import("std").mem.zeroes(c_int),
    bell_pitch: c_uint = @import("std").mem.zeroes(c_uint),
    bell_duration: c_uint = @import("std").mem.zeroes(c_uint),
    led_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    global_auto_repeat: c_int = @import("std").mem.zeroes(c_int),
    auto_repeats: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const XTimeCoord = extern struct {
    time: Time = @import("std").mem.zeroes(Time),
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
};
pub const XModifierKeymap = extern struct {
    max_keypermod: c_int = @import("std").mem.zeroes(c_int),
    modifiermap: [*c]KeyCode = @import("std").mem.zeroes([*c]KeyCode),
};
pub const Display = struct__XDisplay;
pub const struct__XPrivate = opaque {};
pub const struct__XrmHashBucketRec = opaque {};
const struct_unnamed_9 = extern struct {
    ext_data: [*c]XExtData = @import("std").mem.zeroes([*c]XExtData),
    private1: ?*struct__XPrivate = @import("std").mem.zeroes(?*struct__XPrivate),
    fd: c_int = @import("std").mem.zeroes(c_int),
    private2: c_int = @import("std").mem.zeroes(c_int),
    proto_major_version: c_int = @import("std").mem.zeroes(c_int),
    proto_minor_version: c_int = @import("std").mem.zeroes(c_int),
    vendor: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    private3: XID = @import("std").mem.zeroes(XID),
    private4: XID = @import("std").mem.zeroes(XID),
    private5: XID = @import("std").mem.zeroes(XID),
    private6: c_int = @import("std").mem.zeroes(c_int),
    resource_alloc: ?*const fn (?*struct__XDisplay) callconv(.C) XID = @import("std").mem.zeroes(?*const fn (?*struct__XDisplay) callconv(.C) XID),
    byte_order: c_int = @import("std").mem.zeroes(c_int),
    bitmap_unit: c_int = @import("std").mem.zeroes(c_int),
    bitmap_pad: c_int = @import("std").mem.zeroes(c_int),
    bitmap_bit_order: c_int = @import("std").mem.zeroes(c_int),
    nformats: c_int = @import("std").mem.zeroes(c_int),
    pixmap_format: [*c]ScreenFormat = @import("std").mem.zeroes([*c]ScreenFormat),
    private8: c_int = @import("std").mem.zeroes(c_int),
    release: c_int = @import("std").mem.zeroes(c_int),
    private9: ?*struct__XPrivate = @import("std").mem.zeroes(?*struct__XPrivate),
    private10: ?*struct__XPrivate = @import("std").mem.zeroes(?*struct__XPrivate),
    qlen: c_int = @import("std").mem.zeroes(c_int),
    last_request_read: c_ulong = @import("std").mem.zeroes(c_ulong),
    request: c_ulong = @import("std").mem.zeroes(c_ulong),
    private11: XPointer = @import("std").mem.zeroes(XPointer),
    private12: XPointer = @import("std").mem.zeroes(XPointer),
    private13: XPointer = @import("std").mem.zeroes(XPointer),
    private14: XPointer = @import("std").mem.zeroes(XPointer),
    max_request_size: c_uint = @import("std").mem.zeroes(c_uint),
    db: ?*struct__XrmHashBucketRec = @import("std").mem.zeroes(?*struct__XrmHashBucketRec),
    private15: ?*const fn (?*struct__XDisplay) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (?*struct__XDisplay) callconv(.C) c_int),
    display_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    default_screen: c_int = @import("std").mem.zeroes(c_int),
    nscreens: c_int = @import("std").mem.zeroes(c_int),
    screens: [*c]Screen = @import("std").mem.zeroes([*c]Screen),
    motion_buffer: c_ulong = @import("std").mem.zeroes(c_ulong),
    private16: c_ulong = @import("std").mem.zeroes(c_ulong),
    min_keycode: c_int = @import("std").mem.zeroes(c_int),
    max_keycode: c_int = @import("std").mem.zeroes(c_int),
    private17: XPointer = @import("std").mem.zeroes(XPointer),
    private18: XPointer = @import("std").mem.zeroes(XPointer),
    private19: c_int = @import("std").mem.zeroes(c_int),
    xdefaults: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const _XPrivDisplay = [*c]struct_unnamed_9;
pub const XKeyEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    root: Window = @import("std").mem.zeroes(Window),
    subwindow: Window = @import("std").mem.zeroes(Window),
    time: Time = @import("std").mem.zeroes(Time),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    x_root: c_int = @import("std").mem.zeroes(c_int),
    y_root: c_int = @import("std").mem.zeroes(c_int),
    state: c_uint = @import("std").mem.zeroes(c_uint),
    keycode: c_uint = @import("std").mem.zeroes(c_uint),
    same_screen: c_int = @import("std").mem.zeroes(c_int),
};
pub const XKeyPressedEvent = XKeyEvent;
pub const XKeyReleasedEvent = XKeyEvent;
pub const XButtonEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    root: Window = @import("std").mem.zeroes(Window),
    subwindow: Window = @import("std").mem.zeroes(Window),
    time: Time = @import("std").mem.zeroes(Time),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    x_root: c_int = @import("std").mem.zeroes(c_int),
    y_root: c_int = @import("std").mem.zeroes(c_int),
    state: c_uint = @import("std").mem.zeroes(c_uint),
    button: c_uint = @import("std").mem.zeroes(c_uint),
    same_screen: c_int = @import("std").mem.zeroes(c_int),
};
pub const XButtonPressedEvent = XButtonEvent;
pub const XButtonReleasedEvent = XButtonEvent;
pub const XMotionEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    root: Window = @import("std").mem.zeroes(Window),
    subwindow: Window = @import("std").mem.zeroes(Window),
    time: Time = @import("std").mem.zeroes(Time),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    x_root: c_int = @import("std").mem.zeroes(c_int),
    y_root: c_int = @import("std").mem.zeroes(c_int),
    state: c_uint = @import("std").mem.zeroes(c_uint),
    is_hint: u8 = @import("std").mem.zeroes(u8),
    same_screen: c_int = @import("std").mem.zeroes(c_int),
};
pub const XPointerMovedEvent = XMotionEvent;
pub const XCrossingEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    root: Window = @import("std").mem.zeroes(Window),
    subwindow: Window = @import("std").mem.zeroes(Window),
    time: Time = @import("std").mem.zeroes(Time),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    x_root: c_int = @import("std").mem.zeroes(c_int),
    y_root: c_int = @import("std").mem.zeroes(c_int),
    mode: c_int = @import("std").mem.zeroes(c_int),
    detail: c_int = @import("std").mem.zeroes(c_int),
    same_screen: c_int = @import("std").mem.zeroes(c_int),
    focus: c_int = @import("std").mem.zeroes(c_int),
    state: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const XEnterWindowEvent = XCrossingEvent;
pub const XLeaveWindowEvent = XCrossingEvent;
pub const XFocusChangeEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    mode: c_int = @import("std").mem.zeroes(c_int),
    detail: c_int = @import("std").mem.zeroes(c_int),
};
pub const XFocusInEvent = XFocusChangeEvent;
pub const XFocusOutEvent = XFocusChangeEvent;
pub const XKeymapEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    key_vector: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const XExposeEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    count: c_int = @import("std").mem.zeroes(c_int),
};
pub const XGraphicsExposeEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    drawable: Drawable = @import("std").mem.zeroes(Drawable),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    count: c_int = @import("std").mem.zeroes(c_int),
    major_code: c_int = @import("std").mem.zeroes(c_int),
    minor_code: c_int = @import("std").mem.zeroes(c_int),
};
pub const XNoExposeEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    drawable: Drawable = @import("std").mem.zeroes(Drawable),
    major_code: c_int = @import("std").mem.zeroes(c_int),
    minor_code: c_int = @import("std").mem.zeroes(c_int),
};
pub const XVisibilityEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    state: c_int = @import("std").mem.zeroes(c_int),
};
pub const XCreateWindowEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    parent: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    border_width: c_int = @import("std").mem.zeroes(c_int),
    override_redirect: c_int = @import("std").mem.zeroes(c_int),
};
pub const XDestroyWindowEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
};
pub const XUnmapEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    from_configure: c_int = @import("std").mem.zeroes(c_int),
};
pub const XMapEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    override_redirect: c_int = @import("std").mem.zeroes(c_int),
};
pub const XMapRequestEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    parent: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
};
pub const XReparentEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    parent: Window = @import("std").mem.zeroes(Window),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    override_redirect: c_int = @import("std").mem.zeroes(c_int),
};
pub const XConfigureEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    border_width: c_int = @import("std").mem.zeroes(c_int),
    above: Window = @import("std").mem.zeroes(Window),
    override_redirect: c_int = @import("std").mem.zeroes(c_int),
};
pub const XGravityEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
};
pub const XResizeRequestEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
};
pub const XConfigureRequestEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    parent: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    border_width: c_int = @import("std").mem.zeroes(c_int),
    above: Window = @import("std").mem.zeroes(Window),
    detail: c_int = @import("std").mem.zeroes(c_int),
    value_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const XCirculateEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    event: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    place: c_int = @import("std").mem.zeroes(c_int),
};
pub const XCirculateRequestEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    parent: Window = @import("std").mem.zeroes(Window),
    window: Window = @import("std").mem.zeroes(Window),
    place: c_int = @import("std").mem.zeroes(c_int),
};
pub const XPropertyEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    atom: Atom = @import("std").mem.zeroes(Atom),
    time: Time = @import("std").mem.zeroes(Time),
    state: c_int = @import("std").mem.zeroes(c_int),
};
pub const XSelectionClearEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    selection: Atom = @import("std").mem.zeroes(Atom),
    time: Time = @import("std").mem.zeroes(Time),
};
pub const XSelectionRequestEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    owner: Window = @import("std").mem.zeroes(Window),
    requestor: Window = @import("std").mem.zeroes(Window),
    selection: Atom = @import("std").mem.zeroes(Atom),
    target: Atom = @import("std").mem.zeroes(Atom),
    property: Atom = @import("std").mem.zeroes(Atom),
    time: Time = @import("std").mem.zeroes(Time),
};
pub const XSelectionEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    requestor: Window = @import("std").mem.zeroes(Window),
    selection: Atom = @import("std").mem.zeroes(Atom),
    target: Atom = @import("std").mem.zeroes(Atom),
    property: Atom = @import("std").mem.zeroes(Atom),
    time: Time = @import("std").mem.zeroes(Time),
};
pub const XColormapEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    colormap: Colormap = @import("std").mem.zeroes(Colormap),
    new: c_int = @import("std").mem.zeroes(c_int),
    state: c_int = @import("std").mem.zeroes(c_int),
};
const union_unnamed_10 = extern union {
    b: [20]u8,
    s: [10]c_short,
    l: [5]c_long,
};
pub const XClientMessageEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    message_type: Atom = @import("std").mem.zeroes(Atom),
    format: c_int = @import("std").mem.zeroes(c_int),
    data: union_unnamed_10 = @import("std").mem.zeroes(union_unnamed_10),
};
pub const XMappingEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
    request: c_int = @import("std").mem.zeroes(c_int),
    first_keycode: c_int = @import("std").mem.zeroes(c_int),
    count: c_int = @import("std").mem.zeroes(c_int),
};
pub const XErrorEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    resourceid: XID = @import("std").mem.zeroes(XID),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    error_code: u8 = @import("std").mem.zeroes(u8),
    request_code: u8 = @import("std").mem.zeroes(u8),
    minor_code: u8 = @import("std").mem.zeroes(u8),
};
pub const XAnyEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    window: Window = @import("std").mem.zeroes(Window),
};
pub const XGenericEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    extension: c_int = @import("std").mem.zeroes(c_int),
    evtype: c_int = @import("std").mem.zeroes(c_int),
};
pub const XGenericEventCookie = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    extension: c_int = @import("std").mem.zeroes(c_int),
    evtype: c_int = @import("std").mem.zeroes(c_int),
    cookie: c_uint = @import("std").mem.zeroes(c_uint),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const union__XEvent = extern union {
    type: c_int,
    xany: XAnyEvent,
    xkey: XKeyEvent,
    xbutton: XButtonEvent,
    xmotion: XMotionEvent,
    xcrossing: XCrossingEvent,
    xfocus: XFocusChangeEvent,
    xexpose: XExposeEvent,
    xgraphicsexpose: XGraphicsExposeEvent,
    xnoexpose: XNoExposeEvent,
    xvisibility: XVisibilityEvent,
    xcreatewindow: XCreateWindowEvent,
    xdestroywindow: XDestroyWindowEvent,
    xunmap: XUnmapEvent,
    xmap: XMapEvent,
    xmaprequest: XMapRequestEvent,
    xreparent: XReparentEvent,
    xconfigure: XConfigureEvent,
    xgravity: XGravityEvent,
    xresizerequest: XResizeRequestEvent,
    xconfigurerequest: XConfigureRequestEvent,
    xcirculate: XCirculateEvent,
    xcirculaterequest: XCirculateRequestEvent,
    xproperty: XPropertyEvent,
    xselectionclear: XSelectionClearEvent,
    xselectionrequest: XSelectionRequestEvent,
    xselection: XSelectionEvent,
    xcolormap: XColormapEvent,
    xclient: XClientMessageEvent,
    xmapping: XMappingEvent,
    xerror: XErrorEvent,
    xkeymap: XKeymapEvent,
    xgeneric: XGenericEvent,
    xcookie: XGenericEventCookie,
    pad: [24]c_long,
};
pub const XEvent = union__XEvent;
pub const XCharStruct = extern struct {
    lbearing: c_short = @import("std").mem.zeroes(c_short),
    rbearing: c_short = @import("std").mem.zeroes(c_short),
    width: c_short = @import("std").mem.zeroes(c_short),
    ascent: c_short = @import("std").mem.zeroes(c_short),
    descent: c_short = @import("std").mem.zeroes(c_short),
    attributes: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XFontProp = extern struct {
    name: Atom = @import("std").mem.zeroes(Atom),
    card32: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const XFontStruct = extern struct {
    ext_data: [*c]XExtData = @import("std").mem.zeroes([*c]XExtData),
    fid: Font = @import("std").mem.zeroes(Font),
    direction: c_uint = @import("std").mem.zeroes(c_uint),
    min_char_or_byte2: c_uint = @import("std").mem.zeroes(c_uint),
    max_char_or_byte2: c_uint = @import("std").mem.zeroes(c_uint),
    min_byte1: c_uint = @import("std").mem.zeroes(c_uint),
    max_byte1: c_uint = @import("std").mem.zeroes(c_uint),
    all_chars_exist: c_int = @import("std").mem.zeroes(c_int),
    default_char: c_uint = @import("std").mem.zeroes(c_uint),
    n_properties: c_int = @import("std").mem.zeroes(c_int),
    properties: [*c]XFontProp = @import("std").mem.zeroes([*c]XFontProp),
    min_bounds: XCharStruct = @import("std").mem.zeroes(XCharStruct),
    max_bounds: XCharStruct = @import("std").mem.zeroes(XCharStruct),
    per_char: [*c]XCharStruct = @import("std").mem.zeroes([*c]XCharStruct),
    ascent: c_int = @import("std").mem.zeroes(c_int),
    descent: c_int = @import("std").mem.zeroes(c_int),
};
pub const XTextItem = extern struct {
    chars: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    nchars: c_int = @import("std").mem.zeroes(c_int),
    delta: c_int = @import("std").mem.zeroes(c_int),
    font: Font = @import("std").mem.zeroes(Font),
};
pub const XChar2b = extern struct {
    byte1: u8 = @import("std").mem.zeroes(u8),
    byte2: u8 = @import("std").mem.zeroes(u8),
};
pub const XTextItem16 = extern struct {
    chars: [*c]XChar2b = @import("std").mem.zeroes([*c]XChar2b),
    nchars: c_int = @import("std").mem.zeroes(c_int),
    delta: c_int = @import("std").mem.zeroes(c_int),
    font: Font = @import("std").mem.zeroes(Font),
};
pub const XEDataObject = extern union {
    display: ?*Display,
    gc: GC,
    visual: [*c]Visual,
    screen: [*c]Screen,
    pixmap_format: [*c]ScreenFormat,
    font: [*c]XFontStruct,
};
pub const XFontSetExtents = extern struct {
    max_ink_extent: XRectangle = @import("std").mem.zeroes(XRectangle),
    max_logical_extent: XRectangle = @import("std").mem.zeroes(XRectangle),
};
pub const struct__XOM = opaque {};
pub const XOM = ?*struct__XOM;
pub const struct__XOC = opaque {};
pub const XOC = ?*struct__XOC;
pub const XFontSet = ?*struct__XOC;
pub const XmbTextItem = extern struct {
    chars: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    nchars: c_int = @import("std").mem.zeroes(c_int),
    delta: c_int = @import("std").mem.zeroes(c_int),
    font_set: XFontSet = @import("std").mem.zeroes(XFontSet),
};
pub const XwcTextItem = extern struct {
    chars: [*c]wchar_t = @import("std").mem.zeroes([*c]wchar_t),
    nchars: c_int = @import("std").mem.zeroes(c_int),
    delta: c_int = @import("std").mem.zeroes(c_int),
    font_set: XFontSet = @import("std").mem.zeroes(XFontSet),
};
pub const XOMCharSetList = extern struct {
    charset_count: c_int = @import("std").mem.zeroes(c_int),
    charset_list: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub const XOMOrientation_LTR_TTB: c_int = 0;
pub const XOMOrientation_RTL_TTB: c_int = 1;
pub const XOMOrientation_TTB_LTR: c_int = 2;
pub const XOMOrientation_TTB_RTL: c_int = 3;
pub const XOMOrientation_Context: c_int = 4;
pub const XOrientation = c_uint;
pub const XOMOrientation = extern struct {
    num_orientation: c_int = @import("std").mem.zeroes(c_int),
    orientation: [*c]XOrientation = @import("std").mem.zeroes([*c]XOrientation),
};
pub const XOMFontInfo = extern struct {
    num_font: c_int = @import("std").mem.zeroes(c_int),
    font_struct_list: [*c][*c]XFontStruct = @import("std").mem.zeroes([*c][*c]XFontStruct),
    font_name_list: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub const struct__XIM = opaque {};
pub const XIM = ?*struct__XIM;
pub const struct__XIC = opaque {};
pub const XIC = ?*struct__XIC;
pub const XIMProc = ?*const fn (XIM, XPointer, XPointer) callconv(.C) void;
pub const XICProc = ?*const fn (XIC, XPointer, XPointer) callconv(.C) c_int;
pub const XIDProc = ?*const fn (?*Display, XPointer, XPointer) callconv(.C) void;
pub const XIMStyle = c_ulong;
pub const XIMStyles = extern struct {
    count_styles: c_ushort = @import("std").mem.zeroes(c_ushort),
    supported_styles: [*c]XIMStyle = @import("std").mem.zeroes([*c]XIMStyle),
};
pub const XVaNestedList = ?*anyopaque;
pub const XIMCallback = extern struct {
    client_data: XPointer = @import("std").mem.zeroes(XPointer),
    callback: XIMProc = @import("std").mem.zeroes(XIMProc),
};
pub const XICCallback = extern struct {
    client_data: XPointer = @import("std").mem.zeroes(XPointer),
    callback: XICProc = @import("std").mem.zeroes(XICProc),
};
pub const XIMFeedback = c_ulong;
const union_unnamed_11 = extern union {
    multi_byte: [*c]u8,
    wide_char: [*c]wchar_t,
};
pub const struct__XIMText = extern struct {
    length: c_ushort = @import("std").mem.zeroes(c_ushort),
    feedback: [*c]XIMFeedback = @import("std").mem.zeroes([*c]XIMFeedback),
    encoding_is_wchar: c_int = @import("std").mem.zeroes(c_int),
    string: union_unnamed_11 = @import("std").mem.zeroes(union_unnamed_11),
};
pub const XIMText = struct__XIMText;
pub const XIMPreeditState = c_ulong;
pub const struct__XIMPreeditStateNotifyCallbackStruct = extern struct {
    state: XIMPreeditState = @import("std").mem.zeroes(XIMPreeditState),
};
pub const XIMPreeditStateNotifyCallbackStruct = struct__XIMPreeditStateNotifyCallbackStruct;
pub const XIMResetState = c_ulong;
pub const XIMStringConversionFeedback = c_ulong;
const union_unnamed_12 = extern union {
    mbs: [*c]u8,
    wcs: [*c]wchar_t,
};
pub const struct__XIMStringConversionText = extern struct {
    length: c_ushort = @import("std").mem.zeroes(c_ushort),
    feedback: [*c]XIMStringConversionFeedback = @import("std").mem.zeroes([*c]XIMStringConversionFeedback),
    encoding_is_wchar: c_int = @import("std").mem.zeroes(c_int),
    string: union_unnamed_12 = @import("std").mem.zeroes(union_unnamed_12),
};
pub const XIMStringConversionText = struct__XIMStringConversionText;
pub const XIMStringConversionPosition = c_ushort;
pub const XIMStringConversionType = c_ushort;
pub const XIMStringConversionOperation = c_ushort;
pub const XIMForwardChar: c_int = 0;
pub const XIMBackwardChar: c_int = 1;
pub const XIMForwardWord: c_int = 2;
pub const XIMBackwardWord: c_int = 3;
pub const XIMCaretUp: c_int = 4;
pub const XIMCaretDown: c_int = 5;
pub const XIMNextLine: c_int = 6;
pub const XIMPreviousLine: c_int = 7;
pub const XIMLineStart: c_int = 8;
pub const XIMLineEnd: c_int = 9;
pub const XIMAbsolutePosition: c_int = 10;
pub const XIMDontChange: c_int = 11;
pub const XIMCaretDirection = c_uint;
pub const struct__XIMStringConversionCallbackStruct = extern struct {
    position: XIMStringConversionPosition = @import("std").mem.zeroes(XIMStringConversionPosition),
    direction: XIMCaretDirection = @import("std").mem.zeroes(XIMCaretDirection),
    operation: XIMStringConversionOperation = @import("std").mem.zeroes(XIMStringConversionOperation),
    factor: c_ushort = @import("std").mem.zeroes(c_ushort),
    text: [*c]XIMStringConversionText = @import("std").mem.zeroes([*c]XIMStringConversionText),
};
pub const XIMStringConversionCallbackStruct = struct__XIMStringConversionCallbackStruct;
pub const struct__XIMPreeditDrawCallbackStruct = extern struct {
    caret: c_int = @import("std").mem.zeroes(c_int),
    chg_first: c_int = @import("std").mem.zeroes(c_int),
    chg_length: c_int = @import("std").mem.zeroes(c_int),
    text: [*c]XIMText = @import("std").mem.zeroes([*c]XIMText),
};
pub const XIMPreeditDrawCallbackStruct = struct__XIMPreeditDrawCallbackStruct;
pub const XIMIsInvisible: c_int = 0;
pub const XIMIsPrimary: c_int = 1;
pub const XIMIsSecondary: c_int = 2;
pub const XIMCaretStyle = c_uint;
pub const struct__XIMPreeditCaretCallbackStruct = extern struct {
    position: c_int = @import("std").mem.zeroes(c_int),
    direction: XIMCaretDirection = @import("std").mem.zeroes(XIMCaretDirection),
    style: XIMCaretStyle = @import("std").mem.zeroes(XIMCaretStyle),
};
pub const XIMPreeditCaretCallbackStruct = struct__XIMPreeditCaretCallbackStruct;
pub const XIMTextType: c_int = 0;
pub const XIMBitmapType: c_int = 1;
pub const XIMStatusDataType = c_uint;
const union_unnamed_13 = extern union {
    text: [*c]XIMText,
    bitmap: Pixmap,
};
pub const struct__XIMStatusDrawCallbackStruct = extern struct {
    type: XIMStatusDataType = @import("std").mem.zeroes(XIMStatusDataType),
    data: union_unnamed_13 = @import("std").mem.zeroes(union_unnamed_13),
};
pub const XIMStatusDrawCallbackStruct = struct__XIMStatusDrawCallbackStruct;
pub const struct__XIMHotKeyTrigger = extern struct {
    keysym: KeySym = @import("std").mem.zeroes(KeySym),
    modifier: c_int = @import("std").mem.zeroes(c_int),
    modifier_mask: c_int = @import("std").mem.zeroes(c_int),
};
pub const XIMHotKeyTrigger = struct__XIMHotKeyTrigger;
pub const struct__XIMHotKeyTriggers = extern struct {
    num_hot_key: c_int = @import("std").mem.zeroes(c_int),
    key: [*c]XIMHotKeyTrigger = @import("std").mem.zeroes([*c]XIMHotKeyTrigger),
};
pub const XIMHotKeyTriggers = struct__XIMHotKeyTriggers;
pub const XIMHotKeyState = c_ulong;
pub const XIMValuesList = extern struct {
    count_values: c_ushort = @import("std").mem.zeroes(c_ushort),
    supported_values: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub extern var _Xdebug: c_int;
pub extern fn XLoadQueryFont(?*Display, [*c]const u8) [*c]XFontStruct;
pub extern fn XQueryFont(?*Display, XID) [*c]XFontStruct;
pub extern fn XGetMotionEvents(?*Display, Window, Time, Time, [*c]c_int) [*c]XTimeCoord;
pub extern fn XDeleteModifiermapEntry([*c]XModifierKeymap, KeyCode, c_int) [*c]XModifierKeymap;
pub extern fn XGetModifierMapping(?*Display) [*c]XModifierKeymap;
pub extern fn XInsertModifiermapEntry([*c]XModifierKeymap, KeyCode, c_int) [*c]XModifierKeymap;
pub extern fn XNewModifiermap(c_int) [*c]XModifierKeymap;
pub extern fn XCreateImage(?*Display, [*c]Visual, c_uint, c_int, c_int, [*c]u8, c_uint, c_uint, c_int, c_int) [*c]XImage;
pub extern fn XInitImage([*c]XImage) c_int;
pub extern fn XGetImage(?*Display, Drawable, c_int, c_int, c_uint, c_uint, c_ulong, c_int) [*c]XImage;
pub extern fn XGetSubImage(?*Display, Drawable, c_int, c_int, c_uint, c_uint, c_ulong, c_int, [*c]XImage, c_int, c_int) [*c]XImage;
pub extern fn XOpenDisplay([*c]const u8) ?*Display;
pub extern fn XrmInitialize() void;
pub extern fn XFetchBytes(?*Display, [*c]c_int) [*c]u8;
pub extern fn XFetchBuffer(?*Display, [*c]c_int, c_int) [*c]u8;
pub extern fn XGetAtomName(?*Display, Atom) [*c]u8;
pub extern fn XGetAtomNames(?*Display, [*c]Atom, c_int, [*c][*c]u8) c_int;
pub extern fn XGetDefault(?*Display, [*c]const u8, [*c]const u8) [*c]u8;
pub extern fn XDisplayName([*c]const u8) [*c]u8;
pub extern fn XKeysymToString(KeySym) [*c]u8;
pub extern fn XSynchronize(?*Display, c_int) ?*const fn (?*Display) callconv(.C) c_int;
pub extern fn XSetAfterFunction(?*Display, ?*const fn (?*Display) callconv(.C) c_int) ?*const fn (?*Display) callconv(.C) c_int;
pub extern fn XInternAtom(?*Display, [*c]const u8, c_int) Atom;
pub extern fn XInternAtoms(?*Display, [*c][*c]u8, c_int, c_int, [*c]Atom) c_int;
pub extern fn XCopyColormapAndFree(?*Display, Colormap) Colormap;
pub extern fn XCreateColormap(?*Display, Window, [*c]Visual, c_int) Colormap;
pub extern fn XCreatePixmapCursor(?*Display, Pixmap, Pixmap, [*c]XColor, [*c]XColor, c_uint, c_uint) Cursor;
pub extern fn XCreateGlyphCursor(?*Display, Font, Font, c_uint, c_uint, [*c]const XColor, [*c]const XColor) Cursor;
pub extern fn XCreateFontCursor(?*Display, c_uint) Cursor;
pub extern fn XLoadFont(?*Display, [*c]const u8) Font;
pub extern fn XCreateGC(?*Display, Drawable, c_ulong, [*c]XGCValues) GC;
pub extern fn XGContextFromGC(GC) GContext;
pub extern fn XFlushGC(?*Display, GC) void;
pub extern fn XCreatePixmap(?*Display, Drawable, c_uint, c_uint, c_uint) Pixmap;
pub extern fn XCreateBitmapFromData(?*Display, Drawable, [*c]const u8, c_uint, c_uint) Pixmap;
pub extern fn XCreatePixmapFromBitmapData(?*Display, Drawable, [*c]u8, c_uint, c_uint, c_ulong, c_ulong, c_uint) Pixmap;
pub extern fn XCreateSimpleWindow(?*Display, Window, c_int, c_int, c_uint, c_uint, c_uint, c_ulong, c_ulong) Window;
pub extern fn XGetSelectionOwner(?*Display, Atom) Window;
pub extern fn XCreateWindow(?*Display, Window, c_int, c_int, c_uint, c_uint, c_uint, c_int, c_uint, [*c]Visual, c_ulong, [*c]XSetWindowAttributes) Window;
pub extern fn XListInstalledColormaps(?*Display, Window, [*c]c_int) [*c]Colormap;
pub extern fn XListFonts(?*Display, [*c]const u8, c_int, [*c]c_int) [*c][*c]u8;
pub extern fn XListFontsWithInfo(?*Display, [*c]const u8, c_int, [*c]c_int, [*c][*c]XFontStruct) [*c][*c]u8;
pub extern fn XGetFontPath(?*Display, [*c]c_int) [*c][*c]u8;
pub extern fn XListExtensions(?*Display, [*c]c_int) [*c][*c]u8;
pub extern fn XListProperties(?*Display, Window, [*c]c_int) [*c]Atom;
pub extern fn XListHosts(?*Display, [*c]c_int, [*c]c_int) [*c]XHostAddress;
pub extern fn XKeycodeToKeysym(?*Display, KeyCode, c_int) KeySym;
pub extern fn XLookupKeysym([*c]XKeyEvent, c_int) KeySym;
pub extern fn XGetKeyboardMapping(?*Display, KeyCode, c_int, [*c]c_int) [*c]KeySym;
pub extern fn XStringToKeysym([*c]const u8) KeySym;
pub extern fn XMaxRequestSize(?*Display) c_long;
pub extern fn XExtendedMaxRequestSize(?*Display) c_long;
pub extern fn XResourceManagerString(?*Display) [*c]u8;
pub extern fn XScreenResourceString([*c]Screen) [*c]u8;
pub extern fn XDisplayMotionBufferSize(?*Display) c_ulong;
pub extern fn XVisualIDFromVisual([*c]Visual) VisualID;
pub extern fn XInitThreads() c_int;
pub extern fn XLockDisplay(?*Display) void;
pub extern fn XUnlockDisplay(?*Display) void;
pub extern fn XInitExtension(?*Display, [*c]const u8) [*c]XExtCodes;
pub extern fn XAddExtension(?*Display) [*c]XExtCodes;
pub extern fn XFindOnExtensionList([*c][*c]XExtData, c_int) [*c]XExtData;
pub extern fn XEHeadOfExtensionList(XEDataObject) [*c][*c]XExtData;
pub extern fn XRootWindow(?*Display, c_int) Window;
pub extern fn XDefaultRootWindow(?*Display) Window;
pub extern fn XRootWindowOfScreen([*c]Screen) Window;
pub extern fn XDefaultVisual(?*Display, c_int) [*c]Visual;
pub extern fn XDefaultVisualOfScreen([*c]Screen) [*c]Visual;
pub extern fn XDefaultGC(?*Display, c_int) GC;
pub extern fn XDefaultGCOfScreen([*c]Screen) GC;
pub extern fn XBlackPixel(?*Display, c_int) c_ulong;
pub extern fn XWhitePixel(?*Display, c_int) c_ulong;
pub extern fn XAllPlanes() c_ulong;
pub extern fn XBlackPixelOfScreen([*c]Screen) c_ulong;
pub extern fn XWhitePixelOfScreen([*c]Screen) c_ulong;
pub extern fn XNextRequest(?*Display) c_ulong;
pub extern fn XLastKnownRequestProcessed(?*Display) c_ulong;
pub extern fn XServerVendor(?*Display) [*c]u8;
pub extern fn XDisplayString(?*Display) [*c]u8;
pub extern fn XDefaultColormap(?*Display, c_int) Colormap;
pub extern fn XDefaultColormapOfScreen([*c]Screen) Colormap;
pub extern fn XDisplayOfScreen([*c]Screen) ?*Display;
pub extern fn XScreenOfDisplay(?*Display, c_int) [*c]Screen;
pub extern fn XDefaultScreenOfDisplay(?*Display) [*c]Screen;
pub extern fn XEventMaskOfScreen([*c]Screen) c_long;
pub extern fn XScreenNumberOfScreen([*c]Screen) c_int;
pub const XErrorHandler = ?*const fn (?*Display, [*c]XErrorEvent) callconv(.C) c_int;
pub extern fn XSetErrorHandler(XErrorHandler) XErrorHandler;
pub const XIOErrorHandler = ?*const fn (?*Display) callconv(.C) c_int;
pub extern fn XSetIOErrorHandler(XIOErrorHandler) XIOErrorHandler;
pub const XIOErrorExitHandler = ?*const fn (?*Display, ?*anyopaque) callconv(.C) void;
pub extern fn XSetIOErrorExitHandler(?*Display, XIOErrorExitHandler, ?*anyopaque) void;
pub extern fn XListPixmapFormats(?*Display, [*c]c_int) [*c]XPixmapFormatValues;
pub extern fn XListDepths(?*Display, c_int, [*c]c_int) [*c]c_int;
pub extern fn XReconfigureWMWindow(?*Display, Window, c_int, c_uint, [*c]XWindowChanges) c_int;
pub extern fn XGetWMProtocols(?*Display, Window, [*c][*c]Atom, [*c]c_int) c_int;
pub extern fn XSetWMProtocols(?*Display, Window, [*c]Atom, c_int) c_int;
pub extern fn XIconifyWindow(?*Display, Window, c_int) c_int;
pub extern fn XWithdrawWindow(?*Display, Window, c_int) c_int;
pub extern fn XGetCommand(?*Display, Window, [*c][*c][*c]u8, [*c]c_int) c_int;
pub extern fn XGetWMColormapWindows(?*Display, Window, [*c][*c]Window, [*c]c_int) c_int;
pub extern fn XSetWMColormapWindows(?*Display, Window, [*c]Window, c_int) c_int;
pub extern fn XFreeStringList([*c][*c]u8) void;
pub extern fn XSetTransientForHint(?*Display, Window, Window) c_int;
pub extern fn XActivateScreenSaver(?*Display) c_int;
pub extern fn XAddHost(?*Display, [*c]XHostAddress) c_int;
pub extern fn XAddHosts(?*Display, [*c]XHostAddress, c_int) c_int;
pub extern fn XAddToExtensionList([*c][*c]struct__XExtData, [*c]XExtData) c_int;
pub extern fn XAddToSaveSet(?*Display, Window) c_int;
pub extern fn XAllocColor(?*Display, Colormap, [*c]XColor) c_int;
pub extern fn XAllocColorCells(?*Display, Colormap, c_int, [*c]c_ulong, c_uint, [*c]c_ulong, c_uint) c_int;
pub extern fn XAllocColorPlanes(?*Display, Colormap, c_int, [*c]c_ulong, c_int, c_int, c_int, c_int, [*c]c_ulong, [*c]c_ulong, [*c]c_ulong) c_int;
pub extern fn XAllocNamedColor(?*Display, Colormap, [*c]const u8, [*c]XColor, [*c]XColor) c_int;
pub extern fn XAllowEvents(?*Display, c_int, Time) c_int;
pub extern fn XAutoRepeatOff(?*Display) c_int;
pub extern fn XAutoRepeatOn(?*Display) c_int;
pub extern fn XBell(?*Display, c_int) c_int;
pub extern fn XBitmapBitOrder(?*Display) c_int;
pub extern fn XBitmapPad(?*Display) c_int;
pub extern fn XBitmapUnit(?*Display) c_int;
pub extern fn XCellsOfScreen([*c]Screen) c_int;
pub extern fn XChangeActivePointerGrab(?*Display, c_uint, Cursor, Time) c_int;
pub extern fn XChangeGC(?*Display, GC, c_ulong, [*c]XGCValues) c_int;
pub extern fn XChangeKeyboardControl(?*Display, c_ulong, [*c]XKeyboardControl) c_int;
pub extern fn XChangeKeyboardMapping(?*Display, c_int, c_int, [*c]KeySym, c_int) c_int;
pub extern fn XChangePointerControl(?*Display, c_int, c_int, c_int, c_int, c_int) c_int;
pub extern fn XChangeProperty(?*Display, Window, Atom, Atom, c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn XChangeSaveSet(?*Display, Window, c_int) c_int;
pub extern fn XChangeWindowAttributes(?*Display, Window, c_ulong, [*c]XSetWindowAttributes) c_int;
pub extern fn XCheckIfEvent(?*Display, [*c]XEvent, ?*const fn (?*Display, [*c]XEvent, XPointer) callconv(.C) c_int, XPointer) c_int;
pub extern fn XCheckMaskEvent(?*Display, c_long, [*c]XEvent) c_int;
pub extern fn XCheckTypedEvent(?*Display, c_int, [*c]XEvent) c_int;
pub extern fn XCheckTypedWindowEvent(?*Display, Window, c_int, [*c]XEvent) c_int;
pub extern fn XCheckWindowEvent(?*Display, Window, c_long, [*c]XEvent) c_int;
pub extern fn XCirculateSubwindows(?*Display, Window, c_int) c_int;
pub extern fn XCirculateSubwindowsDown(?*Display, Window) c_int;
pub extern fn XCirculateSubwindowsUp(?*Display, Window) c_int;
pub extern fn XClearArea(?*Display, Window, c_int, c_int, c_uint, c_uint, c_int) c_int;
pub extern fn XClearWindow(?*Display, Window) c_int;
pub extern fn XCloseDisplay(?*Display) c_int;
pub extern fn XConfigureWindow(?*Display, Window, c_uint, [*c]XWindowChanges) c_int;
pub extern fn XConnectionNumber(?*Display) c_int;
pub extern fn XConvertSelection(?*Display, Atom, Atom, Atom, Window, Time) c_int;
pub extern fn XCopyArea(?*Display, Drawable, Drawable, GC, c_int, c_int, c_uint, c_uint, c_int, c_int) c_int;
pub extern fn XCopyGC(?*Display, GC, c_ulong, GC) c_int;
pub extern fn XCopyPlane(?*Display, Drawable, Drawable, GC, c_int, c_int, c_uint, c_uint, c_int, c_int, c_ulong) c_int;
pub extern fn XDefaultDepth(?*Display, c_int) c_int;
pub extern fn XDefaultDepthOfScreen([*c]Screen) c_int;
pub extern fn XDefaultScreen(?*Display) c_int;
pub extern fn XDefineCursor(?*Display, Window, Cursor) c_int;
pub extern fn XDeleteProperty(?*Display, Window, Atom) c_int;
pub extern fn XDestroyWindow(?*Display, Window) c_int;
pub extern fn XDestroySubwindows(?*Display, Window) c_int;
pub extern fn XDoesBackingStore([*c]Screen) c_int;
pub extern fn XDoesSaveUnders([*c]Screen) c_int;
pub extern fn XDisableAccessControl(?*Display) c_int;
pub extern fn XDisplayCells(?*Display, c_int) c_int;
pub extern fn XDisplayHeight(?*Display, c_int) c_int;
pub extern fn XDisplayHeightMM(?*Display, c_int) c_int;
pub extern fn XDisplayKeycodes(?*Display, [*c]c_int, [*c]c_int) c_int;
pub extern fn XDisplayPlanes(?*Display, c_int) c_int;
pub extern fn XDisplayWidth(?*Display, c_int) c_int;
pub extern fn XDisplayWidthMM(?*Display, c_int) c_int;
pub extern fn XDrawArc(?*Display, Drawable, GC, c_int, c_int, c_uint, c_uint, c_int, c_int) c_int;
pub extern fn XDrawArcs(?*Display, Drawable, GC, [*c]XArc, c_int) c_int;
pub extern fn XDrawImageString(?*Display, Drawable, GC, c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn XDrawImageString16(?*Display, Drawable, GC, c_int, c_int, [*c]const XChar2b, c_int) c_int;
pub extern fn XDrawLine(?*Display, Drawable, GC, c_int, c_int, c_int, c_int) c_int;
pub extern fn XDrawLines(?*Display, Drawable, GC, [*c]XPoint, c_int, c_int) c_int;
pub extern fn XDrawPoint(?*Display, Drawable, GC, c_int, c_int) c_int;
pub extern fn XDrawPoints(?*Display, Drawable, GC, [*c]XPoint, c_int, c_int) c_int;
pub extern fn XDrawRectangle(?*Display, Drawable, GC, c_int, c_int, c_uint, c_uint) c_int;
pub extern fn XDrawRectangles(?*Display, Drawable, GC, [*c]XRectangle, c_int) c_int;
pub extern fn XDrawSegments(?*Display, Drawable, GC, [*c]XSegment, c_int) c_int;
pub extern fn XDrawString(?*Display, Drawable, GC, c_int, c_int, [*c]const u8, c_int) c_int;
pub extern fn XDrawString16(?*Display, Drawable, GC, c_int, c_int, [*c]const XChar2b, c_int) c_int;
pub extern fn XDrawText(?*Display, Drawable, GC, c_int, c_int, [*c]XTextItem, c_int) c_int;
pub extern fn XDrawText16(?*Display, Drawable, GC, c_int, c_int, [*c]XTextItem16, c_int) c_int;
pub extern fn XEnableAccessControl(?*Display) c_int;
pub extern fn XEventsQueued(?*Display, c_int) c_int;
pub extern fn XFetchName(?*Display, Window, [*c][*c]u8) c_int;
pub extern fn XFillArc(?*Display, Drawable, GC, c_int, c_int, c_uint, c_uint, c_int, c_int) c_int;
pub extern fn XFillArcs(?*Display, Drawable, GC, [*c]XArc, c_int) c_int;
pub extern fn XFillPolygon(?*Display, Drawable, GC, [*c]XPoint, c_int, c_int, c_int) c_int;
pub extern fn XFillRectangle(?*Display, Drawable, GC, c_int, c_int, c_uint, c_uint) c_int;
pub extern fn XFillRectangles(?*Display, Drawable, GC, [*c]XRectangle, c_int) c_int;
pub extern fn XFlush(?*Display) c_int;
pub extern fn XForceScreenSaver(?*Display, c_int) c_int;
pub extern fn XFree(?*anyopaque) c_int;
pub extern fn XFreeColormap(?*Display, Colormap) c_int;
pub extern fn XFreeColors(?*Display, Colormap, [*c]c_ulong, c_int, c_ulong) c_int;
pub extern fn XFreeCursor(?*Display, Cursor) c_int;
pub extern fn XFreeExtensionList([*c][*c]u8) c_int;
pub extern fn XFreeFont(?*Display, [*c]XFontStruct) c_int;
pub extern fn XFreeFontInfo([*c][*c]u8, [*c]XFontStruct, c_int) c_int;
pub extern fn XFreeFontNames([*c][*c]u8) c_int;
pub extern fn XFreeFontPath([*c][*c]u8) c_int;
pub extern fn XFreeGC(?*Display, GC) c_int;
pub extern fn XFreeModifiermap([*c]XModifierKeymap) c_int;
pub extern fn XFreePixmap(?*Display, Pixmap) c_int;
pub extern fn XGeometry(?*Display, c_int, [*c]const u8, [*c]const u8, c_uint, c_uint, c_uint, c_int, c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XGetErrorDatabaseText(?*Display, [*c]const u8, [*c]const u8, [*c]const u8, [*c]u8, c_int) c_int;
pub extern fn XGetErrorText(?*Display, c_int, [*c]u8, c_int) c_int;
pub extern fn XGetFontProperty([*c]XFontStruct, Atom, [*c]c_ulong) c_int;
pub extern fn XGetGCValues(?*Display, GC, c_ulong, [*c]XGCValues) c_int;
pub extern fn XGetGeometry(?*Display, Drawable, [*c]Window, [*c]c_int, [*c]c_int, [*c]c_uint, [*c]c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XGetIconName(?*Display, Window, [*c][*c]u8) c_int;
pub extern fn XGetInputFocus(?*Display, [*c]Window, [*c]c_int) c_int;
pub extern fn XGetKeyboardControl(?*Display, [*c]XKeyboardState) c_int;
pub extern fn XGetPointerControl(?*Display, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XGetPointerMapping(?*Display, [*c]u8, c_int) c_int;
pub extern fn XGetScreenSaver(?*Display, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XGetTransientForHint(?*Display, Window, [*c]Window) c_int;
pub extern fn XGetWindowProperty(?*Display, Window, Atom, c_long, c_long, c_int, Atom, [*c]Atom, [*c]c_int, [*c]c_ulong, [*c]c_ulong, [*c][*c]u8) c_int;
pub extern fn XGetWindowAttributes(?*Display, Window, [*c]XWindowAttributes) c_int;
pub extern fn XGrabButton(?*Display, c_uint, c_uint, Window, c_int, c_uint, c_int, c_int, Window, Cursor) c_int;
pub extern fn XGrabKey(?*Display, c_int, c_uint, Window, c_int, c_int, c_int) c_int;
pub extern fn XGrabKeyboard(?*Display, Window, c_int, c_int, c_int, Time) c_int;
pub extern fn XGrabPointer(?*Display, Window, c_int, c_uint, c_int, c_int, Window, Cursor, Time) c_int;
pub extern fn XGrabServer(?*Display) c_int;
pub extern fn XHeightMMOfScreen([*c]Screen) c_int;
pub extern fn XHeightOfScreen([*c]Screen) c_int;
pub extern fn XIfEvent(?*Display, [*c]XEvent, ?*const fn (?*Display, [*c]XEvent, XPointer) callconv(.C) c_int, XPointer) c_int;
pub extern fn XImageByteOrder(?*Display) c_int;
pub extern fn XInstallColormap(?*Display, Colormap) c_int;
pub extern fn XKeysymToKeycode(?*Display, KeySym) KeyCode;
pub extern fn XKillClient(?*Display, XID) c_int;
pub extern fn XLookupColor(?*Display, Colormap, [*c]const u8, [*c]XColor, [*c]XColor) c_int;
pub extern fn XLowerWindow(?*Display, Window) c_int;
pub extern fn XMapRaised(?*Display, Window) c_int;
pub extern fn XMapSubwindows(?*Display, Window) c_int;
pub extern fn XMapWindow(?*Display, Window) c_int;
pub extern fn XMaskEvent(?*Display, c_long, [*c]XEvent) c_int;
pub extern fn XMaxCmapsOfScreen([*c]Screen) c_int;
pub extern fn XMinCmapsOfScreen([*c]Screen) c_int;
pub extern fn XMoveResizeWindow(?*Display, Window, c_int, c_int, c_uint, c_uint) c_int;
pub extern fn XMoveWindow(?*Display, Window, c_int, c_int) c_int;
pub extern fn XNextEvent(?*Display, [*c]XEvent) c_int;
pub extern fn XNoOp(?*Display) c_int;
pub extern fn XParseColor(?*Display, Colormap, [*c]const u8, [*c]XColor) c_int;
pub extern fn XParseGeometry([*c]const u8, [*c]c_int, [*c]c_int, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XPeekEvent(?*Display, [*c]XEvent) c_int;
pub extern fn XPeekIfEvent(?*Display, [*c]XEvent, ?*const fn (?*Display, [*c]XEvent, XPointer) callconv(.C) c_int, XPointer) c_int;
pub extern fn XPending(?*Display) c_int;
pub extern fn XPlanesOfScreen([*c]Screen) c_int;
pub extern fn XProtocolRevision(?*Display) c_int;
pub extern fn XProtocolVersion(?*Display) c_int;
pub extern fn XPutBackEvent(?*Display, [*c]XEvent) c_int;
pub extern fn XPutImage(?*Display, Drawable, GC, [*c]XImage, c_int, c_int, c_int, c_int, c_uint, c_uint) c_int;
pub extern fn XQLength(?*Display) c_int;
pub extern fn XQueryBestCursor(?*Display, Drawable, c_uint, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XQueryBestSize(?*Display, c_int, Drawable, c_uint, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XQueryBestStipple(?*Display, Drawable, c_uint, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XQueryBestTile(?*Display, Drawable, c_uint, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XQueryColor(?*Display, Colormap, [*c]XColor) c_int;
pub extern fn XQueryColors(?*Display, Colormap, [*c]XColor, c_int) c_int;
pub extern fn XQueryExtension(?*Display, [*c]const u8, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XQueryKeymap(?*Display, [*c]u8) c_int;
pub extern fn XQueryPointer(?*Display, Window, [*c]Window, [*c]Window, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_uint) c_int;
pub extern fn XQueryTextExtents(?*Display, XID, [*c]const u8, c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]XCharStruct) c_int;
pub extern fn XQueryTextExtents16(?*Display, XID, [*c]const XChar2b, c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]XCharStruct) c_int;
pub extern fn XQueryTree(?*Display, Window, [*c]Window, [*c]Window, [*c][*c]Window, [*c]c_uint) c_int;
pub extern fn XRaiseWindow(?*Display, Window) c_int;
pub extern fn XReadBitmapFile(?*Display, Drawable, [*c]const u8, [*c]c_uint, [*c]c_uint, [*c]Pixmap, [*c]c_int, [*c]c_int) c_int;
pub extern fn XReadBitmapFileData([*c]const u8, [*c]c_uint, [*c]c_uint, [*c][*c]u8, [*c]c_int, [*c]c_int) c_int;
pub extern fn XRebindKeysym(?*Display, KeySym, [*c]KeySym, c_int, [*c]const u8, c_int) c_int;
pub extern fn XRecolorCursor(?*Display, Cursor, [*c]XColor, [*c]XColor) c_int;
pub extern fn XRefreshKeyboardMapping([*c]XMappingEvent) c_int;
pub extern fn XRemoveFromSaveSet(?*Display, Window) c_int;
pub extern fn XRemoveHost(?*Display, [*c]XHostAddress) c_int;
pub extern fn XRemoveHosts(?*Display, [*c]XHostAddress, c_int) c_int;
pub extern fn XReparentWindow(?*Display, Window, Window, c_int, c_int) c_int;
pub extern fn XResetScreenSaver(?*Display) c_int;
pub extern fn XResizeWindow(?*Display, Window, c_uint, c_uint) c_int;
pub extern fn XRestackWindows(?*Display, [*c]Window, c_int) c_int;
pub extern fn XRotateBuffers(?*Display, c_int) c_int;
pub extern fn XRotateWindowProperties(?*Display, Window, [*c]Atom, c_int, c_int) c_int;
pub extern fn XScreenCount(?*Display) c_int;
pub extern fn XSelectInput(?*Display, Window, c_long) c_int;
pub extern fn XSendEvent(?*Display, Window, c_int, c_long, [*c]XEvent) c_int;
pub extern fn XSetAccessControl(?*Display, c_int) c_int;
pub extern fn XSetArcMode(?*Display, GC, c_int) c_int;
pub extern fn XSetBackground(?*Display, GC, c_ulong) c_int;
pub extern fn XSetClipMask(?*Display, GC, Pixmap) c_int;
pub extern fn XSetClipOrigin(?*Display, GC, c_int, c_int) c_int;
pub extern fn XSetClipRectangles(?*Display, GC, c_int, c_int, [*c]XRectangle, c_int, c_int) c_int;
pub extern fn XSetCloseDownMode(?*Display, c_int) c_int;
pub extern fn XSetCommand(?*Display, Window, [*c][*c]u8, c_int) c_int;
pub extern fn XSetDashes(?*Display, GC, c_int, [*c]const u8, c_int) c_int;
pub extern fn XSetFillRule(?*Display, GC, c_int) c_int;
pub extern fn XSetFillStyle(?*Display, GC, c_int) c_int;
pub extern fn XSetFont(?*Display, GC, Font) c_int;
pub extern fn XSetFontPath(?*Display, [*c][*c]u8, c_int) c_int;
pub extern fn XSetForeground(?*Display, GC, c_ulong) c_int;
pub extern fn XSetFunction(?*Display, GC, c_int) c_int;
pub extern fn XSetGraphicsExposures(?*Display, GC, c_int) c_int;
pub extern fn XSetIconName(?*Display, Window, [*c]const u8) c_int;
pub extern fn XSetInputFocus(?*Display, Window, c_int, Time) c_int;
pub extern fn XSetLineAttributes(?*Display, GC, c_uint, c_int, c_int, c_int) c_int;
pub extern fn XSetModifierMapping(?*Display, [*c]XModifierKeymap) c_int;
pub extern fn XSetPlaneMask(?*Display, GC, c_ulong) c_int;
pub extern fn XSetPointerMapping(?*Display, [*c]const u8, c_int) c_int;
pub extern fn XSetScreenSaver(?*Display, c_int, c_int, c_int, c_int) c_int;
pub extern fn XSetSelectionOwner(?*Display, Atom, Window, Time) c_int;
pub extern fn XSetState(?*Display, GC, c_ulong, c_ulong, c_int, c_ulong) c_int;
pub extern fn XSetStipple(?*Display, GC, Pixmap) c_int;
pub extern fn XSetSubwindowMode(?*Display, GC, c_int) c_int;
pub extern fn XSetTSOrigin(?*Display, GC, c_int, c_int) c_int;
pub extern fn XSetTile(?*Display, GC, Pixmap) c_int;
pub extern fn XSetWindowBackground(?*Display, Window, c_ulong) c_int;
pub extern fn XSetWindowBackgroundPixmap(?*Display, Window, Pixmap) c_int;
pub extern fn XSetWindowBorder(?*Display, Window, c_ulong) c_int;
pub extern fn XSetWindowBorderPixmap(?*Display, Window, Pixmap) c_int;
pub extern fn XSetWindowBorderWidth(?*Display, Window, c_uint) c_int;
pub extern fn XSetWindowColormap(?*Display, Window, Colormap) c_int;
pub extern fn XStoreBuffer(?*Display, [*c]const u8, c_int, c_int) c_int;
pub extern fn XStoreBytes(?*Display, [*c]const u8, c_int) c_int;
pub extern fn XStoreColor(?*Display, Colormap, [*c]XColor) c_int;
pub extern fn XStoreColors(?*Display, Colormap, [*c]XColor, c_int) c_int;
pub extern fn XStoreName(?*Display, Window, [*c]const u8) c_int;
pub extern fn XStoreNamedColor(?*Display, Colormap, [*c]const u8, c_ulong, c_int) c_int;
pub extern fn XSync(?*Display, c_int) c_int;
pub extern fn XTextExtents([*c]XFontStruct, [*c]const u8, c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]XCharStruct) c_int;
pub extern fn XTextExtents16([*c]XFontStruct, [*c]const XChar2b, c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]XCharStruct) c_int;
pub extern fn XTextWidth([*c]XFontStruct, [*c]const u8, c_int) c_int;
pub extern fn XTextWidth16([*c]XFontStruct, [*c]const XChar2b, c_int) c_int;
pub extern fn XTranslateCoordinates(?*Display, Window, Window, c_int, c_int, [*c]c_int, [*c]c_int, [*c]Window) c_int;
pub extern fn XUndefineCursor(?*Display, Window) c_int;
pub extern fn XUngrabButton(?*Display, c_uint, c_uint, Window) c_int;
pub extern fn XUngrabKey(?*Display, c_int, c_uint, Window) c_int;
pub extern fn XUngrabKeyboard(?*Display, Time) c_int;
pub extern fn XUngrabPointer(?*Display, Time) c_int;
pub extern fn XUngrabServer(?*Display) c_int;
pub extern fn XUninstallColormap(?*Display, Colormap) c_int;
pub extern fn XUnloadFont(?*Display, Font) c_int;
pub extern fn XUnmapSubwindows(?*Display, Window) c_int;
pub extern fn XUnmapWindow(?*Display, Window) c_int;
pub extern fn XVendorRelease(?*Display) c_int;
pub extern fn XWarpPointer(?*Display, Window, Window, c_int, c_int, c_uint, c_uint, c_int, c_int) c_int;
pub extern fn XWidthMMOfScreen([*c]Screen) c_int;
pub extern fn XWidthOfScreen([*c]Screen) c_int;
pub extern fn XWindowEvent(?*Display, Window, c_long, [*c]XEvent) c_int;
pub extern fn XWriteBitmapFile(?*Display, [*c]const u8, Pixmap, c_uint, c_uint, c_int, c_int) c_int;
pub extern fn XSupportsLocale() c_int;
pub extern fn XSetLocaleModifiers([*c]const u8) [*c]u8;
pub extern fn XOpenOM(?*Display, ?*struct__XrmHashBucketRec, [*c]const u8, [*c]const u8) XOM;
pub extern fn XCloseOM(XOM) c_int;
pub extern fn XSetOMValues(XOM, ...) [*c]u8;
pub extern fn XGetOMValues(XOM, ...) [*c]u8;
pub extern fn XDisplayOfOM(XOM) ?*Display;
pub extern fn XLocaleOfOM(XOM) [*c]u8;
pub extern fn XCreateOC(XOM, ...) XOC;
pub extern fn XDestroyOC(XOC) void;
pub extern fn XOMOfOC(XOC) XOM;
pub extern fn XSetOCValues(XOC, ...) [*c]u8;
pub extern fn XGetOCValues(XOC, ...) [*c]u8;
pub extern fn XCreateFontSet(?*Display, [*c]const u8, [*c][*c][*c]u8, [*c]c_int, [*c][*c]u8) XFontSet;
pub extern fn XFreeFontSet(?*Display, XFontSet) void;
pub extern fn XFontsOfFontSet(XFontSet, [*c][*c][*c]XFontStruct, [*c][*c][*c]u8) c_int;
pub extern fn XBaseFontNameListOfFontSet(XFontSet) [*c]u8;
pub extern fn XLocaleOfFontSet(XFontSet) [*c]u8;
pub extern fn XContextDependentDrawing(XFontSet) c_int;
pub extern fn XDirectionalDependentDrawing(XFontSet) c_int;
pub extern fn XContextualDrawing(XFontSet) c_int;
pub extern fn XExtentsOfFontSet(XFontSet) [*c]XFontSetExtents;
pub extern fn XmbTextEscapement(XFontSet, [*c]const u8, c_int) c_int;
pub extern fn XwcTextEscapement(XFontSet, [*c]const wchar_t, c_int) c_int;
pub extern fn Xutf8TextEscapement(XFontSet, [*c]const u8, c_int) c_int;
pub extern fn XmbTextExtents(XFontSet, [*c]const u8, c_int, [*c]XRectangle, [*c]XRectangle) c_int;
pub extern fn XwcTextExtents(XFontSet, [*c]const wchar_t, c_int, [*c]XRectangle, [*c]XRectangle) c_int;
pub extern fn Xutf8TextExtents(XFontSet, [*c]const u8, c_int, [*c]XRectangle, [*c]XRectangle) c_int;
pub extern fn XmbTextPerCharExtents(XFontSet, [*c]const u8, c_int, [*c]XRectangle, [*c]XRectangle, c_int, [*c]c_int, [*c]XRectangle, [*c]XRectangle) c_int;
pub extern fn XwcTextPerCharExtents(XFontSet, [*c]const wchar_t, c_int, [*c]XRectangle, [*c]XRectangle, c_int, [*c]c_int, [*c]XRectangle, [*c]XRectangle) c_int;
pub extern fn Xutf8TextPerCharExtents(XFontSet, [*c]const u8, c_int, [*c]XRectangle, [*c]XRectangle, c_int, [*c]c_int, [*c]XRectangle, [*c]XRectangle) c_int;
pub extern fn XmbDrawText(?*Display, Drawable, GC, c_int, c_int, [*c]XmbTextItem, c_int) void;
pub extern fn XwcDrawText(?*Display, Drawable, GC, c_int, c_int, [*c]XwcTextItem, c_int) void;
pub extern fn Xutf8DrawText(?*Display, Drawable, GC, c_int, c_int, [*c]XmbTextItem, c_int) void;
pub extern fn XmbDrawString(?*Display, Drawable, XFontSet, GC, c_int, c_int, [*c]const u8, c_int) void;
pub extern fn XwcDrawString(?*Display, Drawable, XFontSet, GC, c_int, c_int, [*c]const wchar_t, c_int) void;
pub extern fn Xutf8DrawString(?*Display, Drawable, XFontSet, GC, c_int, c_int, [*c]const u8, c_int) void;
pub extern fn XmbDrawImageString(?*Display, Drawable, XFontSet, GC, c_int, c_int, [*c]const u8, c_int) void;
pub extern fn XwcDrawImageString(?*Display, Drawable, XFontSet, GC, c_int, c_int, [*c]const wchar_t, c_int) void;
pub extern fn Xutf8DrawImageString(?*Display, Drawable, XFontSet, GC, c_int, c_int, [*c]const u8, c_int) void;
pub extern fn XOpenIM(?*Display, ?*struct__XrmHashBucketRec, [*c]u8, [*c]u8) XIM;
pub extern fn XCloseIM(XIM) c_int;
pub extern fn XGetIMValues(XIM, ...) [*c]u8;
pub extern fn XSetIMValues(XIM, ...) [*c]u8;
pub extern fn XDisplayOfIM(XIM) ?*Display;
pub extern fn XLocaleOfIM(XIM) [*c]u8;
pub extern fn XCreateIC(XIM, ...) XIC;
pub extern fn XDestroyIC(XIC) void;
pub extern fn XSetICFocus(XIC) void;
pub extern fn XUnsetICFocus(XIC) void;
pub extern fn XwcResetIC(XIC) [*c]wchar_t;
pub extern fn XmbResetIC(XIC) [*c]u8;
pub extern fn Xutf8ResetIC(XIC) [*c]u8;
pub extern fn XSetICValues(XIC, ...) [*c]u8;
pub extern fn XGetICValues(XIC, ...) [*c]u8;
pub extern fn XIMOfIC(XIC) XIM;
pub extern fn XFilterEvent([*c]XEvent, Window) c_int;
pub extern fn XmbLookupString(XIC, [*c]XKeyPressedEvent, [*c]u8, c_int, [*c]KeySym, [*c]c_int) c_int;
pub extern fn XwcLookupString(XIC, [*c]XKeyPressedEvent, [*c]wchar_t, c_int, [*c]KeySym, [*c]c_int) c_int;
pub extern fn Xutf8LookupString(XIC, [*c]XKeyPressedEvent, [*c]u8, c_int, [*c]KeySym, [*c]c_int) c_int;
pub extern fn XVaCreateNestedList(c_int, ...) XVaNestedList;
pub extern fn XRegisterIMInstantiateCallback(?*Display, ?*struct__XrmHashBucketRec, [*c]u8, [*c]u8, XIDProc, XPointer) c_int;
pub extern fn XUnregisterIMInstantiateCallback(?*Display, ?*struct__XrmHashBucketRec, [*c]u8, [*c]u8, XIDProc, XPointer) c_int;
pub const XConnectionWatchProc = ?*const fn (?*Display, XPointer, c_int, c_int, [*c]XPointer) callconv(.C) void;
pub extern fn XInternalConnectionNumbers(?*Display, [*c][*c]c_int, [*c]c_int) c_int;
pub extern fn XProcessInternalConnection(?*Display, c_int) void;
pub extern fn XAddConnectionWatch(?*Display, XConnectionWatchProc, XPointer) c_int;
pub extern fn XRemoveConnectionWatch(?*Display, XConnectionWatchProc, XPointer) void;
pub extern fn XSetAuthorization([*c]u8, c_int, [*c]u8, c_int) void;
pub extern fn _Xmbtowc([*c]wchar_t, [*c]u8, c_int) c_int;
pub extern fn _Xwctomb([*c]u8, wchar_t) c_int;
pub extern fn XGetEventData(?*Display, [*c]XGenericEventCookie) c_int;
pub extern fn XFreeEventData(?*Display, [*c]XGenericEventCookie) void;
const struct_unnamed_14 = extern struct {
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
};
pub const XSizeHints = extern struct {
    flags: c_long = @import("std").mem.zeroes(c_long),
    x: c_int = @import("std").mem.zeroes(c_int),
    y: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    min_width: c_int = @import("std").mem.zeroes(c_int),
    min_height: c_int = @import("std").mem.zeroes(c_int),
    max_width: c_int = @import("std").mem.zeroes(c_int),
    max_height: c_int = @import("std").mem.zeroes(c_int),
    width_inc: c_int = @import("std").mem.zeroes(c_int),
    height_inc: c_int = @import("std").mem.zeroes(c_int),
    min_aspect: struct_unnamed_14 = @import("std").mem.zeroes(struct_unnamed_14),
    max_aspect: struct_unnamed_14 = @import("std").mem.zeroes(struct_unnamed_14),
    base_width: c_int = @import("std").mem.zeroes(c_int),
    base_height: c_int = @import("std").mem.zeroes(c_int),
    win_gravity: c_int = @import("std").mem.zeroes(c_int),
};
pub const XWMHints = extern struct {
    flags: c_long = @import("std").mem.zeroes(c_long),
    input: c_int = @import("std").mem.zeroes(c_int),
    initial_state: c_int = @import("std").mem.zeroes(c_int),
    icon_pixmap: Pixmap = @import("std").mem.zeroes(Pixmap),
    icon_window: Window = @import("std").mem.zeroes(Window),
    icon_x: c_int = @import("std").mem.zeroes(c_int),
    icon_y: c_int = @import("std").mem.zeroes(c_int),
    icon_mask: Pixmap = @import("std").mem.zeroes(Pixmap),
    window_group: XID = @import("std").mem.zeroes(XID),
};
pub const XTextProperty = extern struct {
    value: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    encoding: Atom = @import("std").mem.zeroes(Atom),
    format: c_int = @import("std").mem.zeroes(c_int),
    nitems: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const XStringStyle: c_int = 0;
pub const XCompoundTextStyle: c_int = 1;
pub const XTextStyle: c_int = 2;
pub const XStdICCTextStyle: c_int = 3;
pub const XUTF8StringStyle: c_int = 4;
pub const XICCEncodingStyle = c_uint;
pub const XIconSize = extern struct {
    min_width: c_int = @import("std").mem.zeroes(c_int),
    min_height: c_int = @import("std").mem.zeroes(c_int),
    max_width: c_int = @import("std").mem.zeroes(c_int),
    max_height: c_int = @import("std").mem.zeroes(c_int),
    width_inc: c_int = @import("std").mem.zeroes(c_int),
    height_inc: c_int = @import("std").mem.zeroes(c_int),
};
pub const XClassHint = extern struct {
    res_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    res_class: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const struct__XComposeStatus = extern struct {
    compose_ptr: XPointer = @import("std").mem.zeroes(XPointer),
    chars_matched: c_int = @import("std").mem.zeroes(c_int),
};
pub const XComposeStatus = struct__XComposeStatus;
pub const struct__XRegion = opaque {};
pub const Region = ?*struct__XRegion;
pub const XVisualInfo = extern struct {
    visual: [*c]Visual = @import("std").mem.zeroes([*c]Visual),
    visualid: VisualID = @import("std").mem.zeroes(VisualID),
    screen: c_int = @import("std").mem.zeroes(c_int),
    depth: c_int = @import("std").mem.zeroes(c_int),
    class: c_int = @import("std").mem.zeroes(c_int),
    red_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    green_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    blue_mask: c_ulong = @import("std").mem.zeroes(c_ulong),
    colormap_size: c_int = @import("std").mem.zeroes(c_int),
    bits_per_rgb: c_int = @import("std").mem.zeroes(c_int),
};
pub const XStandardColormap = extern struct {
    colormap: Colormap = @import("std").mem.zeroes(Colormap),
    red_max: c_ulong = @import("std").mem.zeroes(c_ulong),
    red_mult: c_ulong = @import("std").mem.zeroes(c_ulong),
    green_max: c_ulong = @import("std").mem.zeroes(c_ulong),
    green_mult: c_ulong = @import("std").mem.zeroes(c_ulong),
    blue_max: c_ulong = @import("std").mem.zeroes(c_ulong),
    blue_mult: c_ulong = @import("std").mem.zeroes(c_ulong),
    base_pixel: c_ulong = @import("std").mem.zeroes(c_ulong),
    visualid: VisualID = @import("std").mem.zeroes(VisualID),
    killid: XID = @import("std").mem.zeroes(XID),
};
pub const XContext = c_int;
pub extern fn XAllocClassHint() [*c]XClassHint;
pub extern fn XAllocIconSize() [*c]XIconSize;
pub extern fn XAllocSizeHints() [*c]XSizeHints;
pub extern fn XAllocStandardColormap() [*c]XStandardColormap;
pub extern fn XAllocWMHints() [*c]XWMHints;
pub extern fn XClipBox(Region, [*c]XRectangle) c_int;
pub extern fn XCreateRegion() Region;
pub extern fn XDefaultString() [*c]const u8;
pub extern fn XDeleteContext(?*Display, XID, XContext) c_int;
pub extern fn XDestroyRegion(Region) c_int;
pub extern fn XEmptyRegion(Region) c_int;
pub extern fn XEqualRegion(Region, Region) c_int;
pub extern fn XFindContext(?*Display, XID, XContext, [*c]XPointer) c_int;
pub extern fn XGetClassHint(?*Display, Window, [*c]XClassHint) c_int;
pub extern fn XGetIconSizes(?*Display, Window, [*c][*c]XIconSize, [*c]c_int) c_int;
pub extern fn XGetNormalHints(?*Display, Window, [*c]XSizeHints) c_int;
pub extern fn XGetRGBColormaps(?*Display, Window, [*c][*c]XStandardColormap, [*c]c_int, Atom) c_int;
pub extern fn XGetSizeHints(?*Display, Window, [*c]XSizeHints, Atom) c_int;
pub extern fn XGetStandardColormap(?*Display, Window, [*c]XStandardColormap, Atom) c_int;
pub extern fn XGetTextProperty(?*Display, Window, [*c]XTextProperty, Atom) c_int;
pub extern fn XGetVisualInfo(?*Display, c_long, [*c]XVisualInfo, [*c]c_int) [*c]XVisualInfo;
pub extern fn XGetWMClientMachine(?*Display, Window, [*c]XTextProperty) c_int;
pub extern fn XGetWMHints(?*Display, Window) [*c]XWMHints;
pub extern fn XGetWMIconName(?*Display, Window, [*c]XTextProperty) c_int;
pub extern fn XGetWMName(?*Display, Window, [*c]XTextProperty) c_int;
pub extern fn XGetWMNormalHints(?*Display, Window, [*c]XSizeHints, [*c]c_long) c_int;
pub extern fn XGetWMSizeHints(?*Display, Window, [*c]XSizeHints, [*c]c_long, Atom) c_int;
pub extern fn XGetZoomHints(?*Display, Window, [*c]XSizeHints) c_int;
pub extern fn XIntersectRegion(Region, Region, Region) c_int;
pub extern fn XConvertCase(KeySym, [*c]KeySym, [*c]KeySym) void;
pub extern fn XLookupString([*c]XKeyEvent, [*c]u8, c_int, [*c]KeySym, [*c]XComposeStatus) c_int;
pub extern fn XMatchVisualInfo(?*Display, c_int, c_int, c_int, [*c]XVisualInfo) c_int;
pub extern fn XOffsetRegion(Region, c_int, c_int) c_int;
pub extern fn XPointInRegion(Region, c_int, c_int) c_int;
pub extern fn XPolygonRegion([*c]XPoint, c_int, c_int) Region;
pub extern fn XRectInRegion(Region, c_int, c_int, c_uint, c_uint) c_int;
pub extern fn XSaveContext(?*Display, XID, XContext, [*c]const u8) c_int;
pub extern fn XSetClassHint(?*Display, Window, [*c]XClassHint) c_int;
pub extern fn XSetIconSizes(?*Display, Window, [*c]XIconSize, c_int) c_int;
pub extern fn XSetNormalHints(?*Display, Window, [*c]XSizeHints) c_int;
pub extern fn XSetRGBColormaps(?*Display, Window, [*c]XStandardColormap, c_int, Atom) void;
pub extern fn XSetSizeHints(?*Display, Window, [*c]XSizeHints, Atom) c_int;
pub extern fn XSetStandardProperties(?*Display, Window, [*c]const u8, [*c]const u8, Pixmap, [*c][*c]u8, c_int, [*c]XSizeHints) c_int;
pub extern fn XSetTextProperty(?*Display, Window, [*c]XTextProperty, Atom) void;
pub extern fn XSetWMClientMachine(?*Display, Window, [*c]XTextProperty) void;
pub extern fn XSetWMHints(?*Display, Window, [*c]XWMHints) c_int;
pub extern fn XSetWMIconName(?*Display, Window, [*c]XTextProperty) void;
pub extern fn XSetWMName(?*Display, Window, [*c]XTextProperty) void;
pub extern fn XSetWMNormalHints(?*Display, Window, [*c]XSizeHints) void;
pub extern fn XSetWMProperties(?*Display, Window, [*c]XTextProperty, [*c]XTextProperty, [*c][*c]u8, c_int, [*c]XSizeHints, [*c]XWMHints, [*c]XClassHint) void;
pub extern fn XmbSetWMProperties(?*Display, Window, [*c]const u8, [*c]const u8, [*c][*c]u8, c_int, [*c]XSizeHints, [*c]XWMHints, [*c]XClassHint) void;
pub extern fn Xutf8SetWMProperties(?*Display, Window, [*c]const u8, [*c]const u8, [*c][*c]u8, c_int, [*c]XSizeHints, [*c]XWMHints, [*c]XClassHint) void;
pub extern fn XSetWMSizeHints(?*Display, Window, [*c]XSizeHints, Atom) void;
pub extern fn XSetRegion(?*Display, GC, Region) c_int;
pub extern fn XSetStandardColormap(?*Display, Window, [*c]XStandardColormap, Atom) void;
pub extern fn XSetZoomHints(?*Display, Window, [*c]XSizeHints) c_int;
pub extern fn XShrinkRegion(Region, c_int, c_int) c_int;
pub extern fn XStringListToTextProperty([*c][*c]u8, c_int, [*c]XTextProperty) c_int;
pub extern fn XSubtractRegion(Region, Region, Region) c_int;
pub extern fn XmbTextListToTextProperty(display: ?*Display, list: [*c][*c]u8, count: c_int, style: XICCEncodingStyle, text_prop_return: [*c]XTextProperty) c_int;
pub extern fn XwcTextListToTextProperty(display: ?*Display, list: [*c][*c]wchar_t, count: c_int, style: XICCEncodingStyle, text_prop_return: [*c]XTextProperty) c_int;
pub extern fn Xutf8TextListToTextProperty(display: ?*Display, list: [*c][*c]u8, count: c_int, style: XICCEncodingStyle, text_prop_return: [*c]XTextProperty) c_int;
pub extern fn XwcFreeStringList(list: [*c][*c]wchar_t) void;
pub extern fn XTextPropertyToStringList([*c]XTextProperty, [*c][*c][*c]u8, [*c]c_int) c_int;
pub extern fn XmbTextPropertyToTextList(display: ?*Display, text_prop: [*c]const XTextProperty, list_return: [*c][*c][*c]u8, count_return: [*c]c_int) c_int;
pub extern fn XwcTextPropertyToTextList(display: ?*Display, text_prop: [*c]const XTextProperty, list_return: [*c][*c][*c]wchar_t, count_return: [*c]c_int) c_int;
pub extern fn Xutf8TextPropertyToTextList(display: ?*Display, text_prop: [*c]const XTextProperty, list_return: [*c][*c][*c]u8, count_return: [*c]c_int) c_int;
pub extern fn XUnionRectWithRegion([*c]XRectangle, Region, Region) c_int;
pub extern fn XUnionRegion(Region, Region, Region) c_int;
pub extern fn XWMGeometry(?*Display, c_int, [*c]const u8, [*c]const u8, c_uint, [*c]XSizeHints, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XXorRegion(Region, Region, Region) c_int;
pub const __ipc_pid_t = c_int;
pub const struct_ipc_perm = extern struct {
    __key: __key_t = @import("std").mem.zeroes(__key_t),
    uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    cuid: __uid_t = @import("std").mem.zeroes(__uid_t),
    cgid: __gid_t = @import("std").mem.zeroes(__gid_t),
    mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    __seq: c_ushort = @import("std").mem.zeroes(c_ushort),
    __pad2: c_ushort = @import("std").mem.zeroes(c_ushort),
    __glibc_reserved1: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    __glibc_reserved2: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
};
pub extern fn ftok(__pathname: [*c]const u8, __proj_id: c_int) key_t;
pub extern fn __getpagesize() c_int;
pub const shmatt_t = __syscall_ulong_t;
pub const struct_shmid_ds = extern struct {
    shm_perm: struct_ipc_perm = @import("std").mem.zeroes(struct_ipc_perm),
    shm_segsz: usize = @import("std").mem.zeroes(usize),
    shm_atime: __time_t = @import("std").mem.zeroes(__time_t),
    shm_dtime: __time_t = @import("std").mem.zeroes(__time_t),
    shm_ctime: __time_t = @import("std").mem.zeroes(__time_t),
    shm_cpid: __pid_t = @import("std").mem.zeroes(__pid_t),
    shm_lpid: __pid_t = @import("std").mem.zeroes(__pid_t),
    shm_nattch: shmatt_t = @import("std").mem.zeroes(shmatt_t),
    __glibc_reserved5: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    __glibc_reserved6: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
};
pub const struct_shminfo = extern struct {
    shmmax: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    shmmin: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    shmmni: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    shmseg: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    shmall: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    __glibc_reserved1: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    __glibc_reserved2: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    __glibc_reserved3: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    __glibc_reserved4: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
};
pub const struct_shm_info = extern struct {
    used_ids: c_int = @import("std").mem.zeroes(c_int),
    shm_tot: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    shm_rss: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    shm_swp: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    swap_attempts: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
    swap_successes: __syscall_ulong_t = @import("std").mem.zeroes(__syscall_ulong_t),
};
pub extern fn shmctl(__shmid: c_int, __cmd: c_int, __buf: [*c]struct_shmid_ds) c_int;
pub extern fn shmget(__key: key_t, __size: usize, __shmflg: c_int) c_int;
pub extern fn shmat(__shmid: c_int, __shmaddr: ?*const anyopaque, __shmflg: c_int) ?*anyopaque;
pub extern fn shmdt(__shmaddr: ?*const anyopaque) c_int;
pub const ShmSeg = c_ulong;
pub const XShmCompletionEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    drawable: Drawable = @import("std").mem.zeroes(Drawable),
    major_code: c_int = @import("std").mem.zeroes(c_int),
    minor_code: c_int = @import("std").mem.zeroes(c_int),
    shmseg: ShmSeg = @import("std").mem.zeroes(ShmSeg),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};
pub const XShmSegmentInfo = extern struct {
    shmseg: ShmSeg = @import("std").mem.zeroes(ShmSeg),
    shmid: c_int = @import("std").mem.zeroes(c_int),
    shmaddr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    readOnly: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn XShmQueryExtension(?*Display) c_int;
pub extern fn XShmGetEventBase(?*Display) c_int;
pub extern fn XShmQueryVersion(?*Display, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XShmPixmapFormat(?*Display) c_int;
pub extern fn XShmAttach(?*Display, [*c]XShmSegmentInfo) c_int;
pub extern fn XShmDetach(?*Display, [*c]XShmSegmentInfo) c_int;
pub extern fn XShmPutImage(?*Display, Drawable, GC, [*c]XImage, c_int, c_int, c_int, c_int, c_uint, c_uint, c_int) c_int;
pub extern fn XShmGetImage(?*Display, Drawable, [*c]XImage, c_int, c_int, c_ulong) c_int;
pub extern fn XShmCreateImage(?*Display, [*c]Visual, c_uint, c_int, [*c]u8, [*c]XShmSegmentInfo, c_uint, c_uint) [*c]XImage;
pub extern fn XShmCreatePixmap(?*Display, Drawable, [*c]u8, [*c]XShmSegmentInfo, c_uint, c_uint, c_uint) Pixmap;
pub const struct__XkbStateRec = extern struct {
    group: u8 = @import("std").mem.zeroes(u8),
    locked_group: u8 = @import("std").mem.zeroes(u8),
    base_group: c_ushort = @import("std").mem.zeroes(c_ushort),
    latched_group: c_ushort = @import("std").mem.zeroes(c_ushort),
    mods: u8 = @import("std").mem.zeroes(u8),
    base_mods: u8 = @import("std").mem.zeroes(u8),
    latched_mods: u8 = @import("std").mem.zeroes(u8),
    locked_mods: u8 = @import("std").mem.zeroes(u8),
    compat_state: u8 = @import("std").mem.zeroes(u8),
    grab_mods: u8 = @import("std").mem.zeroes(u8),
    compat_grab_mods: u8 = @import("std").mem.zeroes(u8),
    lookup_mods: u8 = @import("std").mem.zeroes(u8),
    compat_lookup_mods: u8 = @import("std").mem.zeroes(u8),
    ptr_buttons: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbStateRec = struct__XkbStateRec;
pub const XkbStatePtr = [*c]struct__XkbStateRec;
pub const struct__XkbMods = extern struct {
    mask: u8 = @import("std").mem.zeroes(u8),
    real_mods: u8 = @import("std").mem.zeroes(u8),
    vmods: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbModsRec = struct__XkbMods;
pub const XkbModsPtr = [*c]struct__XkbMods;
pub const struct__XkbKTMapEntry = extern struct {
    active: c_int = @import("std").mem.zeroes(c_int),
    level: u8 = @import("std").mem.zeroes(u8),
    mods: XkbModsRec = @import("std").mem.zeroes(XkbModsRec),
};
pub const XkbKTMapEntryRec = struct__XkbKTMapEntry;
pub const XkbKTMapEntryPtr = [*c]struct__XkbKTMapEntry;
pub const struct__XkbKeyType = extern struct {
    mods: XkbModsRec = @import("std").mem.zeroes(XkbModsRec),
    num_levels: u8 = @import("std").mem.zeroes(u8),
    map_count: u8 = @import("std").mem.zeroes(u8),
    map: XkbKTMapEntryPtr = @import("std").mem.zeroes(XkbKTMapEntryPtr),
    preserve: XkbModsPtr = @import("std").mem.zeroes(XkbModsPtr),
    name: Atom = @import("std").mem.zeroes(Atom),
    level_names: [*c]Atom = @import("std").mem.zeroes([*c]Atom),
};
pub const XkbKeyTypeRec = struct__XkbKeyType;
pub const XkbKeyTypePtr = [*c]struct__XkbKeyType;
pub const struct__XkbBehavior = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    data: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbBehavior = struct__XkbBehavior;
pub const struct__XkbAnyAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    data: [7]u8 = @import("std").mem.zeroes([7]u8),
};
pub const XkbAnyAction = struct__XkbAnyAction;
pub const struct__XkbModAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    mask: u8 = @import("std").mem.zeroes(u8),
    real_mods: u8 = @import("std").mem.zeroes(u8),
    vmods1: u8 = @import("std").mem.zeroes(u8),
    vmods2: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbModAction = struct__XkbModAction;
pub const struct__XkbGroupAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    group_XXX: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbGroupAction = struct__XkbGroupAction;
pub const struct__XkbISOAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    mask: u8 = @import("std").mem.zeroes(u8),
    real_mods: u8 = @import("std").mem.zeroes(u8),
    group_XXX: u8 = @import("std").mem.zeroes(u8),
    affect: u8 = @import("std").mem.zeroes(u8),
    vmods1: u8 = @import("std").mem.zeroes(u8),
    vmods2: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbISOAction = struct__XkbISOAction;
pub const struct__XkbPtrAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    high_XXX: u8 = @import("std").mem.zeroes(u8),
    low_XXX: u8 = @import("std").mem.zeroes(u8),
    high_YYY: u8 = @import("std").mem.zeroes(u8),
    low_YYY: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbPtrAction = struct__XkbPtrAction;
pub const struct__XkbPtrBtnAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    count: u8 = @import("std").mem.zeroes(u8),
    button: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbPtrBtnAction = struct__XkbPtrBtnAction;
pub const struct__XkbPtrDfltAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    affect: u8 = @import("std").mem.zeroes(u8),
    valueXXX: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbPtrDfltAction = struct__XkbPtrDfltAction;
pub const struct__XkbSwitchScreenAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    screenXXX: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbSwitchScreenAction = struct__XkbSwitchScreenAction;
pub const struct__XkbCtrlsAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    ctrls3: u8 = @import("std").mem.zeroes(u8),
    ctrls2: u8 = @import("std").mem.zeroes(u8),
    ctrls1: u8 = @import("std").mem.zeroes(u8),
    ctrls0: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbCtrlsAction = struct__XkbCtrlsAction;
pub const struct__XkbMessageAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    message: [6]u8 = @import("std").mem.zeroes([6]u8),
};
pub const XkbMessageAction = struct__XkbMessageAction;
pub const struct__XkbRedirectKeyAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    new_key: u8 = @import("std").mem.zeroes(u8),
    mods_mask: u8 = @import("std").mem.zeroes(u8),
    mods: u8 = @import("std").mem.zeroes(u8),
    vmods_mask0: u8 = @import("std").mem.zeroes(u8),
    vmods_mask1: u8 = @import("std").mem.zeroes(u8),
    vmods0: u8 = @import("std").mem.zeroes(u8),
    vmods1: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbRedirectKeyAction = struct__XkbRedirectKeyAction;
pub const struct__XkbDeviceBtnAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    flags: u8 = @import("std").mem.zeroes(u8),
    count: u8 = @import("std").mem.zeroes(u8),
    button: u8 = @import("std").mem.zeroes(u8),
    device: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbDeviceBtnAction = struct__XkbDeviceBtnAction;
pub const struct__XkbDeviceValuatorAction = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    device: u8 = @import("std").mem.zeroes(u8),
    v1_what: u8 = @import("std").mem.zeroes(u8),
    v1_ndx: u8 = @import("std").mem.zeroes(u8),
    v1_value: u8 = @import("std").mem.zeroes(u8),
    v2_what: u8 = @import("std").mem.zeroes(u8),
    v2_ndx: u8 = @import("std").mem.zeroes(u8),
    v2_value: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbDeviceValuatorAction = struct__XkbDeviceValuatorAction;
pub const union__XkbAction = extern union {
    any: XkbAnyAction,
    mods: XkbModAction,
    group: XkbGroupAction,
    iso: XkbISOAction,
    ptr: XkbPtrAction,
    btn: XkbPtrBtnAction,
    dflt: XkbPtrDfltAction,
    screen: XkbSwitchScreenAction,
    ctrls: XkbCtrlsAction,
    msg: XkbMessageAction,
    redirect: XkbRedirectKeyAction,
    devbtn: XkbDeviceBtnAction,
    devval: XkbDeviceValuatorAction,
    type: u8,
};
pub const XkbAction = union__XkbAction;
pub const struct__XkbControls = extern struct {
    mk_dflt_btn: u8 = @import("std").mem.zeroes(u8),
    num_groups: u8 = @import("std").mem.zeroes(u8),
    groups_wrap: u8 = @import("std").mem.zeroes(u8),
    internal: XkbModsRec = @import("std").mem.zeroes(XkbModsRec),
    ignore_lock: XkbModsRec = @import("std").mem.zeroes(XkbModsRec),
    enabled_ctrls: c_uint = @import("std").mem.zeroes(c_uint),
    repeat_delay: c_ushort = @import("std").mem.zeroes(c_ushort),
    repeat_interval: c_ushort = @import("std").mem.zeroes(c_ushort),
    slow_keys_delay: c_ushort = @import("std").mem.zeroes(c_ushort),
    debounce_delay: c_ushort = @import("std").mem.zeroes(c_ushort),
    mk_delay: c_ushort = @import("std").mem.zeroes(c_ushort),
    mk_interval: c_ushort = @import("std").mem.zeroes(c_ushort),
    mk_time_to_max: c_ushort = @import("std").mem.zeroes(c_ushort),
    mk_max_speed: c_ushort = @import("std").mem.zeroes(c_ushort),
    mk_curve: c_short = @import("std").mem.zeroes(c_short),
    ax_options: c_ushort = @import("std").mem.zeroes(c_ushort),
    ax_timeout: c_ushort = @import("std").mem.zeroes(c_ushort),
    axt_opts_mask: c_ushort = @import("std").mem.zeroes(c_ushort),
    axt_opts_values: c_ushort = @import("std").mem.zeroes(c_ushort),
    axt_ctrls_mask: c_uint = @import("std").mem.zeroes(c_uint),
    axt_ctrls_values: c_uint = @import("std").mem.zeroes(c_uint),
    per_key_repeat: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const XkbControlsRec = struct__XkbControls;
pub const XkbControlsPtr = [*c]struct__XkbControls;
pub const struct__XkbServerMapRec = extern struct {
    num_acts: c_ushort = @import("std").mem.zeroes(c_ushort),
    size_acts: c_ushort = @import("std").mem.zeroes(c_ushort),
    acts: [*c]XkbAction = @import("std").mem.zeroes([*c]XkbAction),
    behaviors: [*c]XkbBehavior = @import("std").mem.zeroes([*c]XkbBehavior),
    key_acts: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
    explicit: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    vmods: [16]u8 = @import("std").mem.zeroes([16]u8),
    vmodmap: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
};
pub const XkbServerMapRec = struct__XkbServerMapRec;
pub const XkbServerMapPtr = [*c]struct__XkbServerMapRec;
pub const struct__XkbSymMapRec = extern struct {
    kt_index: [4]u8 = @import("std").mem.zeroes([4]u8),
    group_info: u8 = @import("std").mem.zeroes(u8),
    width: u8 = @import("std").mem.zeroes(u8),
    offset: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbSymMapRec = struct__XkbSymMapRec;
pub const XkbSymMapPtr = [*c]struct__XkbSymMapRec;
pub const struct__XkbClientMapRec = extern struct {
    size_types: u8 = @import("std").mem.zeroes(u8),
    num_types: u8 = @import("std").mem.zeroes(u8),
    types: XkbKeyTypePtr = @import("std").mem.zeroes(XkbKeyTypePtr),
    size_syms: c_ushort = @import("std").mem.zeroes(c_ushort),
    num_syms: c_ushort = @import("std").mem.zeroes(c_ushort),
    syms: [*c]KeySym = @import("std").mem.zeroes([*c]KeySym),
    key_sym_map: XkbSymMapPtr = @import("std").mem.zeroes(XkbSymMapPtr),
    modmap: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const XkbClientMapRec = struct__XkbClientMapRec;
pub const XkbClientMapPtr = [*c]struct__XkbClientMapRec;
pub const struct__XkbSymInterpretRec = extern struct {
    sym: KeySym = @import("std").mem.zeroes(KeySym),
    flags: u8 = @import("std").mem.zeroes(u8),
    match: u8 = @import("std").mem.zeroes(u8),
    mods: u8 = @import("std").mem.zeroes(u8),
    virtual_mod: u8 = @import("std").mem.zeroes(u8),
    act: XkbAnyAction = @import("std").mem.zeroes(XkbAnyAction),
};
pub const XkbSymInterpretRec = struct__XkbSymInterpretRec;
pub const XkbSymInterpretPtr = [*c]struct__XkbSymInterpretRec;
pub const struct__XkbCompatMapRec = extern struct {
    sym_interpret: XkbSymInterpretPtr = @import("std").mem.zeroes(XkbSymInterpretPtr),
    groups: [4]XkbModsRec = @import("std").mem.zeroes([4]XkbModsRec),
    num_si: c_ushort = @import("std").mem.zeroes(c_ushort),
    size_si: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbCompatMapRec = struct__XkbCompatMapRec;
pub const XkbCompatMapPtr = [*c]struct__XkbCompatMapRec;
pub const struct__XkbIndicatorMapRec = extern struct {
    flags: u8 = @import("std").mem.zeroes(u8),
    which_groups: u8 = @import("std").mem.zeroes(u8),
    groups: u8 = @import("std").mem.zeroes(u8),
    which_mods: u8 = @import("std").mem.zeroes(u8),
    mods: XkbModsRec = @import("std").mem.zeroes(XkbModsRec),
    ctrls: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const XkbIndicatorMapRec = struct__XkbIndicatorMapRec;
pub const XkbIndicatorMapPtr = [*c]struct__XkbIndicatorMapRec;
pub const struct__XkbIndicatorRec = extern struct {
    phys_indicators: c_ulong = @import("std").mem.zeroes(c_ulong),
    maps: [32]XkbIndicatorMapRec = @import("std").mem.zeroes([32]XkbIndicatorMapRec),
};
pub const XkbIndicatorRec = struct__XkbIndicatorRec;
pub const XkbIndicatorPtr = [*c]struct__XkbIndicatorRec;
pub const struct__XkbKeyNameRec = extern struct {
    name: [4]u8 = @import("std").mem.zeroes([4]u8),
};
pub const XkbKeyNameRec = struct__XkbKeyNameRec;
pub const XkbKeyNamePtr = [*c]struct__XkbKeyNameRec;
pub const struct__XkbKeyAliasRec = extern struct {
    real: [4]u8 = @import("std").mem.zeroes([4]u8),
    alias: [4]u8 = @import("std").mem.zeroes([4]u8),
};
pub const XkbKeyAliasRec = struct__XkbKeyAliasRec;
pub const XkbKeyAliasPtr = [*c]struct__XkbKeyAliasRec;
pub const struct__XkbNamesRec = extern struct {
    keycodes: Atom = @import("std").mem.zeroes(Atom),
    geometry: Atom = @import("std").mem.zeroes(Atom),
    symbols: Atom = @import("std").mem.zeroes(Atom),
    types: Atom = @import("std").mem.zeroes(Atom),
    compat: Atom = @import("std").mem.zeroes(Atom),
    vmods: [16]Atom = @import("std").mem.zeroes([16]Atom),
    indicators: [32]Atom = @import("std").mem.zeroes([32]Atom),
    groups: [4]Atom = @import("std").mem.zeroes([4]Atom),
    keys: XkbKeyNamePtr = @import("std").mem.zeroes(XkbKeyNamePtr),
    key_aliases: XkbKeyAliasPtr = @import("std").mem.zeroes(XkbKeyAliasPtr),
    radio_groups: [*c]Atom = @import("std").mem.zeroes([*c]Atom),
    phys_symbols: Atom = @import("std").mem.zeroes(Atom),
    num_keys: u8 = @import("std").mem.zeroes(u8),
    num_key_aliases: u8 = @import("std").mem.zeroes(u8),
    num_rg: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbNamesRec = struct__XkbNamesRec;
pub const XkbNamesPtr = [*c]struct__XkbNamesRec;
pub const struct__XkbGeometry = opaque {};
pub const XkbGeometryPtr = ?*struct__XkbGeometry;
pub const struct__XkbDesc = extern struct {
    dpy: ?*struct__XDisplay = @import("std").mem.zeroes(?*struct__XDisplay),
    flags: c_ushort = @import("std").mem.zeroes(c_ushort),
    device_spec: c_ushort = @import("std").mem.zeroes(c_ushort),
    min_key_code: KeyCode = @import("std").mem.zeroes(KeyCode),
    max_key_code: KeyCode = @import("std").mem.zeroes(KeyCode),
    ctrls: XkbControlsPtr = @import("std").mem.zeroes(XkbControlsPtr),
    server: XkbServerMapPtr = @import("std").mem.zeroes(XkbServerMapPtr),
    map: XkbClientMapPtr = @import("std").mem.zeroes(XkbClientMapPtr),
    indicators: XkbIndicatorPtr = @import("std").mem.zeroes(XkbIndicatorPtr),
    names: XkbNamesPtr = @import("std").mem.zeroes(XkbNamesPtr),
    compat: XkbCompatMapPtr = @import("std").mem.zeroes(XkbCompatMapPtr),
    geom: XkbGeometryPtr = @import("std").mem.zeroes(XkbGeometryPtr),
};
pub const XkbDescRec = struct__XkbDesc;
pub const XkbDescPtr = [*c]struct__XkbDesc;
pub const struct__XkbMapChanges = extern struct {
    changed: c_ushort = @import("std").mem.zeroes(c_ushort),
    min_key_code: KeyCode = @import("std").mem.zeroes(KeyCode),
    max_key_code: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_type: u8 = @import("std").mem.zeroes(u8),
    num_types: u8 = @import("std").mem.zeroes(u8),
    first_key_sym: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_key_syms: u8 = @import("std").mem.zeroes(u8),
    first_key_act: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_key_acts: u8 = @import("std").mem.zeroes(u8),
    first_key_behavior: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_key_behaviors: u8 = @import("std").mem.zeroes(u8),
    first_key_explicit: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_key_explicit: u8 = @import("std").mem.zeroes(u8),
    first_modmap_key: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_modmap_keys: u8 = @import("std").mem.zeroes(u8),
    first_vmodmap_key: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_vmodmap_keys: u8 = @import("std").mem.zeroes(u8),
    pad: u8 = @import("std").mem.zeroes(u8),
    vmods: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbMapChangesRec = struct__XkbMapChanges;
pub const XkbMapChangesPtr = [*c]struct__XkbMapChanges;
pub const struct__XkbControlsChanges = extern struct {
    changed_ctrls: c_uint = @import("std").mem.zeroes(c_uint),
    enabled_ctrls_changes: c_uint = @import("std").mem.zeroes(c_uint),
    num_groups_changed: c_int = @import("std").mem.zeroes(c_int),
};
pub const XkbControlsChangesRec = struct__XkbControlsChanges;
pub const XkbControlsChangesPtr = [*c]struct__XkbControlsChanges;
pub const struct__XkbIndicatorChanges = extern struct {
    state_changes: c_uint = @import("std").mem.zeroes(c_uint),
    map_changes: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const XkbIndicatorChangesRec = struct__XkbIndicatorChanges;
pub const XkbIndicatorChangesPtr = [*c]struct__XkbIndicatorChanges;
pub const struct__XkbNameChanges = extern struct {
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    first_type: u8 = @import("std").mem.zeroes(u8),
    num_types: u8 = @import("std").mem.zeroes(u8),
    first_lvl: u8 = @import("std").mem.zeroes(u8),
    num_lvls: u8 = @import("std").mem.zeroes(u8),
    num_aliases: u8 = @import("std").mem.zeroes(u8),
    num_rg: u8 = @import("std").mem.zeroes(u8),
    first_key: u8 = @import("std").mem.zeroes(u8),
    num_keys: u8 = @import("std").mem.zeroes(u8),
    changed_vmods: c_ushort = @import("std").mem.zeroes(c_ushort),
    changed_indicators: c_ulong = @import("std").mem.zeroes(c_ulong),
    changed_groups: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbNameChangesRec = struct__XkbNameChanges;
pub const XkbNameChangesPtr = [*c]struct__XkbNameChanges;
pub const struct__XkbCompatChanges = extern struct {
    changed_groups: u8 = @import("std").mem.zeroes(u8),
    first_si: c_ushort = @import("std").mem.zeroes(c_ushort),
    num_si: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const XkbCompatChangesRec = struct__XkbCompatChanges;
pub const XkbCompatChangesPtr = [*c]struct__XkbCompatChanges;
pub const struct__XkbChanges = extern struct {
    device_spec: c_ushort = @import("std").mem.zeroes(c_ushort),
    state_changes: c_ushort = @import("std").mem.zeroes(c_ushort),
    map: XkbMapChangesRec = @import("std").mem.zeroes(XkbMapChangesRec),
    ctrls: XkbControlsChangesRec = @import("std").mem.zeroes(XkbControlsChangesRec),
    indicators: XkbIndicatorChangesRec = @import("std").mem.zeroes(XkbIndicatorChangesRec),
    names: XkbNameChangesRec = @import("std").mem.zeroes(XkbNameChangesRec),
    compat: XkbCompatChangesRec = @import("std").mem.zeroes(XkbCompatChangesRec),
};
pub const XkbChangesRec = struct__XkbChanges;
pub const XkbChangesPtr = [*c]struct__XkbChanges;
pub const struct__XkbComponentNames = extern struct {
    keymap: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    keycodes: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    types: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    compat: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    symbols: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    geometry: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const XkbComponentNamesRec = struct__XkbComponentNames;
pub const XkbComponentNamesPtr = [*c]struct__XkbComponentNames;
pub const struct__XkbComponentName = extern struct {
    flags: c_ushort = @import("std").mem.zeroes(c_ushort),
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const XkbComponentNameRec = struct__XkbComponentName;
pub const XkbComponentNamePtr = [*c]struct__XkbComponentName;
pub const struct__XkbComponentList = extern struct {
    num_keymaps: c_int = @import("std").mem.zeroes(c_int),
    num_keycodes: c_int = @import("std").mem.zeroes(c_int),
    num_types: c_int = @import("std").mem.zeroes(c_int),
    num_compat: c_int = @import("std").mem.zeroes(c_int),
    num_symbols: c_int = @import("std").mem.zeroes(c_int),
    num_geometry: c_int = @import("std").mem.zeroes(c_int),
    keymaps: XkbComponentNamePtr = @import("std").mem.zeroes(XkbComponentNamePtr),
    keycodes: XkbComponentNamePtr = @import("std").mem.zeroes(XkbComponentNamePtr),
    types: XkbComponentNamePtr = @import("std").mem.zeroes(XkbComponentNamePtr),
    compat: XkbComponentNamePtr = @import("std").mem.zeroes(XkbComponentNamePtr),
    symbols: XkbComponentNamePtr = @import("std").mem.zeroes(XkbComponentNamePtr),
    geometry: XkbComponentNamePtr = @import("std").mem.zeroes(XkbComponentNamePtr),
};
pub const XkbComponentListRec = struct__XkbComponentList;
pub const XkbComponentListPtr = [*c]struct__XkbComponentList;
pub const struct__XkbDeviceLedInfo = extern struct {
    led_class: c_ushort = @import("std").mem.zeroes(c_ushort),
    led_id: c_ushort = @import("std").mem.zeroes(c_ushort),
    phys_indicators: c_uint = @import("std").mem.zeroes(c_uint),
    maps_present: c_uint = @import("std").mem.zeroes(c_uint),
    names_present: c_uint = @import("std").mem.zeroes(c_uint),
    state: c_uint = @import("std").mem.zeroes(c_uint),
    names: [32]Atom = @import("std").mem.zeroes([32]Atom),
    maps: [32]XkbIndicatorMapRec = @import("std").mem.zeroes([32]XkbIndicatorMapRec),
};
pub const XkbDeviceLedInfoRec = struct__XkbDeviceLedInfo;
pub const XkbDeviceLedInfoPtr = [*c]struct__XkbDeviceLedInfo;
pub const struct__XkbDeviceInfo = extern struct {
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    type: Atom = @import("std").mem.zeroes(Atom),
    device_spec: c_ushort = @import("std").mem.zeroes(c_ushort),
    has_own_state: c_int = @import("std").mem.zeroes(c_int),
    supported: c_ushort = @import("std").mem.zeroes(c_ushort),
    unsupported: c_ushort = @import("std").mem.zeroes(c_ushort),
    num_btns: c_ushort = @import("std").mem.zeroes(c_ushort),
    btn_acts: [*c]XkbAction = @import("std").mem.zeroes([*c]XkbAction),
    sz_leds: c_ushort = @import("std").mem.zeroes(c_ushort),
    num_leds: c_ushort = @import("std").mem.zeroes(c_ushort),
    dflt_kbd_fb: c_ushort = @import("std").mem.zeroes(c_ushort),
    dflt_led_fb: c_ushort = @import("std").mem.zeroes(c_ushort),
    leds: XkbDeviceLedInfoPtr = @import("std").mem.zeroes(XkbDeviceLedInfoPtr),
};
pub const XkbDeviceInfoRec = struct__XkbDeviceInfo;
pub const XkbDeviceInfoPtr = [*c]struct__XkbDeviceInfo;
pub const struct__XkbDeviceLedChanges = extern struct {
    led_class: c_ushort = @import("std").mem.zeroes(c_ushort),
    led_id: c_ushort = @import("std").mem.zeroes(c_ushort),
    defined: c_uint = @import("std").mem.zeroes(c_uint),
    next: [*c]struct__XkbDeviceLedChanges = @import("std").mem.zeroes([*c]struct__XkbDeviceLedChanges),
};
pub const XkbDeviceLedChangesRec = struct__XkbDeviceLedChanges;
pub const XkbDeviceLedChangesPtr = [*c]struct__XkbDeviceLedChanges;
pub const struct__XkbDeviceChanges = extern struct {
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    first_btn: c_ushort = @import("std").mem.zeroes(c_ushort),
    num_btns: c_ushort = @import("std").mem.zeroes(c_ushort),
    leds: XkbDeviceLedChangesRec = @import("std").mem.zeroes(XkbDeviceLedChangesRec),
};
pub const XkbDeviceChangesRec = struct__XkbDeviceChanges;
pub const XkbDeviceChangesPtr = [*c]struct__XkbDeviceChanges;
pub const struct__XkbAnyEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const XkbAnyEvent = struct__XkbAnyEvent;
pub const struct__XkbNewKeyboardNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    old_device: c_int = @import("std").mem.zeroes(c_int),
    min_key_code: c_int = @import("std").mem.zeroes(c_int),
    max_key_code: c_int = @import("std").mem.zeroes(c_int),
    old_min_key_code: c_int = @import("std").mem.zeroes(c_int),
    old_max_key_code: c_int = @import("std").mem.zeroes(c_int),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    req_major: u8 = @import("std").mem.zeroes(u8),
    req_minor: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbNewKeyboardNotifyEvent = struct__XkbNewKeyboardNotify;
pub const struct__XkbMapNotifyEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
    first_type: c_int = @import("std").mem.zeroes(c_int),
    num_types: c_int = @import("std").mem.zeroes(c_int),
    min_key_code: KeyCode = @import("std").mem.zeroes(KeyCode),
    max_key_code: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_key_sym: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_key_act: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_key_behavior: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_key_explicit: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_modmap_key: KeyCode = @import("std").mem.zeroes(KeyCode),
    first_vmodmap_key: KeyCode = @import("std").mem.zeroes(KeyCode),
    num_key_syms: c_int = @import("std").mem.zeroes(c_int),
    num_key_acts: c_int = @import("std").mem.zeroes(c_int),
    num_key_behaviors: c_int = @import("std").mem.zeroes(c_int),
    num_key_explicit: c_int = @import("std").mem.zeroes(c_int),
    num_modmap_keys: c_int = @import("std").mem.zeroes(c_int),
    num_vmodmap_keys: c_int = @import("std").mem.zeroes(c_int),
    vmods: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const XkbMapNotifyEvent = struct__XkbMapNotifyEvent;
pub const struct__XkbStateNotifyEvent = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    group: c_int = @import("std").mem.zeroes(c_int),
    base_group: c_int = @import("std").mem.zeroes(c_int),
    latched_group: c_int = @import("std").mem.zeroes(c_int),
    locked_group: c_int = @import("std").mem.zeroes(c_int),
    mods: c_uint = @import("std").mem.zeroes(c_uint),
    base_mods: c_uint = @import("std").mem.zeroes(c_uint),
    latched_mods: c_uint = @import("std").mem.zeroes(c_uint),
    locked_mods: c_uint = @import("std").mem.zeroes(c_uint),
    compat_state: c_int = @import("std").mem.zeroes(c_int),
    grab_mods: u8 = @import("std").mem.zeroes(u8),
    compat_grab_mods: u8 = @import("std").mem.zeroes(u8),
    lookup_mods: u8 = @import("std").mem.zeroes(u8),
    compat_lookup_mods: u8 = @import("std").mem.zeroes(u8),
    ptr_buttons: c_int = @import("std").mem.zeroes(c_int),
    keycode: KeyCode = @import("std").mem.zeroes(KeyCode),
    event_type: u8 = @import("std").mem.zeroes(u8),
    req_major: u8 = @import("std").mem.zeroes(u8),
    req_minor: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbStateNotifyEvent = struct__XkbStateNotifyEvent;
pub const struct__XkbControlsNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    changed_ctrls: c_uint = @import("std").mem.zeroes(c_uint),
    enabled_ctrls: c_uint = @import("std").mem.zeroes(c_uint),
    enabled_ctrl_changes: c_uint = @import("std").mem.zeroes(c_uint),
    num_groups: c_int = @import("std").mem.zeroes(c_int),
    keycode: KeyCode = @import("std").mem.zeroes(KeyCode),
    event_type: u8 = @import("std").mem.zeroes(u8),
    req_major: u8 = @import("std").mem.zeroes(u8),
    req_minor: u8 = @import("std").mem.zeroes(u8),
};
pub const XkbControlsNotifyEvent = struct__XkbControlsNotify;
pub const struct__XkbIndicatorNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    state: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const XkbIndicatorNotifyEvent = struct__XkbIndicatorNotify;
pub const struct__XkbNamesNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    first_type: c_int = @import("std").mem.zeroes(c_int),
    num_types: c_int = @import("std").mem.zeroes(c_int),
    first_lvl: c_int = @import("std").mem.zeroes(c_int),
    num_lvls: c_int = @import("std").mem.zeroes(c_int),
    num_aliases: c_int = @import("std").mem.zeroes(c_int),
    num_radio_groups: c_int = @import("std").mem.zeroes(c_int),
    changed_vmods: c_uint = @import("std").mem.zeroes(c_uint),
    changed_groups: c_uint = @import("std").mem.zeroes(c_uint),
    changed_indicators: c_uint = @import("std").mem.zeroes(c_uint),
    first_key: c_int = @import("std").mem.zeroes(c_int),
    num_keys: c_int = @import("std").mem.zeroes(c_int),
};
pub const XkbNamesNotifyEvent = struct__XkbNamesNotify;
pub const struct__XkbCompatMapNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    changed_groups: c_uint = @import("std").mem.zeroes(c_uint),
    first_si: c_int = @import("std").mem.zeroes(c_int),
    num_si: c_int = @import("std").mem.zeroes(c_int),
    num_total_si: c_int = @import("std").mem.zeroes(c_int),
};
pub const XkbCompatMapNotifyEvent = struct__XkbCompatMapNotify;
pub const struct__XkbBellNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    percent: c_int = @import("std").mem.zeroes(c_int),
    pitch: c_int = @import("std").mem.zeroes(c_int),
    duration: c_int = @import("std").mem.zeroes(c_int),
    bell_class: c_int = @import("std").mem.zeroes(c_int),
    bell_id: c_int = @import("std").mem.zeroes(c_int),
    name: Atom = @import("std").mem.zeroes(Atom),
    window: Window = @import("std").mem.zeroes(Window),
    event_only: c_int = @import("std").mem.zeroes(c_int),
};
pub const XkbBellNotifyEvent = struct__XkbBellNotify;
pub const struct__XkbActionMessage = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    keycode: KeyCode = @import("std").mem.zeroes(KeyCode),
    press: c_int = @import("std").mem.zeroes(c_int),
    key_event_follows: c_int = @import("std").mem.zeroes(c_int),
    group: c_int = @import("std").mem.zeroes(c_int),
    mods: c_uint = @import("std").mem.zeroes(c_uint),
    message: [7]u8 = @import("std").mem.zeroes([7]u8),
};
pub const XkbActionMessageEvent = struct__XkbActionMessage;
pub const struct__XkbAccessXNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    detail: c_int = @import("std").mem.zeroes(c_int),
    keycode: c_int = @import("std").mem.zeroes(c_int),
    sk_delay: c_int = @import("std").mem.zeroes(c_int),
    debounce_delay: c_int = @import("std").mem.zeroes(c_int),
};
pub const XkbAccessXNotifyEvent = struct__XkbAccessXNotify;
pub const struct__XkbExtensionDeviceNotify = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    serial: c_ulong = @import("std").mem.zeroes(c_ulong),
    send_event: c_int = @import("std").mem.zeroes(c_int),
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    time: Time = @import("std").mem.zeroes(Time),
    xkb_type: c_int = @import("std").mem.zeroes(c_int),
    device: c_int = @import("std").mem.zeroes(c_int),
    reason: c_uint = @import("std").mem.zeroes(c_uint),
    supported: c_uint = @import("std").mem.zeroes(c_uint),
    unsupported: c_uint = @import("std").mem.zeroes(c_uint),
    first_btn: c_int = @import("std").mem.zeroes(c_int),
    num_btns: c_int = @import("std").mem.zeroes(c_int),
    leds_defined: c_uint = @import("std").mem.zeroes(c_uint),
    led_state: c_uint = @import("std").mem.zeroes(c_uint),
    led_class: c_int = @import("std").mem.zeroes(c_int),
    led_id: c_int = @import("std").mem.zeroes(c_int),
};
pub const XkbExtensionDeviceNotifyEvent = struct__XkbExtensionDeviceNotify;
pub const union__XkbEvent = extern union {
    type: c_int,
    any: XkbAnyEvent,
    new_kbd: XkbNewKeyboardNotifyEvent,
    map: XkbMapNotifyEvent,
    state: XkbStateNotifyEvent,
    ctrls: XkbControlsNotifyEvent,
    indicators: XkbIndicatorNotifyEvent,
    names: XkbNamesNotifyEvent,
    compat: XkbCompatMapNotifyEvent,
    bell: XkbBellNotifyEvent,
    message: XkbActionMessageEvent,
    accessx: XkbAccessXNotifyEvent,
    device: XkbExtensionDeviceNotifyEvent,
    core: XEvent,
};
pub const XkbEvent = union__XkbEvent;
pub const struct__XkbKbdDpyState = opaque {};
pub const XkbKbdDpyStateRec = struct__XkbKbdDpyState;
pub const XkbKbdDpyStatePtr = ?*struct__XkbKbdDpyState;
pub extern fn XkbIgnoreExtension(c_int) c_int;
pub extern fn XkbOpenDisplay([*c]u8, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int) ?*Display;
pub extern fn XkbQueryExtension(?*Display, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int, [*c]c_int) c_int;
pub extern fn XkbUseExtension(?*Display, [*c]c_int, [*c]c_int) c_int;
pub extern fn XkbLibraryVersion([*c]c_int, [*c]c_int) c_int;
pub extern fn XkbSetXlibControls(?*Display, c_uint, c_uint) c_uint;
pub extern fn XkbGetXlibControls(?*Display) c_uint;
pub extern fn XkbXlibControlsImplemented() c_uint;
pub const XkbInternAtomFunc = ?*const fn (?*Display, [*c]const u8, c_int) callconv(.C) Atom;
pub const XkbGetAtomNameFunc = ?*const fn (?*Display, Atom) callconv(.C) [*c]u8;
pub extern fn XkbSetAtomFuncs(XkbInternAtomFunc, XkbGetAtomNameFunc) void;
pub extern fn XkbKeycodeToKeysym(?*Display, KeyCode, c_int, c_int) KeySym;
pub extern fn XkbKeysymToModifiers(?*Display, KeySym) c_uint;
pub extern fn XkbLookupKeySym(?*Display, KeyCode, c_uint, [*c]c_uint, [*c]KeySym) c_int;
pub extern fn XkbLookupKeyBinding(?*Display, KeySym, c_uint, [*c]u8, c_int, [*c]c_int) c_int;
pub extern fn XkbTranslateKeyCode(XkbDescPtr, KeyCode, c_uint, [*c]c_uint, [*c]KeySym) c_int;
pub extern fn XkbTranslateKeySym(?*Display, [*c]KeySym, c_uint, [*c]u8, c_int, [*c]c_int) c_int;
pub extern fn XkbSetAutoRepeatRate(?*Display, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbGetAutoRepeatRate(?*Display, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XkbChangeEnabledControls(?*Display, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbDeviceBell(?*Display, Window, c_int, c_int, c_int, c_int, Atom) c_int;
pub extern fn XkbForceDeviceBell(?*Display, c_int, c_int, c_int, c_int) c_int;
pub extern fn XkbDeviceBellEvent(?*Display, Window, c_int, c_int, c_int, c_int, Atom) c_int;
pub extern fn XkbBell(?*Display, Window, c_int, Atom) c_int;
pub extern fn XkbForceBell(?*Display, c_int) c_int;
pub extern fn XkbBellEvent(?*Display, Window, c_int, Atom) c_int;
pub extern fn XkbSelectEvents(?*Display, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbSelectEventDetails(?*Display, c_uint, c_uint, c_ulong, c_ulong) c_int;
pub extern fn XkbNoteMapChanges(XkbMapChangesPtr, [*c]XkbMapNotifyEvent, c_uint) void;
pub extern fn XkbNoteNameChanges(XkbNameChangesPtr, [*c]XkbNamesNotifyEvent, c_uint) void;
pub extern fn XkbGetIndicatorState(?*Display, c_uint, [*c]c_uint) c_int;
pub extern fn XkbGetDeviceIndicatorState(?*Display, c_uint, c_uint, c_uint, [*c]c_uint) c_int;
pub extern fn XkbGetIndicatorMap(?*Display, c_ulong, XkbDescPtr) c_int;
pub extern fn XkbSetIndicatorMap(?*Display, c_ulong, XkbDescPtr) c_int;
pub extern fn XkbGetNamedIndicator(?*Display, Atom, [*c]c_int, [*c]c_int, XkbIndicatorMapPtr, [*c]c_int) c_int;
pub extern fn XkbGetNamedDeviceIndicator(?*Display, c_uint, c_uint, c_uint, Atom, [*c]c_int, [*c]c_int, XkbIndicatorMapPtr, [*c]c_int) c_int;
pub extern fn XkbSetNamedIndicator(?*Display, Atom, c_int, c_int, c_int, XkbIndicatorMapPtr) c_int;
pub extern fn XkbSetNamedDeviceIndicator(?*Display, c_uint, c_uint, c_uint, Atom, c_int, c_int, c_int, XkbIndicatorMapPtr) c_int;
pub extern fn XkbLockModifiers(?*Display, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbLatchModifiers(?*Display, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbLockGroup(?*Display, c_uint, c_uint) c_int;
pub extern fn XkbLatchGroup(?*Display, c_uint, c_uint) c_int;
pub extern fn XkbSetServerInternalMods(?*Display, c_uint, c_uint, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbSetIgnoreLockMods(?*Display, c_uint, c_uint, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbVirtualModsToReal(XkbDescPtr, c_uint, [*c]c_uint) c_int;
pub extern fn XkbComputeEffectiveMap(XkbDescPtr, XkbKeyTypePtr, [*c]u8) c_int;
pub extern fn XkbInitCanonicalKeyTypes(XkbDescPtr, c_uint, c_int) c_int;
pub extern fn XkbAllocKeyboard() XkbDescPtr;
pub extern fn XkbFreeKeyboard(XkbDescPtr, c_uint, c_int) void;
pub extern fn XkbAllocClientMap(XkbDescPtr, c_uint, c_uint) c_int;
pub extern fn XkbAllocServerMap(XkbDescPtr, c_uint, c_uint) c_int;
pub extern fn XkbFreeClientMap(XkbDescPtr, c_uint, c_int) void;
pub extern fn XkbFreeServerMap(XkbDescPtr, c_uint, c_int) void;
pub extern fn XkbAddKeyType(XkbDescPtr, Atom, c_int, c_int, c_int) XkbKeyTypePtr;
pub extern fn XkbAllocIndicatorMaps(XkbDescPtr) c_int;
pub extern fn XkbFreeIndicatorMaps(XkbDescPtr) void;
pub extern fn XkbGetMap(?*Display, c_uint, c_uint) XkbDescPtr;
pub extern fn XkbGetUpdatedMap(?*Display, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetMapChanges(?*Display, XkbDescPtr, XkbMapChangesPtr) c_int;
pub extern fn XkbRefreshKeyboardMapping([*c]XkbMapNotifyEvent) c_int;
pub extern fn XkbGetKeyTypes(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetKeySyms(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetKeyActions(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetKeyBehaviors(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetVirtualMods(?*Display, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetKeyExplicitComponents(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetKeyModifierMap(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbGetKeyVirtualModMap(?*Display, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbAllocControls(XkbDescPtr, c_uint) c_int;
pub extern fn XkbFreeControls(XkbDescPtr, c_uint, c_int) void;
pub extern fn XkbGetControls(?*Display, c_ulong, XkbDescPtr) c_int;
pub extern fn XkbSetControls(?*Display, c_ulong, XkbDescPtr) c_int;
pub extern fn XkbNoteControlsChanges(XkbControlsChangesPtr, [*c]XkbControlsNotifyEvent, c_uint) void;
pub extern fn XkbAllocCompatMap(XkbDescPtr, c_uint, c_uint) c_int;
pub extern fn XkbFreeCompatMap(XkbDescPtr, c_uint, c_int) void;
pub extern fn XkbGetCompatMap(?*Display, c_uint, XkbDescPtr) c_int;
pub extern fn XkbSetCompatMap(?*Display, c_uint, XkbDescPtr, c_int) c_int;
pub extern fn XkbAddSymInterpret(XkbDescPtr, XkbSymInterpretPtr, c_int, XkbChangesPtr) XkbSymInterpretPtr;
pub extern fn XkbAllocNames(XkbDescPtr, c_uint, c_int, c_int) c_int;
pub extern fn XkbGetNames(?*Display, c_uint, XkbDescPtr) c_int;
pub extern fn XkbSetNames(?*Display, c_uint, c_uint, c_uint, XkbDescPtr) c_int;
pub extern fn XkbChangeNames(?*Display, XkbDescPtr, XkbNameChangesPtr) c_int;
pub extern fn XkbFreeNames(XkbDescPtr, c_uint, c_int) void;
pub extern fn XkbGetState(?*Display, c_uint, XkbStatePtr) c_int;
pub extern fn XkbSetMap(?*Display, c_uint, XkbDescPtr) c_int;
pub extern fn XkbChangeMap(?*Display, XkbDescPtr, XkbMapChangesPtr) c_int;
pub extern fn XkbSetDetectableAutoRepeat(?*Display, c_int, [*c]c_int) c_int;
pub extern fn XkbGetDetectableAutoRepeat(?*Display, [*c]c_int) c_int;
pub extern fn XkbSetAutoResetControls(?*Display, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XkbGetAutoResetControls(?*Display, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XkbSetPerClientControls(?*Display, c_uint, [*c]c_uint) c_int;
pub extern fn XkbGetPerClientControls(?*Display, [*c]c_uint) c_int;
pub extern fn XkbCopyKeyType(XkbKeyTypePtr, XkbKeyTypePtr) c_int;
pub extern fn XkbCopyKeyTypes(XkbKeyTypePtr, XkbKeyTypePtr, c_int) c_int;
pub extern fn XkbResizeKeyType(XkbDescPtr, c_int, c_int, c_int, c_int) c_int;
pub extern fn XkbResizeKeySyms(XkbDescPtr, c_int, c_int) [*c]KeySym;
pub extern fn XkbResizeKeyActions(XkbDescPtr, c_int, c_int) [*c]XkbAction;
pub extern fn XkbChangeTypesOfKey(XkbDescPtr, c_int, c_int, c_uint, [*c]c_int, XkbMapChangesPtr) c_int;
pub extern fn XkbChangeKeycodeRange(XkbDescPtr, c_int, c_int, XkbChangesPtr) c_int;
pub extern fn XkbListComponents(?*Display, c_uint, XkbComponentNamesPtr, [*c]c_int) XkbComponentListPtr;
pub extern fn XkbFreeComponentList(XkbComponentListPtr) void;
pub extern fn XkbGetKeyboard(?*Display, c_uint, c_uint) XkbDescPtr;
pub extern fn XkbGetKeyboardByName(?*Display, c_uint, XkbComponentNamesPtr, c_uint, c_uint, c_int) XkbDescPtr;
pub extern fn XkbKeyTypesForCoreSymbols(XkbDescPtr, c_int, [*c]KeySym, c_uint, [*c]c_int, [*c]KeySym) c_int;
pub extern fn XkbApplyCompatMapToKey(XkbDescPtr, KeyCode, XkbChangesPtr) c_int;
pub extern fn XkbUpdateMapFromCore(XkbDescPtr, KeyCode, c_int, c_int, [*c]KeySym, XkbChangesPtr) c_int;
pub extern fn XkbAddDeviceLedInfo(XkbDeviceInfoPtr, c_uint, c_uint) XkbDeviceLedInfoPtr;
pub extern fn XkbResizeDeviceButtonActions(XkbDeviceInfoPtr, c_uint) c_int;
pub extern fn XkbAllocDeviceInfo(c_uint, c_uint, c_uint) XkbDeviceInfoPtr;
pub extern fn XkbFreeDeviceInfo(XkbDeviceInfoPtr, c_uint, c_int) void;
pub extern fn XkbNoteDeviceChanges(XkbDeviceChangesPtr, [*c]XkbExtensionDeviceNotifyEvent, c_uint) void;
pub extern fn XkbGetDeviceInfo(?*Display, c_uint, c_uint, c_uint, c_uint) XkbDeviceInfoPtr;
pub extern fn XkbGetDeviceInfoChanges(?*Display, XkbDeviceInfoPtr, XkbDeviceChangesPtr) c_int;
pub extern fn XkbGetDeviceButtonActions(?*Display, XkbDeviceInfoPtr, c_int, c_uint, c_uint) c_int;
pub extern fn XkbGetDeviceLedInfo(?*Display, XkbDeviceInfoPtr, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbSetDeviceInfo(?*Display, c_uint, XkbDeviceInfoPtr) c_int;
pub extern fn XkbChangeDeviceInfo(?*Display, XkbDeviceInfoPtr, XkbDeviceChangesPtr) c_int;
pub extern fn XkbSetDeviceLedInfo(?*Display, XkbDeviceInfoPtr, c_uint, c_uint, c_uint) c_int;
pub extern fn XkbSetDeviceButtonActions(?*Display, XkbDeviceInfoPtr, c_uint, c_uint) c_int;
pub extern fn XkbToControl(u8) u8;
pub extern fn XkbSetDebuggingFlags(?*Display, c_uint, c_uint, [*c]u8, c_uint, c_uint, [*c]c_uint, [*c]c_uint) c_int;
pub extern fn XkbApplyVirtualModChanges(XkbDescPtr, c_uint, XkbChangesPtr) c_int;
pub extern fn XkbUpdateActionVirtualMods(XkbDescPtr, [*c]XkbAction, c_uint) c_int;
pub extern fn XkbUpdateKeyTypeVirtualMods(XkbDescPtr, XkbKeyTypePtr, c_uint, XkbChangesPtr) void;
pub const struct_s_xpm_col = extern struct {
    name: c_int = @import("std").mem.zeroes(c_int),
    col: c_int = @import("std").mem.zeroes(c_int),
};
pub const t_xpm_col = struct_s_xpm_col;
pub const struct_s_col_name = extern struct {
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    color: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_s_event_list = extern struct {
    mask: c_int = @import("std").mem.zeroes(c_int),
    hook: ?*const fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (...) callconv(.C) c_int),
    param: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const t_event_list = struct_s_event_list;
pub const struct_s_win_list = extern struct {
    window: Window = @import("std").mem.zeroes(Window),
    gc: GC = @import("std").mem.zeroes(GC),
    next: [*c]struct_s_win_list = @import("std").mem.zeroes([*c]struct_s_win_list),
    mouse_hook: ?*const fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (...) callconv(.C) c_int),
    key_hook: ?*const fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (...) callconv(.C) c_int),
    expose_hook: ?*const fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (...) callconv(.C) c_int),
    mouse_param: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    key_param: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    expose_param: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    hooks: [36]t_event_list = @import("std").mem.zeroes([36]t_event_list),
};
pub const t_win_list = struct_s_win_list;
pub const struct_s_img = extern struct {
    image: [*c]XImage = @import("std").mem.zeroes([*c]XImage),
    pix: Pixmap = @import("std").mem.zeroes(Pixmap),
    gc: GC = @import("std").mem.zeroes(GC),
    size_line: c_int = @import("std").mem.zeroes(c_int),
    bpp: c_int = @import("std").mem.zeroes(c_int),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    type: c_int = @import("std").mem.zeroes(c_int),
    format: c_int = @import("std").mem.zeroes(c_int),
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    shm: XShmSegmentInfo = @import("std").mem.zeroes(XShmSegmentInfo),
};
pub const t_img = struct_s_img;
pub const struct_s_xvar = extern struct {
    display: ?*Display = @import("std").mem.zeroes(?*Display),
    root: Window = @import("std").mem.zeroes(Window),
    screen: c_int = @import("std").mem.zeroes(c_int),
    depth: c_int = @import("std").mem.zeroes(c_int),
    visual: [*c]Visual = @import("std").mem.zeroes([*c]Visual),
    cmap: Colormap = @import("std").mem.zeroes(Colormap),
    private_cmap: c_int = @import("std").mem.zeroes(c_int),
    win_list: [*c]t_win_list = @import("std").mem.zeroes([*c]t_win_list),
    loop_hook: ?*const fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (...) callconv(.C) c_int),
    loop_param: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    use_xshm: c_int = @import("std").mem.zeroes(c_int),
    pshm_format: c_int = @import("std").mem.zeroes(c_int),
    do_flush: c_int = @import("std").mem.zeroes(c_int),
    decrgb: [6]c_int = @import("std").mem.zeroes([6]c_int),
    wm_delete_window: Atom = @import("std").mem.zeroes(Atom),
    wm_protocols: Atom = @import("std").mem.zeroes(Atom),
    end_loop: c_int = @import("std").mem.zeroes(c_int),
};
pub const t_xvar = struct_s_xvar;
pub extern fn mlx_int_do_nothing(...) c_int;
pub extern fn mlx_get_color_value(...) c_int;
pub extern fn mlx_int_get_good_color(...) c_int;
pub extern fn mlx_int_find_in_pcm(...) c_int;
pub extern fn mlx_int_anti_resize_win(...) c_int;
pub extern fn mlx_int_wait_first_expose(...) c_int;
pub extern fn mlx_int_rgb_conversion(...) c_int;
pub extern fn mlx_int_deal_shm(...) c_int;
pub extern fn mlx_int_new_xshm_image(...) ?*anyopaque;
pub extern fn mlx_int_str_to_wordtab(...) [*c][*c]u8;
pub extern fn mlx_new_image(...) ?*anyopaque;
pub extern fn shm_att_pb(...) c_int;
pub extern fn mlx_int_get_visual(xvar: [*c]t_xvar) c_int;
pub extern fn mlx_int_set_win_event_mask(xvar: [*c]t_xvar) c_int;
pub extern fn mlx_int_str_str_cote(str: [*c]u8, find: [*c]u8, len: c_int) c_int;
pub extern fn mlx_int_str_str(str: [*c]u8, find: [*c]u8, len: c_int) c_int;
pub extern fn mlx_init(...) ?*anyopaque;
pub extern fn mlx_new_window(mlx_ptr: ?*anyopaque, size_x: c_int, size_y: c_int, title: [*c]u8) ?*anyopaque;
pub extern fn mlx_clear_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) c_int;
pub extern fn mlx_pixel_put(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: c_int, y: c_int, color: c_int) c_int;
pub extern fn mlx_get_data_addr(img_ptr: ?*anyopaque, bits_per_pixel: [*c]c_int, size_line: [*c]c_int, endian: [*c]c_int) [*c]u8;
pub extern fn mlx_put_image_to_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, img_ptr: ?*anyopaque, x: c_int, y: c_int) c_int;
pub extern fn mlx_mouse_hook(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (...) callconv(.C) c_int, param: ?*anyopaque) c_int;
pub extern fn mlx_key_hook(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (...) callconv(.C) c_int, param: ?*anyopaque) c_int;
pub extern fn mlx_expose_hook(win_ptr: ?*anyopaque, funct_ptr: ?*const fn (...) callconv(.C) c_int, param: ?*anyopaque) c_int;
pub extern fn mlx_loop_hook(mlx_ptr: ?*anyopaque, funct_ptr: ?*const fn (...) callconv(.C) c_int, param: ?*anyopaque) c_int;
pub extern fn mlx_loop(mlx_ptr: ?*anyopaque) c_int;
pub extern fn mlx_loop_end(mlx_ptr: ?*anyopaque) c_int;
pub extern fn mlx_string_put(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: c_int, y: c_int, color: c_int, string: [*c]u8) c_int;
pub extern fn mlx_set_font(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, name: [*c]u8) void;
pub extern fn mlx_xpm_to_image(mlx_ptr: ?*anyopaque, xpm_data: [*c][*c]u8, width: [*c]c_int, height: [*c]c_int) ?*anyopaque;
pub extern fn mlx_xpm_file_to_image(mlx_ptr: ?*anyopaque, filename: [*c]u8, width: [*c]c_int, height: [*c]c_int) ?*anyopaque;
pub extern fn mlx_destroy_window(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) c_int;
pub extern fn mlx_destroy_image(mlx_ptr: ?*anyopaque, img_ptr: ?*anyopaque) c_int;
pub extern fn mlx_destroy_display(mlx_ptr: ?*anyopaque) c_int;
pub extern fn mlx_hook(win_ptr: ?*anyopaque, x_event: c_int, x_mask: c_int, funct: ?*const fn (...) callconv(.C) c_int, param: ?*anyopaque) c_int;
pub extern fn mlx_do_key_autorepeatoff(mlx_ptr: ?*anyopaque) c_int;
pub extern fn mlx_do_key_autorepeaton(mlx_ptr: ?*anyopaque) c_int;
pub extern fn mlx_do_sync(mlx_ptr: ?*anyopaque) c_int;
pub extern fn mlx_mouse_get_pos(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: [*c]c_int, y: [*c]c_int) c_int;
pub extern fn mlx_mouse_move(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque, x: c_int, y: c_int) c_int;
pub extern fn mlx_mouse_hide(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) c_int;
pub extern fn mlx_mouse_show(mlx_ptr: ?*anyopaque, win_ptr: ?*anyopaque) c_int;
pub extern fn mlx_get_screen_size(mlx_ptr: ?*anyopaque, sizex: [*c]c_int, sizey: [*c]c_int) c_int;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 7);
pub const __clang_version__ = "18.1.7 (https://github.com/ziglang/zig-bootstrap ec2dca85a340f134d2fcfdc9007e91f9abed6996)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.7 (https://github.com/ziglang/zig-bootstrap ec2dca85a340f134d2fcfdc9007e91f9abed6996)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):96:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):199:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):221:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):229:9
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):357:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):358:9
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PCONFIG__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 35);
pub const NDEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:186:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:82:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/sys/cdefs.h:125:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub inline fn __glibc_safe_len_cond(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(__l <= @import("std").zig.c_translation.MacroArithmetic.div(__osz, __s)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return __l <= @import("std").zig.c_translation.MacroArithmetic.div(__osz, __s);
}
pub const __glibc_unsigned_or_positive = @compileError("unable to translate C expr: unexpected token '__typeof'");
// /usr/include/sys/cdefs.h:160:9
pub inline fn __glibc_safe_or_unknown_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub inline fn __glibc_unsafe_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub const __glibc_fortify = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/sys/cdefs.h:185:9
pub const __glibc_fortify_n = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/sys/cdefs.h:195:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:207:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/sys/cdefs.h:208:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/sys/cdefs.h:216:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:247:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:254:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:256:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/sys/cdefs.h:259:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/sys/cdefs.h:281:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:292:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/sys/cdefs.h:298:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/sys/cdefs.h:308:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/sys/cdefs.h:315:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/sys/cdefs.h:321:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/sys/cdefs.h:330:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/sys/cdefs.h:331:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:339:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:349:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/sys/cdefs.h:362:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/sys/cdefs.h:372:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/sys/cdefs.h:384:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/sys/cdefs.h:397:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/sys/cdefs.h:406:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/sys/cdefs.h:424:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/sys/cdefs.h:433:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:451:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:452:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/sys/cdefs.h:495:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:544:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:620:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:621:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/sys/cdefs.h:635:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/sys/cdefs.h:636:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:681:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:682:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:683:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:693:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/sys/cdefs.h:700:10
pub const __USE_EXTERN_INLINES = @as(c_int, 1);
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/bits/floatn-common.h:292:13
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/thread-shared-types.h:113:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const _STDIO_H = @as(c_int, 1);
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const _VA_LIST_DEFINED = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_STDIO_H = @as(c_int, 1);
pub const __STDIO_INLINE = __extern_inline;
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const _UNISTD_H = @as(c_int, 1);
pub const _POSIX_VERSION = @as(c_long, 200809);
pub const __POSIX2_THIS_VERSION = @as(c_long, 200809);
pub const _POSIX2_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_BIND = __POSIX2_THIS_VERSION;
pub const _POSIX2_C_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_SW_DEV = __POSIX2_THIS_VERSION;
pub const _POSIX2_LOCALEDEF = __POSIX2_THIS_VERSION;
pub const _XOPEN_VERSION = @as(c_int, 700);
pub const _XOPEN_XCU_VERSION = @as(c_int, 4);
pub const _XOPEN_XPG2 = @as(c_int, 1);
pub const _XOPEN_XPG3 = @as(c_int, 1);
pub const _XOPEN_XPG4 = @as(c_int, 1);
pub const _XOPEN_UNIX = @as(c_int, 1);
pub const _XOPEN_ENH_I18N = @as(c_int, 1);
pub const _XOPEN_LEGACY = @as(c_int, 1);
pub const _BITS_POSIX_OPT_H = @as(c_int, 1);
pub const _POSIX_JOB_CONTROL = @as(c_int, 1);
pub const _POSIX_SAVED_IDS = @as(c_int, 1);
pub const _POSIX_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_SYNCHRONIZED_IO = @as(c_long, 200809);
pub const _POSIX_FSYNC = @as(c_long, 200809);
pub const _POSIX_MAPPED_FILES = @as(c_long, 200809);
pub const _POSIX_MEMLOCK = @as(c_long, 200809);
pub const _POSIX_MEMLOCK_RANGE = @as(c_long, 200809);
pub const _POSIX_MEMORY_PROTECTION = @as(c_long, 200809);
pub const _POSIX_CHOWN_RESTRICTED = @as(c_int, 0);
pub const _POSIX_VDISABLE = '\x00';
pub const _POSIX_NO_TRUNC = @as(c_int, 1);
pub const _XOPEN_REALTIME = @as(c_int, 1);
pub const _XOPEN_REALTIME_THREADS = @as(c_int, 1);
pub const _XOPEN_SHM = @as(c_int, 1);
pub const _POSIX_THREADS = @as(c_long, 200809);
pub const _POSIX_REENTRANT_FUNCTIONS = @as(c_int, 1);
pub const _POSIX_THREAD_SAFE_FUNCTIONS = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKSIZE = @as(c_long, 200809);
pub const _POSIX_THREAD_ATTR_STACKADDR = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_PRIO_PROTECT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX_THREAD_ROBUST_PRIO_PROTECT = -@as(c_int, 1);
pub const _POSIX_SEMAPHORES = @as(c_long, 200809);
pub const _POSIX_REALTIME_SIGNALS = @as(c_long, 200809);
pub const _POSIX_ASYNCHRONOUS_IO = @as(c_long, 200809);
pub const _POSIX_ASYNC_IO = @as(c_int, 1);
pub const _LFS_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _POSIX_PRIORITIZED_IO = @as(c_long, 200809);
pub const _LFS64_ASYNCHRONOUS_IO = @as(c_int, 1);
pub const _LFS_LARGEFILE = @as(c_int, 1);
pub const _LFS64_LARGEFILE = @as(c_int, 1);
pub const _LFS64_STDIO = @as(c_int, 1);
pub const _POSIX_SHARED_MEMORY_OBJECTS = @as(c_long, 200809);
pub const _POSIX_CPUTIME = @as(c_int, 0);
pub const _POSIX_THREAD_CPUTIME = @as(c_int, 0);
pub const _POSIX_REGEXP = @as(c_int, 1);
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200809);
pub const _POSIX_SHELL = @as(c_int, 1);
pub const _POSIX_TIMEOUTS = @as(c_long, 200809);
pub const _POSIX_SPIN_LOCKS = @as(c_long, 200809);
pub const _POSIX_SPAWN = @as(c_long, 200809);
pub const _POSIX_TIMERS = @as(c_long, 200809);
pub const _POSIX_BARRIERS = @as(c_long, 200809);
pub const _POSIX_MESSAGE_PASSING = @as(c_long, 200809);
pub const _POSIX_THREAD_PROCESS_SHARED = @as(c_long, 200809);
pub const _POSIX_MONOTONIC_CLOCK = @as(c_int, 0);
pub const _POSIX_CLOCK_SELECTION = @as(c_long, 200809);
pub const _POSIX_ADVISORY_INFO = @as(c_long, 200809);
pub const _POSIX_IPV6 = @as(c_long, 200809);
pub const _POSIX_RAW_SOCKETS = @as(c_long, 200809);
pub const _POSIX2_CHAR_TERM = @as(c_long, 200809);
pub const _POSIX_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_THREAD_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_TRACE = -@as(c_int, 1);
pub const _POSIX_TRACE_EVENT_FILTER = -@as(c_int, 1);
pub const _POSIX_TRACE_INHERIT = -@as(c_int, 1);
pub const _POSIX_TRACE_LOG = -@as(c_int, 1);
pub const _POSIX_TYPED_MEMORY_OBJECTS = -@as(c_int, 1);
pub const _POSIX_V7_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V6_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _XBS5_LPBIG_OFFBIG = -@as(c_int, 1);
pub const _POSIX_V7_LP64_OFF64 = @as(c_int, 1);
pub const _POSIX_V6_LP64_OFF64 = @as(c_int, 1);
pub const _XBS5_LP64_OFF64 = @as(c_int, 1);
pub const __ILP32_OFF32_CFLAGS = "-m32";
pub const __ILP32_OFF32_LDFLAGS = "-m32";
pub const __ILP32_OFFBIG_CFLAGS = "-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64";
pub const __ILP32_OFFBIG_LDFLAGS = "-m32";
pub const __LP64_OFF64_CFLAGS = "-m64";
pub const __LP64_OFF64_LDFLAGS = "-m64";
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const __useconds_t_defined = "";
pub const __intptr_t_defined = "";
pub const __socklen_t_defined = "";
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_OK = @as(c_int, 0);
pub const L_SET = SEEK_SET;
pub const L_INCR = SEEK_CUR;
pub const L_XTND = SEEK_END;
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = _CS_V6_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V5_WIDTH_RESTRICTED_ENVS = _CS_V5_WIDTH_RESTRICTED_ENVS;
pub const _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS = _CS_V7_WIDTH_RESTRICTED_ENVS;
pub const _GETOPT_POSIX_H = @as(c_int, 1);
pub const _GETOPT_CORE_H = @as(c_int, 1);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const _FCNTL_H = @as(c_int, 1);
pub const __O_LARGEFILE = @as(c_int, 0);
pub const F_GETLK64 = @as(c_int, 5);
pub const F_SETLK64 = @as(c_int, 6);
pub const F_SETLKW64 = @as(c_int, 7);
pub const O_ACCMODE = @as(c_int, 0o003);
pub const O_RDONLY = @as(c_int, 0o0);
pub const O_WRONLY = @as(c_int, 0o1);
pub const O_RDWR = @as(c_int, 0o2);
pub const O_CREAT = @as(c_int, 0o100);
pub const O_EXCL = @as(c_int, 0o200);
pub const O_NOCTTY = @as(c_int, 0o400);
pub const O_TRUNC = @as(c_int, 0o1000);
pub const O_APPEND = @as(c_int, 0o2000);
pub const O_NONBLOCK = @as(c_int, 0o4000);
pub const O_NDELAY = O_NONBLOCK;
pub const O_SYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o4010000, .octal);
pub const O_FSYNC = O_SYNC;
pub const O_ASYNC = @as(c_int, 0o20000);
pub const __O_DIRECTORY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o200000, .octal);
pub const __O_NOFOLLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o400000, .octal);
pub const __O_CLOEXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o2000000, .octal);
pub const __O_DIRECT = @as(c_int, 0o40000);
pub const __O_NOATIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o1000000, .octal);
pub const __O_PATH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o10000000, .octal);
pub const __O_DSYNC = @as(c_int, 0o10000);
pub const __O_TMPFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o20000000, .octal) | __O_DIRECTORY;
pub const F_GETLK = @as(c_int, 5);
pub const F_SETLK = @as(c_int, 6);
pub const F_SETLKW = @as(c_int, 7);
pub const O_DIRECTORY = __O_DIRECTORY;
pub const O_NOFOLLOW = __O_NOFOLLOW;
pub const O_CLOEXEC = __O_CLOEXEC;
pub const O_DSYNC = __O_DSYNC;
pub const O_RSYNC = O_SYNC;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_SETFD = @as(c_int, 2);
pub const F_GETFL = @as(c_int, 3);
pub const F_SETFL = @as(c_int, 4);
pub const __F_SETOWN = @as(c_int, 8);
pub const __F_GETOWN = @as(c_int, 9);
pub const F_SETOWN = __F_SETOWN;
pub const F_GETOWN = __F_GETOWN;
pub const __F_SETSIG = @as(c_int, 10);
pub const __F_GETSIG = @as(c_int, 11);
pub const __F_SETOWN_EX = @as(c_int, 15);
pub const __F_GETOWN_EX = @as(c_int, 16);
pub const F_DUPFD_CLOEXEC = @as(c_int, 1030);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const F_RDLCK = @as(c_int, 0);
pub const F_WRLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const F_EXLCK = @as(c_int, 4);
pub const F_SHLCK = @as(c_int, 8);
pub const LOCK_SH = @as(c_int, 1);
pub const LOCK_EX = @as(c_int, 2);
pub const LOCK_NB = @as(c_int, 4);
pub const LOCK_UN = @as(c_int, 8);
pub const FAPPEND = O_APPEND;
pub const FFSYNC = O_FSYNC;
pub const FASYNC = O_ASYNC;
pub const FNONBLOCK = O_NONBLOCK;
pub const FNDELAY = O_NDELAY;
pub const __POSIX_FADV_DONTNEED = @as(c_int, 4);
pub const __POSIX_FADV_NOREUSE = @as(c_int, 5);
pub const POSIX_FADV_NORMAL = @as(c_int, 0);
pub const POSIX_FADV_RANDOM = @as(c_int, 1);
pub const POSIX_FADV_SEQUENTIAL = @as(c_int, 2);
pub const POSIX_FADV_WILLNEED = @as(c_int, 3);
pub const POSIX_FADV_DONTNEED = __POSIX_FADV_DONTNEED;
pub const POSIX_FADV_NOREUSE = __POSIX_FADV_NOREUSE;
pub const AT_FDCWD = -@as(c_int, 100);
pub const AT_SYMLINK_NOFOLLOW = @as(c_int, 0x100);
pub const AT_REMOVEDIR = @as(c_int, 0x200);
pub const AT_SYMLINK_FOLLOW = @as(c_int, 0x400);
pub const AT_EACCESS = @as(c_int, 0x200);
pub inline fn __OPEN_NEEDS_MODE(oflag: anytype) @TypeOf(((oflag & O_CREAT) != @as(c_int, 0)) or ((oflag & __O_TMPFILE) == __O_TMPFILE)) {
    _ = &oflag;
    return ((oflag & O_CREAT) != @as(c_int, 0)) or ((oflag & __O_TMPFILE) == __O_TMPFILE);
}
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _BITS_STRUCT_STAT_H = @as(c_int, 1);
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`");
// /usr/include/bits/struct_stat.h:77:11
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`");
// /usr/include/bits/struct_stat.h:78:11
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`");
// /usr/include/bits/struct_stat.h:79:11
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    _ = &buf;
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const _SYS_MMAN_H = @as(c_int, 1);
pub const MAP_32BIT = @as(c_int, 0x40);
pub const MAP_GROWSDOWN = @as(c_int, 0x00100);
pub const MAP_DENYWRITE = @as(c_int, 0x00800);
pub const MAP_EXECUTABLE = @as(c_int, 0x01000);
pub const MAP_LOCKED = @as(c_int, 0x02000);
pub const MAP_NORESERVE = @as(c_int, 0x04000);
pub const MAP_POPULATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000, .hex);
pub const MAP_NONBLOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000, .hex);
pub const MAP_STACK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000, .hex);
pub const MAP_HUGETLB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000, .hex);
pub const MAP_SYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000, .hex);
pub const MAP_FIXED_NOREPLACE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100000, .hex);
pub const PROT_READ = @as(c_int, 0x1);
pub const PROT_WRITE = @as(c_int, 0x2);
pub const PROT_EXEC = @as(c_int, 0x4);
pub const PROT_NONE = @as(c_int, 0x0);
pub const PROT_GROWSDOWN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const PROT_GROWSUP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02000000, .hex);
pub const MAP_SHARED = @as(c_int, 0x01);
pub const MAP_PRIVATE = @as(c_int, 0x02);
pub const MAP_SHARED_VALIDATE = @as(c_int, 0x03);
pub const MAP_TYPE = @as(c_int, 0x0f);
pub const MAP_FIXED = @as(c_int, 0x10);
pub const MAP_FILE = @as(c_int, 0);
pub const MAP_ANONYMOUS = @as(c_int, 0x20);
pub const MAP_ANON = MAP_ANONYMOUS;
pub const MAP_HUGE_SHIFT = @as(c_int, 26);
pub const MAP_HUGE_MASK = @as(c_int, 0x3f);
pub const MS_ASYNC = @as(c_int, 1);
pub const MS_SYNC = @as(c_int, 4);
pub const MS_INVALIDATE = @as(c_int, 2);
pub const MADV_NORMAL = @as(c_int, 0);
pub const MADV_RANDOM = @as(c_int, 1);
pub const MADV_SEQUENTIAL = @as(c_int, 2);
pub const MADV_WILLNEED = @as(c_int, 3);
pub const MADV_DONTNEED = @as(c_int, 4);
pub const MADV_FREE = @as(c_int, 8);
pub const MADV_REMOVE = @as(c_int, 9);
pub const MADV_DONTFORK = @as(c_int, 10);
pub const MADV_DOFORK = @as(c_int, 11);
pub const MADV_MERGEABLE = @as(c_int, 12);
pub const MADV_UNMERGEABLE = @as(c_int, 13);
pub const MADV_HUGEPAGE = @as(c_int, 14);
pub const MADV_NOHUGEPAGE = @as(c_int, 15);
pub const MADV_DONTDUMP = @as(c_int, 16);
pub const MADV_DODUMP = @as(c_int, 17);
pub const MADV_WIPEONFORK = @as(c_int, 18);
pub const MADV_KEEPONFORK = @as(c_int, 19);
pub const MADV_COLD = @as(c_int, 20);
pub const MADV_PAGEOUT = @as(c_int, 21);
pub const MADV_POPULATE_READ = @as(c_int, 22);
pub const MADV_POPULATE_WRITE = @as(c_int, 23);
pub const MADV_HWPOISON = @as(c_int, 100);
pub const POSIX_MADV_NORMAL = @as(c_int, 0);
pub const POSIX_MADV_RANDOM = @as(c_int, 1);
pub const POSIX_MADV_SEQUENTIAL = @as(c_int, 2);
pub const POSIX_MADV_WILLNEED = @as(c_int, 3);
pub const POSIX_MADV_DONTNEED = @as(c_int, 4);
pub const MCL_CURRENT = @as(c_int, 1);
pub const MCL_FUTURE = @as(c_int, 2);
pub const MCL_ONFAULT = @as(c_int, 4);
pub const MAP_FAILED = @import("std").zig.c_translation.cast(?*anyopaque, -@as(c_int, 1));
pub const _X11_XLIB_H_ = "";
pub const XlibSpecificationRelease = @as(c_int, 6);
pub const X_H = "";
pub const X_PROTOCOL = @as(c_int, 11);
pub const X_PROTOCOL_REVISION = @as(c_int, 0);
pub const _XTYPEDEF_XID = "";
pub const _XTYPEDEF_MASK = "";
pub const _XTYPEDEF_ATOM = "";
pub const _XTYPEDEF_FONT = "";
pub const None = @as(c_long, 0);
pub const ParentRelative = @as(c_long, 1);
pub const CopyFromParent = @as(c_long, 0);
pub const PointerWindow = @as(c_long, 0);
pub const InputFocus = @as(c_long, 1);
pub const PointerRoot = @as(c_long, 1);
pub const AnyPropertyType = @as(c_long, 0);
pub const AnyKey = @as(c_long, 0);
pub const AnyButton = @as(c_long, 0);
pub const AllTemporary = @as(c_long, 0);
pub const CurrentTime = @as(c_long, 0);
pub const NoSymbol = @as(c_long, 0);
pub const NoEventMask = @as(c_long, 0);
pub const KeyPressMask = @as(c_long, 1) << @as(c_int, 0);
pub const KeyReleaseMask = @as(c_long, 1) << @as(c_int, 1);
pub const ButtonPressMask = @as(c_long, 1) << @as(c_int, 2);
pub const ButtonReleaseMask = @as(c_long, 1) << @as(c_int, 3);
pub const EnterWindowMask = @as(c_long, 1) << @as(c_int, 4);
pub const LeaveWindowMask = @as(c_long, 1) << @as(c_int, 5);
pub const PointerMotionMask = @as(c_long, 1) << @as(c_int, 6);
pub const PointerMotionHintMask = @as(c_long, 1) << @as(c_int, 7);
pub const Button1MotionMask = @as(c_long, 1) << @as(c_int, 8);
pub const Button2MotionMask = @as(c_long, 1) << @as(c_int, 9);
pub const Button3MotionMask = @as(c_long, 1) << @as(c_int, 10);
pub const Button4MotionMask = @as(c_long, 1) << @as(c_int, 11);
pub const Button5MotionMask = @as(c_long, 1) << @as(c_int, 12);
pub const ButtonMotionMask = @as(c_long, 1) << @as(c_int, 13);
pub const KeymapStateMask = @as(c_long, 1) << @as(c_int, 14);
pub const ExposureMask = @as(c_long, 1) << @as(c_int, 15);
pub const VisibilityChangeMask = @as(c_long, 1) << @as(c_int, 16);
pub const StructureNotifyMask = @as(c_long, 1) << @as(c_int, 17);
pub const ResizeRedirectMask = @as(c_long, 1) << @as(c_int, 18);
pub const SubstructureNotifyMask = @as(c_long, 1) << @as(c_int, 19);
pub const SubstructureRedirectMask = @as(c_long, 1) << @as(c_int, 20);
pub const FocusChangeMask = @as(c_long, 1) << @as(c_int, 21);
pub const PropertyChangeMask = @as(c_long, 1) << @as(c_int, 22);
pub const ColormapChangeMask = @as(c_long, 1) << @as(c_int, 23);
pub const OwnerGrabButtonMask = @as(c_long, 1) << @as(c_int, 24);
pub const KeyPress = @as(c_int, 2);
pub const KeyRelease = @as(c_int, 3);
pub const ButtonPress = @as(c_int, 4);
pub const ButtonRelease = @as(c_int, 5);
pub const MotionNotify = @as(c_int, 6);
pub const EnterNotify = @as(c_int, 7);
pub const LeaveNotify = @as(c_int, 8);
pub const FocusIn = @as(c_int, 9);
pub const FocusOut = @as(c_int, 10);
pub const KeymapNotify = @as(c_int, 11);
pub const Expose = @as(c_int, 12);
pub const GraphicsExpose = @as(c_int, 13);
pub const NoExpose = @as(c_int, 14);
pub const VisibilityNotify = @as(c_int, 15);
pub const CreateNotify = @as(c_int, 16);
pub const DestroyNotify = @as(c_int, 17);
pub const UnmapNotify = @as(c_int, 18);
pub const MapNotify = @as(c_int, 19);
pub const MapRequest = @as(c_int, 20);
pub const ReparentNotify = @as(c_int, 21);
pub const ConfigureNotify = @as(c_int, 22);
pub const ConfigureRequest = @as(c_int, 23);
pub const GravityNotify = @as(c_int, 24);
pub const ResizeRequest = @as(c_int, 25);
pub const CirculateNotify = @as(c_int, 26);
pub const CirculateRequest = @as(c_int, 27);
pub const PropertyNotify = @as(c_int, 28);
pub const SelectionClear = @as(c_int, 29);
pub const SelectionRequest = @as(c_int, 30);
pub const SelectionNotify = @as(c_int, 31);
pub const ColormapNotify = @as(c_int, 32);
pub const ClientMessage = @as(c_int, 33);
pub const MappingNotify = @as(c_int, 34);
pub const GenericEvent = @as(c_int, 35);
pub const LASTEvent = @as(c_int, 36);
pub const ShiftMask = @as(c_int, 1) << @as(c_int, 0);
pub const LockMask = @as(c_int, 1) << @as(c_int, 1);
pub const ControlMask = @as(c_int, 1) << @as(c_int, 2);
pub const Mod1Mask = @as(c_int, 1) << @as(c_int, 3);
pub const Mod2Mask = @as(c_int, 1) << @as(c_int, 4);
pub const Mod3Mask = @as(c_int, 1) << @as(c_int, 5);
pub const Mod4Mask = @as(c_int, 1) << @as(c_int, 6);
pub const Mod5Mask = @as(c_int, 1) << @as(c_int, 7);
pub const ShiftMapIndex = @as(c_int, 0);
pub const LockMapIndex = @as(c_int, 1);
pub const ControlMapIndex = @as(c_int, 2);
pub const Mod1MapIndex = @as(c_int, 3);
pub const Mod2MapIndex = @as(c_int, 4);
pub const Mod3MapIndex = @as(c_int, 5);
pub const Mod4MapIndex = @as(c_int, 6);
pub const Mod5MapIndex = @as(c_int, 7);
pub const Button1Mask = @as(c_int, 1) << @as(c_int, 8);
pub const Button2Mask = @as(c_int, 1) << @as(c_int, 9);
pub const Button3Mask = @as(c_int, 1) << @as(c_int, 10);
pub const Button4Mask = @as(c_int, 1) << @as(c_int, 11);
pub const Button5Mask = @as(c_int, 1) << @as(c_int, 12);
pub const AnyModifier = @as(c_int, 1) << @as(c_int, 15);
pub const Button1 = @as(c_int, 1);
pub const Button2 = @as(c_int, 2);
pub const Button3 = @as(c_int, 3);
pub const Button4 = @as(c_int, 4);
pub const Button5 = @as(c_int, 5);
pub const NotifyNormal = @as(c_int, 0);
pub const NotifyGrab = @as(c_int, 1);
pub const NotifyUngrab = @as(c_int, 2);
pub const NotifyWhileGrabbed = @as(c_int, 3);
pub const NotifyHint = @as(c_int, 1);
pub const NotifyAncestor = @as(c_int, 0);
pub const NotifyVirtual = @as(c_int, 1);
pub const NotifyInferior = @as(c_int, 2);
pub const NotifyNonlinear = @as(c_int, 3);
pub const NotifyNonlinearVirtual = @as(c_int, 4);
pub const NotifyPointer = @as(c_int, 5);
pub const NotifyPointerRoot = @as(c_int, 6);
pub const NotifyDetailNone = @as(c_int, 7);
pub const VisibilityUnobscured = @as(c_int, 0);
pub const VisibilityPartiallyObscured = @as(c_int, 1);
pub const VisibilityFullyObscured = @as(c_int, 2);
pub const PlaceOnTop = @as(c_int, 0);
pub const PlaceOnBottom = @as(c_int, 1);
pub const FamilyInternet = @as(c_int, 0);
pub const FamilyDECnet = @as(c_int, 1);
pub const FamilyChaos = @as(c_int, 2);
pub const FamilyInternet6 = @as(c_int, 6);
pub const FamilyServerInterpreted = @as(c_int, 5);
pub const PropertyNewValue = @as(c_int, 0);
pub const PropertyDelete = @as(c_int, 1);
pub const ColormapUninstalled = @as(c_int, 0);
pub const ColormapInstalled = @as(c_int, 1);
pub const GrabModeSync = @as(c_int, 0);
pub const GrabModeAsync = @as(c_int, 1);
pub const GrabSuccess = @as(c_int, 0);
pub const AlreadyGrabbed = @as(c_int, 1);
pub const GrabInvalidTime = @as(c_int, 2);
pub const GrabNotViewable = @as(c_int, 3);
pub const GrabFrozen = @as(c_int, 4);
pub const AsyncPointer = @as(c_int, 0);
pub const SyncPointer = @as(c_int, 1);
pub const ReplayPointer = @as(c_int, 2);
pub const AsyncKeyboard = @as(c_int, 3);
pub const SyncKeyboard = @as(c_int, 4);
pub const ReplayKeyboard = @as(c_int, 5);
pub const AsyncBoth = @as(c_int, 6);
pub const SyncBoth = @as(c_int, 7);
pub const RevertToNone = @import("std").zig.c_translation.cast(c_int, None);
pub const RevertToPointerRoot = @import("std").zig.c_translation.cast(c_int, PointerRoot);
pub const RevertToParent = @as(c_int, 2);
pub const Success = @as(c_int, 0);
pub const BadRequest = @as(c_int, 1);
pub const BadValue = @as(c_int, 2);
pub const BadWindow = @as(c_int, 3);
pub const BadPixmap = @as(c_int, 4);
pub const BadAtom = @as(c_int, 5);
pub const BadCursor = @as(c_int, 6);
pub const BadFont = @as(c_int, 7);
pub const BadMatch = @as(c_int, 8);
pub const BadDrawable = @as(c_int, 9);
pub const BadAccess = @as(c_int, 10);
pub const BadAlloc = @as(c_int, 11);
pub const BadColor = @as(c_int, 12);
pub const BadGC = @as(c_int, 13);
pub const BadIDChoice = @as(c_int, 14);
pub const BadName = @as(c_int, 15);
pub const BadLength = @as(c_int, 16);
pub const BadImplementation = @as(c_int, 17);
pub const FirstExtensionError = @as(c_int, 128);
pub const LastExtensionError = @as(c_int, 255);
pub const InputOutput = @as(c_int, 1);
pub const InputOnly = @as(c_int, 2);
pub const CWBackPixmap = @as(c_long, 1) << @as(c_int, 0);
pub const CWBackPixel = @as(c_long, 1) << @as(c_int, 1);
pub const CWBorderPixmap = @as(c_long, 1) << @as(c_int, 2);
pub const CWBorderPixel = @as(c_long, 1) << @as(c_int, 3);
pub const CWBitGravity = @as(c_long, 1) << @as(c_int, 4);
pub const CWWinGravity = @as(c_long, 1) << @as(c_int, 5);
pub const CWBackingStore = @as(c_long, 1) << @as(c_int, 6);
pub const CWBackingPlanes = @as(c_long, 1) << @as(c_int, 7);
pub const CWBackingPixel = @as(c_long, 1) << @as(c_int, 8);
pub const CWOverrideRedirect = @as(c_long, 1) << @as(c_int, 9);
pub const CWSaveUnder = @as(c_long, 1) << @as(c_int, 10);
pub const CWEventMask = @as(c_long, 1) << @as(c_int, 11);
pub const CWDontPropagate = @as(c_long, 1) << @as(c_int, 12);
pub const CWColormap = @as(c_long, 1) << @as(c_int, 13);
pub const CWCursor = @as(c_long, 1) << @as(c_int, 14);
pub const CWX = @as(c_int, 1) << @as(c_int, 0);
pub const CWY = @as(c_int, 1) << @as(c_int, 1);
pub const CWWidth = @as(c_int, 1) << @as(c_int, 2);
pub const CWHeight = @as(c_int, 1) << @as(c_int, 3);
pub const CWBorderWidth = @as(c_int, 1) << @as(c_int, 4);
pub const CWSibling = @as(c_int, 1) << @as(c_int, 5);
pub const CWStackMode = @as(c_int, 1) << @as(c_int, 6);
pub const ForgetGravity = @as(c_int, 0);
pub const NorthWestGravity = @as(c_int, 1);
pub const NorthGravity = @as(c_int, 2);
pub const NorthEastGravity = @as(c_int, 3);
pub const WestGravity = @as(c_int, 4);
pub const CenterGravity = @as(c_int, 5);
pub const EastGravity = @as(c_int, 6);
pub const SouthWestGravity = @as(c_int, 7);
pub const SouthGravity = @as(c_int, 8);
pub const SouthEastGravity = @as(c_int, 9);
pub const StaticGravity = @as(c_int, 10);
pub const UnmapGravity = @as(c_int, 0);
pub const NotUseful = @as(c_int, 0);
pub const WhenMapped = @as(c_int, 1);
pub const Always = @as(c_int, 2);
pub const IsUnmapped = @as(c_int, 0);
pub const IsUnviewable = @as(c_int, 1);
pub const IsViewable = @as(c_int, 2);
pub const SetModeInsert = @as(c_int, 0);
pub const SetModeDelete = @as(c_int, 1);
pub const DestroyAll = @as(c_int, 0);
pub const RetainPermanent = @as(c_int, 1);
pub const RetainTemporary = @as(c_int, 2);
pub const Above = @as(c_int, 0);
pub const Below = @as(c_int, 1);
pub const TopIf = @as(c_int, 2);
pub const BottomIf = @as(c_int, 3);
pub const Opposite = @as(c_int, 4);
pub const RaiseLowest = @as(c_int, 0);
pub const LowerHighest = @as(c_int, 1);
pub const PropModeReplace = @as(c_int, 0);
pub const PropModePrepend = @as(c_int, 1);
pub const PropModeAppend = @as(c_int, 2);
pub const GXclear = @as(c_int, 0x0);
pub const GXand = @as(c_int, 0x1);
pub const GXandReverse = @as(c_int, 0x2);
pub const GXcopy = @as(c_int, 0x3);
pub const GXandInverted = @as(c_int, 0x4);
pub const GXnoop = @as(c_int, 0x5);
pub const GXxor = @as(c_int, 0x6);
pub const GXor = @as(c_int, 0x7);
pub const GXnor = @as(c_int, 0x8);
pub const GXequiv = @as(c_int, 0x9);
pub const GXinvert = @as(c_int, 0xa);
pub const GXorReverse = @as(c_int, 0xb);
pub const GXcopyInverted = @as(c_int, 0xc);
pub const GXorInverted = @as(c_int, 0xd);
pub const GXnand = @as(c_int, 0xe);
pub const GXset = @as(c_int, 0xf);
pub const LineSolid = @as(c_int, 0);
pub const LineOnOffDash = @as(c_int, 1);
pub const LineDoubleDash = @as(c_int, 2);
pub const CapNotLast = @as(c_int, 0);
pub const CapButt = @as(c_int, 1);
pub const CapRound = @as(c_int, 2);
pub const CapProjecting = @as(c_int, 3);
pub const JoinMiter = @as(c_int, 0);
pub const JoinRound = @as(c_int, 1);
pub const JoinBevel = @as(c_int, 2);
pub const FillSolid = @as(c_int, 0);
pub const FillTiled = @as(c_int, 1);
pub const FillStippled = @as(c_int, 2);
pub const FillOpaqueStippled = @as(c_int, 3);
pub const EvenOddRule = @as(c_int, 0);
pub const WindingRule = @as(c_int, 1);
pub const ClipByChildren = @as(c_int, 0);
pub const IncludeInferiors = @as(c_int, 1);
pub const Unsorted = @as(c_int, 0);
pub const YSorted = @as(c_int, 1);
pub const YXSorted = @as(c_int, 2);
pub const YXBanded = @as(c_int, 3);
pub const CoordModeOrigin = @as(c_int, 0);
pub const CoordModePrevious = @as(c_int, 1);
pub const Complex = @as(c_int, 0);
pub const Nonconvex = @as(c_int, 1);
pub const Convex = @as(c_int, 2);
pub const ArcChord = @as(c_int, 0);
pub const ArcPieSlice = @as(c_int, 1);
pub const GCFunction = @as(c_long, 1) << @as(c_int, 0);
pub const GCPlaneMask = @as(c_long, 1) << @as(c_int, 1);
pub const GCForeground = @as(c_long, 1) << @as(c_int, 2);
pub const GCBackground = @as(c_long, 1) << @as(c_int, 3);
pub const GCLineWidth = @as(c_long, 1) << @as(c_int, 4);
pub const GCLineStyle = @as(c_long, 1) << @as(c_int, 5);
pub const GCCapStyle = @as(c_long, 1) << @as(c_int, 6);
pub const GCJoinStyle = @as(c_long, 1) << @as(c_int, 7);
pub const GCFillStyle = @as(c_long, 1) << @as(c_int, 8);
pub const GCFillRule = @as(c_long, 1) << @as(c_int, 9);
pub const GCTile = @as(c_long, 1) << @as(c_int, 10);
pub const GCStipple = @as(c_long, 1) << @as(c_int, 11);
pub const GCTileStipXOrigin = @as(c_long, 1) << @as(c_int, 12);
pub const GCTileStipYOrigin = @as(c_long, 1) << @as(c_int, 13);
pub const GCFont = @as(c_long, 1) << @as(c_int, 14);
pub const GCSubwindowMode = @as(c_long, 1) << @as(c_int, 15);
pub const GCGraphicsExposures = @as(c_long, 1) << @as(c_int, 16);
pub const GCClipXOrigin = @as(c_long, 1) << @as(c_int, 17);
pub const GCClipYOrigin = @as(c_long, 1) << @as(c_int, 18);
pub const GCClipMask = @as(c_long, 1) << @as(c_int, 19);
pub const GCDashOffset = @as(c_long, 1) << @as(c_int, 20);
pub const GCDashList = @as(c_long, 1) << @as(c_int, 21);
pub const GCArcMode = @as(c_long, 1) << @as(c_int, 22);
pub const GCLastBit = @as(c_int, 22);
pub const FontLeftToRight = @as(c_int, 0);
pub const FontRightToLeft = @as(c_int, 1);
pub const FontChange = @as(c_int, 255);
pub const XYBitmap = @as(c_int, 0);
pub const XYPixmap = @as(c_int, 1);
pub const ZPixmap = @as(c_int, 2);
pub const AllocNone = @as(c_int, 0);
pub const AllocAll = @as(c_int, 1);
pub const DoRed = @as(c_int, 1) << @as(c_int, 0);
pub const DoGreen = @as(c_int, 1) << @as(c_int, 1);
pub const DoBlue = @as(c_int, 1) << @as(c_int, 2);
pub const CursorShape = @as(c_int, 0);
pub const TileShape = @as(c_int, 1);
pub const StippleShape = @as(c_int, 2);
pub const AutoRepeatModeOff = @as(c_int, 0);
pub const AutoRepeatModeOn = @as(c_int, 1);
pub const AutoRepeatModeDefault = @as(c_int, 2);
pub const LedModeOff = @as(c_int, 0);
pub const LedModeOn = @as(c_int, 1);
pub const KBKeyClickPercent = @as(c_long, 1) << @as(c_int, 0);
pub const KBBellPercent = @as(c_long, 1) << @as(c_int, 1);
pub const KBBellPitch = @as(c_long, 1) << @as(c_int, 2);
pub const KBBellDuration = @as(c_long, 1) << @as(c_int, 3);
pub const KBLed = @as(c_long, 1) << @as(c_int, 4);
pub const KBLedMode = @as(c_long, 1) << @as(c_int, 5);
pub const KBKey = @as(c_long, 1) << @as(c_int, 6);
pub const KBAutoRepeatMode = @as(c_long, 1) << @as(c_int, 7);
pub const MappingSuccess = @as(c_int, 0);
pub const MappingBusy = @as(c_int, 1);
pub const MappingFailed = @as(c_int, 2);
pub const MappingModifier = @as(c_int, 0);
pub const MappingKeyboard = @as(c_int, 1);
pub const MappingPointer = @as(c_int, 2);
pub const DontPreferBlanking = @as(c_int, 0);
pub const PreferBlanking = @as(c_int, 1);
pub const DefaultBlanking = @as(c_int, 2);
pub const DisableScreenSaver = @as(c_int, 0);
pub const DisableScreenInterval = @as(c_int, 0);
pub const DontAllowExposures = @as(c_int, 0);
pub const AllowExposures = @as(c_int, 1);
pub const DefaultExposures = @as(c_int, 2);
pub const ScreenSaverReset = @as(c_int, 0);
pub const ScreenSaverActive = @as(c_int, 1);
pub const HostInsert = @as(c_int, 0);
pub const HostDelete = @as(c_int, 1);
pub const EnableAccess = @as(c_int, 1);
pub const DisableAccess = @as(c_int, 0);
pub const StaticGray = @as(c_int, 0);
pub const GrayScale = @as(c_int, 1);
pub const StaticColor = @as(c_int, 2);
pub const PseudoColor = @as(c_int, 3);
pub const TrueColor = @as(c_int, 4);
pub const DirectColor = @as(c_int, 5);
pub const LSBFirst = @as(c_int, 0);
pub const MSBFirst = @as(c_int, 1);
pub const _XFUNCPROTO_H_ = "";
pub const NeedFunctionPrototypes = @as(c_int, 1);
pub const NeedVarargsPrototypes = @as(c_int, 1);
pub const NeedNestedPrototypes = @as(c_int, 1);
pub const _Xconst = @compileError("unable to translate C expr: unexpected token 'const'");
// /usr/include/X11/Xfuncproto.h:47:9
pub const NARROWPROTO = "";
pub const FUNCPROTO = @as(c_int, 15);
pub const NeedWidePrototypes = @as(c_int, 0);
pub const _XFUNCPROTOBEGIN = "";
pub const _XFUNCPROTOEND = "";
pub const _X_SENTINEL = @compileError("unable to translate macro: undefined identifier `__sentinel__`");
// /usr/include/X11/Xfuncproto.h:92:10
pub const _X_EXPORT = @compileError("unable to translate macro: undefined identifier `visibility`");
// /usr/include/X11/Xfuncproto.h:100:10
pub const _X_HIDDEN = @compileError("unable to translate macro: undefined identifier `visibility`");
// /usr/include/X11/Xfuncproto.h:101:10
pub const _X_INTERNAL = @compileError("unable to translate macro: undefined identifier `visibility`");
// /usr/include/X11/Xfuncproto.h:102:10
pub inline fn _X_LIKELY(x: anytype) @TypeOf(__builtin_expect(!!(x != 0), @as(c_int, 1))) {
    _ = &x;
    return __builtin_expect(!!(x != 0), @as(c_int, 1));
}
pub inline fn _X_UNLIKELY(x: anytype) @TypeOf(__builtin_expect(!!(x != 0), @as(c_int, 0))) {
    _ = &x;
    return __builtin_expect(!!(x != 0), @as(c_int, 0));
}
pub const _X_COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/X11/Xfuncproto.h:127:10
pub const _X_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /usr/include/X11/Xfuncproto.h:136:10
pub const _X_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /usr/include/X11/Xfuncproto.h:144:10
pub const _X_NORETURN = @compileError("unable to translate macro: undefined identifier `noreturn`");
// /usr/include/X11/Xfuncproto.h:153:10
pub const _X_ATTRIBUTE_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/X11/Xfuncproto.h:161:10
pub const _X_NONNULL = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/X11/Xfuncproto.h:171:9
pub const _X_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/X11/Xfuncproto.h:182:9
pub const _X_INLINE = @compileError("unable to translate C expr: unexpected token 'inline'");
// /usr/include/X11/Xfuncproto.h:193:10
pub const _X_RESTRICT_KYWD = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /usr/include/X11/Xfuncproto.h:206:11
pub const _X_NOTSAN = @compileError("unable to translate macro: undefined identifier `no_sanitize_thread`");
// /usr/include/X11/Xfuncproto.h:216:10
pub const _X_NONSTRING = "";
pub const _XOSDEFS_H_ = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const _PTRDIFF_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/bvan-pae/zig/0.14.0-dev.225+45be80364/files/lib/include/__stddef_offsetof.h:16:9
pub const X_HAVE_UTF8_STRING = @as(c_int, 1);
pub const Bool = c_int;
pub const Status = c_int;
pub const True = @as(c_int, 1);
pub const False = @as(c_int, 0);
pub const QueuedAlready = @as(c_int, 0);
pub const QueuedAfterReading = @as(c_int, 1);
pub const QueuedAfterFlush = @as(c_int, 2);
pub inline fn ConnectionNumber(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.fd) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.fd;
}
pub inline fn RootWindow(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.root) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.root;
}
pub inline fn DefaultScreen(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.default_screen) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.default_screen;
}
pub inline fn DefaultRootWindow(dpy: anytype) @TypeOf(ScreenOfDisplay(dpy, DefaultScreen(dpy)).*.root) {
    _ = &dpy;
    return ScreenOfDisplay(dpy, DefaultScreen(dpy)).*.root;
}
pub inline fn DefaultVisual(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.root_visual) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.root_visual;
}
pub inline fn DefaultGC(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.default_gc) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.default_gc;
}
pub inline fn BlackPixel(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.black_pixel) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.black_pixel;
}
pub inline fn WhitePixel(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.white_pixel) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.white_pixel;
}
pub const AllPlanes = @import("std").zig.c_translation.cast(c_ulong, ~@as(c_long, 0));
pub inline fn QLength(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.qlen) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.qlen;
}
pub inline fn DisplayWidth(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.width) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.width;
}
pub inline fn DisplayHeight(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.height) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.height;
}
pub inline fn DisplayWidthMM(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.mwidth) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.mwidth;
}
pub inline fn DisplayHeightMM(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.mheight) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.mheight;
}
pub inline fn DisplayPlanes(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.root_depth) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.root_depth;
}
pub inline fn DisplayCells(dpy: anytype, scr: anytype) @TypeOf(DefaultVisual(dpy, scr).*.map_entries) {
    _ = &dpy;
    _ = &scr;
    return DefaultVisual(dpy, scr).*.map_entries;
}
pub inline fn ScreenCount(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.nscreens) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.nscreens;
}
pub inline fn ServerVendor(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.vendor) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.vendor;
}
pub inline fn ProtocolVersion(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.proto_major_version) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.proto_major_version;
}
pub inline fn ProtocolRevision(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.proto_minor_version) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.proto_minor_version;
}
pub inline fn VendorRelease(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.release) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.release;
}
pub inline fn DisplayString(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.display_name) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.display_name;
}
pub inline fn DefaultDepth(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.root_depth) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.root_depth;
}
pub inline fn DefaultColormap(dpy: anytype, scr: anytype) @TypeOf(ScreenOfDisplay(dpy, scr).*.cmap) {
    _ = &dpy;
    _ = &scr;
    return ScreenOfDisplay(dpy, scr).*.cmap;
}
pub inline fn BitmapUnit(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.bitmap_unit) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.bitmap_unit;
}
pub inline fn BitmapBitOrder(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.bitmap_bit_order) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.bitmap_bit_order;
}
pub inline fn BitmapPad(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.bitmap_pad) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.bitmap_pad;
}
pub inline fn ImageByteOrder(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.byte_order) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.byte_order;
}
pub inline fn NextRequest(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.request + @as(c_int, 1)) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.request + @as(c_int, 1);
}
pub inline fn LastKnownRequestProcessed(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.last_request_read) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.last_request_read;
}
pub inline fn ScreenOfDisplay(dpy: anytype, scr: anytype) @TypeOf(&@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.screens[@as(usize, @intCast(scr))]) {
    _ = &dpy;
    _ = &scr;
    return &@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.screens[@as(usize, @intCast(scr))];
}
pub inline fn DefaultScreenOfDisplay(dpy: anytype) @TypeOf(ScreenOfDisplay(dpy, DefaultScreen(dpy))) {
    _ = &dpy;
    return ScreenOfDisplay(dpy, DefaultScreen(dpy));
}
pub inline fn DisplayOfScreen(s: anytype) @TypeOf(s.*.display) {
    _ = &s;
    return s.*.display;
}
pub inline fn RootWindowOfScreen(s: anytype) @TypeOf(s.*.root) {
    _ = &s;
    return s.*.root;
}
pub inline fn BlackPixelOfScreen(s: anytype) @TypeOf(s.*.black_pixel) {
    _ = &s;
    return s.*.black_pixel;
}
pub inline fn WhitePixelOfScreen(s: anytype) @TypeOf(s.*.white_pixel) {
    _ = &s;
    return s.*.white_pixel;
}
pub inline fn DefaultColormapOfScreen(s: anytype) @TypeOf(s.*.cmap) {
    _ = &s;
    return s.*.cmap;
}
pub inline fn DefaultDepthOfScreen(s: anytype) @TypeOf(s.*.root_depth) {
    _ = &s;
    return s.*.root_depth;
}
pub inline fn DefaultGCOfScreen(s: anytype) @TypeOf(s.*.default_gc) {
    _ = &s;
    return s.*.default_gc;
}
pub inline fn DefaultVisualOfScreen(s: anytype) @TypeOf(s.*.root_visual) {
    _ = &s;
    return s.*.root_visual;
}
pub inline fn WidthOfScreen(s: anytype) @TypeOf(s.*.width) {
    _ = &s;
    return s.*.width;
}
pub inline fn HeightOfScreen(s: anytype) @TypeOf(s.*.height) {
    _ = &s;
    return s.*.height;
}
pub inline fn WidthMMOfScreen(s: anytype) @TypeOf(s.*.mwidth) {
    _ = &s;
    return s.*.mwidth;
}
pub inline fn HeightMMOfScreen(s: anytype) @TypeOf(s.*.mheight) {
    _ = &s;
    return s.*.mheight;
}
pub inline fn PlanesOfScreen(s: anytype) @TypeOf(s.*.root_depth) {
    _ = &s;
    return s.*.root_depth;
}
pub inline fn CellsOfScreen(s: anytype) @TypeOf(DefaultVisualOfScreen(s).*.map_entries) {
    _ = &s;
    return DefaultVisualOfScreen(s).*.map_entries;
}
pub inline fn MinCmapsOfScreen(s: anytype) @TypeOf(s.*.min_maps) {
    _ = &s;
    return s.*.min_maps;
}
pub inline fn MaxCmapsOfScreen(s: anytype) @TypeOf(s.*.max_maps) {
    _ = &s;
    return s.*.max_maps;
}
pub inline fn DoesSaveUnders(s: anytype) @TypeOf(s.*.save_unders) {
    _ = &s;
    return s.*.save_unders;
}
pub inline fn DoesBackingStore(s: anytype) @TypeOf(s.*.backing_store) {
    _ = &s;
    return s.*.backing_store;
}
pub inline fn EventMaskOfScreen(s: anytype) @TypeOf(s.*.root_input_mask) {
    _ = &s;
    return s.*.root_input_mask;
}
pub inline fn XAllocID(dpy: anytype) @TypeOf(@import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.resource_alloc.*(dpy)) {
    _ = &dpy;
    return @import("std").zig.c_translation.cast(_XPrivDisplay, dpy).*.resource_alloc.*(dpy);
}
pub const XNRequiredCharSet = "requiredCharSet";
pub const XNQueryOrientation = "queryOrientation";
pub const XNBaseFontName = "baseFontName";
pub const XNOMAutomatic = "omAutomatic";
pub const XNMissingCharSet = "missingCharSet";
pub const XNDefaultString = "defaultString";
pub const XNOrientation = "orientation";
pub const XNDirectionalDependentDrawing = "directionalDependentDrawing";
pub const XNContextualDrawing = "contextualDrawing";
pub const XNFontInfo = "fontInfo";
pub const XIMPreeditArea = @as(c_long, 0x0001);
pub const XIMPreeditCallbacks = @as(c_long, 0x0002);
pub const XIMPreeditPosition = @as(c_long, 0x0004);
pub const XIMPreeditNothing = @as(c_long, 0x0008);
pub const XIMPreeditNone = @as(c_long, 0x0010);
pub const XIMStatusArea = @as(c_long, 0x0100);
pub const XIMStatusCallbacks = @as(c_long, 0x0200);
pub const XIMStatusNothing = @as(c_long, 0x0400);
pub const XIMStatusNone = @as(c_long, 0x0800);
pub const XNVaNestedList = "XNVaNestedList";
pub const XNQueryInputStyle = "queryInputStyle";
pub const XNClientWindow = "clientWindow";
pub const XNInputStyle = "inputStyle";
pub const XNFocusWindow = "focusWindow";
pub const XNResourceName = "resourceName";
pub const XNResourceClass = "resourceClass";
pub const XNGeometryCallback = "geometryCallback";
pub const XNDestroyCallback = "destroyCallback";
pub const XNFilterEvents = "filterEvents";
pub const XNPreeditStartCallback = "preeditStartCallback";
pub const XNPreeditDoneCallback = "preeditDoneCallback";
pub const XNPreeditDrawCallback = "preeditDrawCallback";
pub const XNPreeditCaretCallback = "preeditCaretCallback";
pub const XNPreeditStateNotifyCallback = "preeditStateNotifyCallback";
pub const XNPreeditAttributes = "preeditAttributes";
pub const XNStatusStartCallback = "statusStartCallback";
pub const XNStatusDoneCallback = "statusDoneCallback";
pub const XNStatusDrawCallback = "statusDrawCallback";
pub const XNStatusAttributes = "statusAttributes";
pub const XNArea = "area";
pub const XNAreaNeeded = "areaNeeded";
pub const XNSpotLocation = "spotLocation";
pub const XNColormap = "colorMap";
pub const XNStdColormap = "stdColorMap";
pub const XNForeground = "foreground";
pub const XNBackground = "background";
pub const XNBackgroundPixmap = "backgroundPixmap";
pub const XNFontSet = "fontSet";
pub const XNLineSpace = "lineSpace";
pub const XNCursor = "cursor";
pub const XNQueryIMValuesList = "queryIMValuesList";
pub const XNQueryICValuesList = "queryICValuesList";
pub const XNVisiblePosition = "visiblePosition";
pub const XNR6PreeditCallback = "r6PreeditCallback";
pub const XNStringConversionCallback = "stringConversionCallback";
pub const XNStringConversion = "stringConversion";
pub const XNResetState = "resetState";
pub const XNHotKey = "hotKey";
pub const XNHotKeyState = "hotKeyState";
pub const XNPreeditState = "preeditState";
pub const XNSeparatorofNestedList = "separatorofNestedList";
pub const XBufferOverflow = -@as(c_int, 1);
pub const XLookupNone = @as(c_int, 1);
pub const XLookupChars = @as(c_int, 2);
pub const XLookupKeySym = @as(c_int, 3);
pub const XLookupBoth = @as(c_int, 4);
pub const XIMReverse = @as(c_long, 1);
pub const XIMUnderline = @as(c_long, 1) << @as(c_int, 1);
pub const XIMHighlight = @as(c_long, 1) << @as(c_int, 2);
pub const XIMPrimary = @as(c_long, 1) << @as(c_int, 5);
pub const XIMSecondary = @as(c_long, 1) << @as(c_int, 6);
pub const XIMTertiary = @as(c_long, 1) << @as(c_int, 7);
pub const XIMVisibleToForward = @as(c_long, 1) << @as(c_int, 8);
pub const XIMVisibleToBackword = @as(c_long, 1) << @as(c_int, 9);
pub const XIMVisibleToCenter = @as(c_long, 1) << @as(c_int, 10);
pub const XIMPreeditUnKnown = @as(c_long, 0);
pub const XIMPreeditEnable = @as(c_long, 1);
pub const XIMPreeditDisable = @as(c_long, 1) << @as(c_int, 1);
pub const XIMInitialState = @as(c_long, 1);
pub const XIMPreserveState = @as(c_long, 1) << @as(c_int, 1);
pub const XIMStringConversionLeftEdge = @as(c_int, 0x00000001);
pub const XIMStringConversionRightEdge = @as(c_int, 0x00000002);
pub const XIMStringConversionTopEdge = @as(c_int, 0x00000004);
pub const XIMStringConversionBottomEdge = @as(c_int, 0x00000008);
pub const XIMStringConversionConcealed = @as(c_int, 0x00000010);
pub const XIMStringConversionWrapped = @as(c_int, 0x00000020);
pub const XIMStringConversionBuffer = @as(c_int, 0x0001);
pub const XIMStringConversionLine = @as(c_int, 0x0002);
pub const XIMStringConversionWord = @as(c_int, 0x0003);
pub const XIMStringConversionChar = @as(c_int, 0x0004);
pub const XIMStringConversionSubstitution = @as(c_int, 0x0001);
pub const XIMStringConversionRetrieval = @as(c_int, 0x0002);
pub const XIMHotKeyStateON = @as(c_long, 0x0001);
pub const XIMHotKeyStateOFF = @as(c_long, 0x0002);
pub const _X11_XUTIL_H_ = "";
pub const XK_MISCELLANY = "";
pub const XK_XKB_KEYS = "";
pub const XK_LATIN1 = "";
pub const XK_LATIN2 = "";
pub const XK_LATIN3 = "";
pub const XK_LATIN4 = "";
pub const XK_LATIN8 = "";
pub const XK_LATIN9 = "";
pub const XK_CAUCASUS = "";
pub const XK_GREEK = "";
pub const XK_KATAKANA = "";
pub const XK_ARABIC = "";
pub const XK_CYRILLIC = "";
pub const XK_HEBREW = "";
pub const XK_THAI = "";
pub const XK_KOREAN = "";
pub const XK_ARMENIAN = "";
pub const XK_GEORGIAN = "";
pub const XK_VIETNAMESE = "";
pub const XK_CURRENCY = "";
pub const XK_MATHEMATICAL = "";
pub const XK_BRAILLE = "";
pub const XK_SINHALA = "";
pub const XK_VoidSymbol = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffff, .hex);
pub const XK_BackSpace = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff08, .hex);
pub const XK_Tab = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff09, .hex);
pub const XK_Linefeed = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff0a, .hex);
pub const XK_Clear = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff0b, .hex);
pub const XK_Return = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff0d, .hex);
pub const XK_Pause = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff13, .hex);
pub const XK_Scroll_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff14, .hex);
pub const XK_Sys_Req = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff15, .hex);
pub const XK_Escape = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff1b, .hex);
pub const XK_Delete = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const XK_Multi_key = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff20, .hex);
pub const XK_Codeinput = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff37, .hex);
pub const XK_SingleCandidate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3c, .hex);
pub const XK_MultipleCandidate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3d, .hex);
pub const XK_PreviousCandidate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3e, .hex);
pub const XK_Kanji = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff21, .hex);
pub const XK_Muhenkan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff22, .hex);
pub const XK_Henkan_Mode = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff23, .hex);
pub const XK_Henkan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff23, .hex);
pub const XK_Romaji = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff24, .hex);
pub const XK_Hiragana = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff25, .hex);
pub const XK_Katakana = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff26, .hex);
pub const XK_Hiragana_Katakana = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff27, .hex);
pub const XK_Zenkaku = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff28, .hex);
pub const XK_Hankaku = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff29, .hex);
pub const XK_Zenkaku_Hankaku = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff2a, .hex);
pub const XK_Touroku = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff2b, .hex);
pub const XK_Massyo = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff2c, .hex);
pub const XK_Kana_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff2d, .hex);
pub const XK_Kana_Shift = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff2e, .hex);
pub const XK_Eisu_Shift = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff2f, .hex);
pub const XK_Eisu_toggle = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff30, .hex);
pub const XK_Kanji_Bangou = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff37, .hex);
pub const XK_Zen_Koho = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3d, .hex);
pub const XK_Mae_Koho = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3e, .hex);
pub const XK_Home = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff50, .hex);
pub const XK_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff51, .hex);
pub const XK_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff52, .hex);
pub const XK_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff53, .hex);
pub const XK_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff54, .hex);
pub const XK_Prior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff55, .hex);
pub const XK_Page_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff55, .hex);
pub const XK_Next = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff56, .hex);
pub const XK_Page_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff56, .hex);
pub const XK_End = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff57, .hex);
pub const XK_Begin = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff58, .hex);
pub const XK_Select = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff60, .hex);
pub const XK_Print = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff61, .hex);
pub const XK_Execute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff62, .hex);
pub const XK_Insert = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff63, .hex);
pub const XK_Undo = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff65, .hex);
pub const XK_Redo = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff66, .hex);
pub const XK_Menu = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff67, .hex);
pub const XK_Find = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff68, .hex);
pub const XK_Cancel = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff69, .hex);
pub const XK_Help = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff6a, .hex);
pub const XK_Break = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff6b, .hex);
pub const XK_Mode_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_script_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_Num_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7f, .hex);
pub const XK_KP_Space = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff80, .hex);
pub const XK_KP_Tab = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff89, .hex);
pub const XK_KP_Enter = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff8d, .hex);
pub const XK_KP_F1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff91, .hex);
pub const XK_KP_F2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff92, .hex);
pub const XK_KP_F3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff93, .hex);
pub const XK_KP_F4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff94, .hex);
pub const XK_KP_Home = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff95, .hex);
pub const XK_KP_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff96, .hex);
pub const XK_KP_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff97, .hex);
pub const XK_KP_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff98, .hex);
pub const XK_KP_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff99, .hex);
pub const XK_KP_Prior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9a, .hex);
pub const XK_KP_Page_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9a, .hex);
pub const XK_KP_Next = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9b, .hex);
pub const XK_KP_Page_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9b, .hex);
pub const XK_KP_End = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9c, .hex);
pub const XK_KP_Begin = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9d, .hex);
pub const XK_KP_Insert = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9e, .hex);
pub const XK_KP_Delete = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff9f, .hex);
pub const XK_KP_Equal = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffbd, .hex);
pub const XK_KP_Multiply = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffaa, .hex);
pub const XK_KP_Add = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffab, .hex);
pub const XK_KP_Separator = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffac, .hex);
pub const XK_KP_Subtract = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffad, .hex);
pub const XK_KP_Decimal = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffae, .hex);
pub const XK_KP_Divide = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffaf, .hex);
pub const XK_KP_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb0, .hex);
pub const XK_KP_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb1, .hex);
pub const XK_KP_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb2, .hex);
pub const XK_KP_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb3, .hex);
pub const XK_KP_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb4, .hex);
pub const XK_KP_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb5, .hex);
pub const XK_KP_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb6, .hex);
pub const XK_KP_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb7, .hex);
pub const XK_KP_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb8, .hex);
pub const XK_KP_9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffb9, .hex);
pub const XK_F1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffbe, .hex);
pub const XK_F2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffbf, .hex);
pub const XK_F3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc0, .hex);
pub const XK_F4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc1, .hex);
pub const XK_F5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc2, .hex);
pub const XK_F6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc3, .hex);
pub const XK_F7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc4, .hex);
pub const XK_F8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc5, .hex);
pub const XK_F9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc6, .hex);
pub const XK_F10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc7, .hex);
pub const XK_F11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc8, .hex);
pub const XK_L1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc8, .hex);
pub const XK_F12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc9, .hex);
pub const XK_L2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffc9, .hex);
pub const XK_F13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffca, .hex);
pub const XK_L3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffca, .hex);
pub const XK_F14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcb, .hex);
pub const XK_L4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcb, .hex);
pub const XK_F15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcc, .hex);
pub const XK_L5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcc, .hex);
pub const XK_F16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcd, .hex);
pub const XK_L6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcd, .hex);
pub const XK_F17 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffce, .hex);
pub const XK_L7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffce, .hex);
pub const XK_F18 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcf, .hex);
pub const XK_L8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffcf, .hex);
pub const XK_F19 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd0, .hex);
pub const XK_L9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd0, .hex);
pub const XK_F20 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd1, .hex);
pub const XK_L10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd1, .hex);
pub const XK_F21 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd2, .hex);
pub const XK_R1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd2, .hex);
pub const XK_F22 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd3, .hex);
pub const XK_R2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd3, .hex);
pub const XK_F23 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd4, .hex);
pub const XK_R3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd4, .hex);
pub const XK_F24 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd5, .hex);
pub const XK_R4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd5, .hex);
pub const XK_F25 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd6, .hex);
pub const XK_R5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd6, .hex);
pub const XK_F26 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd7, .hex);
pub const XK_R6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd7, .hex);
pub const XK_F27 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd8, .hex);
pub const XK_R7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd8, .hex);
pub const XK_F28 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd9, .hex);
pub const XK_R8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffd9, .hex);
pub const XK_F29 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffda, .hex);
pub const XK_R9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffda, .hex);
pub const XK_F30 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdb, .hex);
pub const XK_R10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdb, .hex);
pub const XK_F31 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdc, .hex);
pub const XK_R11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdc, .hex);
pub const XK_F32 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdd, .hex);
pub const XK_R12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdd, .hex);
pub const XK_F33 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffde, .hex);
pub const XK_R13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffde, .hex);
pub const XK_F34 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdf, .hex);
pub const XK_R14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffdf, .hex);
pub const XK_F35 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe0, .hex);
pub const XK_R15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe0, .hex);
pub const XK_Shift_L = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe1, .hex);
pub const XK_Shift_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe2, .hex);
pub const XK_Control_L = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe3, .hex);
pub const XK_Control_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe4, .hex);
pub const XK_Caps_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe5, .hex);
pub const XK_Shift_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe6, .hex);
pub const XK_Meta_L = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe7, .hex);
pub const XK_Meta_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe8, .hex);
pub const XK_Alt_L = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffe9, .hex);
pub const XK_Alt_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffea, .hex);
pub const XK_Super_L = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffeb, .hex);
pub const XK_Super_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffec, .hex);
pub const XK_Hyper_L = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffed, .hex);
pub const XK_Hyper_R = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffee, .hex);
pub const XK_ISO_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe01, .hex);
pub const XK_ISO_Level2_Latch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe02, .hex);
pub const XK_ISO_Level3_Shift = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe03, .hex);
pub const XK_ISO_Level3_Latch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe04, .hex);
pub const XK_ISO_Level3_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe05, .hex);
pub const XK_ISO_Level5_Shift = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe11, .hex);
pub const XK_ISO_Level5_Latch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe12, .hex);
pub const XK_ISO_Level5_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe13, .hex);
pub const XK_ISO_Group_Shift = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_ISO_Group_Latch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe06, .hex);
pub const XK_ISO_Group_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe07, .hex);
pub const XK_ISO_Next_Group = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe08, .hex);
pub const XK_ISO_Next_Group_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe09, .hex);
pub const XK_ISO_Prev_Group = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe0a, .hex);
pub const XK_ISO_Prev_Group_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe0b, .hex);
pub const XK_ISO_First_Group = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe0c, .hex);
pub const XK_ISO_First_Group_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe0d, .hex);
pub const XK_ISO_Last_Group = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe0e, .hex);
pub const XK_ISO_Last_Group_Lock = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe0f, .hex);
pub const XK_ISO_Left_Tab = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe20, .hex);
pub const XK_ISO_Move_Line_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe21, .hex);
pub const XK_ISO_Move_Line_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe22, .hex);
pub const XK_ISO_Partial_Line_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe23, .hex);
pub const XK_ISO_Partial_Line_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe24, .hex);
pub const XK_ISO_Partial_Space_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe25, .hex);
pub const XK_ISO_Partial_Space_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe26, .hex);
pub const XK_ISO_Set_Margin_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe27, .hex);
pub const XK_ISO_Set_Margin_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe28, .hex);
pub const XK_ISO_Release_Margin_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe29, .hex);
pub const XK_ISO_Release_Margin_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe2a, .hex);
pub const XK_ISO_Release_Both_Margins = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe2b, .hex);
pub const XK_ISO_Fast_Cursor_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe2c, .hex);
pub const XK_ISO_Fast_Cursor_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe2d, .hex);
pub const XK_ISO_Fast_Cursor_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe2e, .hex);
pub const XK_ISO_Fast_Cursor_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe2f, .hex);
pub const XK_ISO_Continuous_Underline = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe30, .hex);
pub const XK_ISO_Discontinuous_Underline = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe31, .hex);
pub const XK_ISO_Emphasize = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe32, .hex);
pub const XK_ISO_Center_Object = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe33, .hex);
pub const XK_ISO_Enter = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe34, .hex);
pub const XK_dead_grave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe50, .hex);
pub const XK_dead_acute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe51, .hex);
pub const XK_dead_circumflex = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe52, .hex);
pub const XK_dead_tilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe53, .hex);
pub const XK_dead_perispomeni = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe53, .hex);
pub const XK_dead_macron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe54, .hex);
pub const XK_dead_breve = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe55, .hex);
pub const XK_dead_abovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe56, .hex);
pub const XK_dead_diaeresis = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe57, .hex);
pub const XK_dead_abovering = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe58, .hex);
pub const XK_dead_doubleacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe59, .hex);
pub const XK_dead_caron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe5a, .hex);
pub const XK_dead_cedilla = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe5b, .hex);
pub const XK_dead_ogonek = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe5c, .hex);
pub const XK_dead_iota = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe5d, .hex);
pub const XK_dead_voiced_sound = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe5e, .hex);
pub const XK_dead_semivoiced_sound = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe5f, .hex);
pub const XK_dead_belowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe60, .hex);
pub const XK_dead_hook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe61, .hex);
pub const XK_dead_horn = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe62, .hex);
pub const XK_dead_stroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe63, .hex);
pub const XK_dead_abovecomma = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe64, .hex);
pub const XK_dead_psili = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe64, .hex);
pub const XK_dead_abovereversedcomma = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe65, .hex);
pub const XK_dead_dasia = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe65, .hex);
pub const XK_dead_doublegrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe66, .hex);
pub const XK_dead_belowring = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe67, .hex);
pub const XK_dead_belowmacron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe68, .hex);
pub const XK_dead_belowcircumflex = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe69, .hex);
pub const XK_dead_belowtilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe6a, .hex);
pub const XK_dead_belowbreve = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe6b, .hex);
pub const XK_dead_belowdiaeresis = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe6c, .hex);
pub const XK_dead_invertedbreve = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe6d, .hex);
pub const XK_dead_belowcomma = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe6e, .hex);
pub const XK_dead_currency = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe6f, .hex);
pub const XK_dead_lowline = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe90, .hex);
pub const XK_dead_aboveverticalline = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe91, .hex);
pub const XK_dead_belowverticalline = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe92, .hex);
pub const XK_dead_longsolidusoverlay = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe93, .hex);
pub const XK_dead_a = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe80, .hex);
pub const XK_dead_A = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe81, .hex);
pub const XK_dead_e = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe82, .hex);
pub const XK_dead_E = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe83, .hex);
pub const XK_dead_i = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe84, .hex);
pub const XK_dead_I = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe85, .hex);
pub const XK_dead_o = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe86, .hex);
pub const XK_dead_O = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe87, .hex);
pub const XK_dead_u = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe88, .hex);
pub const XK_dead_U = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe89, .hex);
pub const XK_dead_small_schwa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe8a, .hex);
pub const XK_dead_capital_schwa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe8b, .hex);
pub const XK_dead_greek = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe8c, .hex);
pub const XK_First_Virtual_Screen = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfed0, .hex);
pub const XK_Prev_Virtual_Screen = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfed1, .hex);
pub const XK_Next_Virtual_Screen = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfed2, .hex);
pub const XK_Last_Virtual_Screen = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfed4, .hex);
pub const XK_Terminate_Server = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfed5, .hex);
pub const XK_AccessX_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe70, .hex);
pub const XK_AccessX_Feedback_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe71, .hex);
pub const XK_RepeatKeys_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe72, .hex);
pub const XK_SlowKeys_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe73, .hex);
pub const XK_BounceKeys_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe74, .hex);
pub const XK_StickyKeys_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe75, .hex);
pub const XK_MouseKeys_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe76, .hex);
pub const XK_MouseKeys_Accel_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe77, .hex);
pub const XK_Overlay1_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe78, .hex);
pub const XK_Overlay2_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe79, .hex);
pub const XK_AudibleBell_Enable = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfe7a, .hex);
pub const XK_Pointer_Left = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee0, .hex);
pub const XK_Pointer_Right = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee1, .hex);
pub const XK_Pointer_Up = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee2, .hex);
pub const XK_Pointer_Down = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee3, .hex);
pub const XK_Pointer_UpLeft = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee4, .hex);
pub const XK_Pointer_UpRight = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee5, .hex);
pub const XK_Pointer_DownLeft = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee6, .hex);
pub const XK_Pointer_DownRight = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee7, .hex);
pub const XK_Pointer_Button_Dflt = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee8, .hex);
pub const XK_Pointer_Button1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfee9, .hex);
pub const XK_Pointer_Button2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfeea, .hex);
pub const XK_Pointer_Button3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfeeb, .hex);
pub const XK_Pointer_Button4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfeec, .hex);
pub const XK_Pointer_Button5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfeed, .hex);
pub const XK_Pointer_DblClick_Dflt = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfeee, .hex);
pub const XK_Pointer_DblClick1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfeef, .hex);
pub const XK_Pointer_DblClick2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef0, .hex);
pub const XK_Pointer_DblClick3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef1, .hex);
pub const XK_Pointer_DblClick4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef2, .hex);
pub const XK_Pointer_DblClick5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef3, .hex);
pub const XK_Pointer_Drag_Dflt = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef4, .hex);
pub const XK_Pointer_Drag1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef5, .hex);
pub const XK_Pointer_Drag2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef6, .hex);
pub const XK_Pointer_Drag3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef7, .hex);
pub const XK_Pointer_Drag4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef8, .hex);
pub const XK_Pointer_Drag5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfefd, .hex);
pub const XK_Pointer_EnableKeys = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfef9, .hex);
pub const XK_Pointer_Accelerate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfefa, .hex);
pub const XK_Pointer_DfltBtnNext = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfefb, .hex);
pub const XK_Pointer_DfltBtnPrev = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfefc, .hex);
pub const XK_ch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfea0, .hex);
pub const XK_Ch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfea1, .hex);
pub const XK_CH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfea2, .hex);
pub const XK_c_h = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfea3, .hex);
pub const XK_C_h = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfea4, .hex);
pub const XK_C_H = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfea5, .hex);
pub const XK_space = @as(c_int, 0x0020);
pub const XK_exclam = @as(c_int, 0x0021);
pub const XK_quotedbl = @as(c_int, 0x0022);
pub const XK_numbersign = @as(c_int, 0x0023);
pub const XK_dollar = @as(c_int, 0x0024);
pub const XK_percent = @as(c_int, 0x0025);
pub const XK_ampersand = @as(c_int, 0x0026);
pub const XK_apostrophe = @as(c_int, 0x0027);
pub const XK_quoteright = @as(c_int, 0x0027);
pub const XK_parenleft = @as(c_int, 0x0028);
pub const XK_parenright = @as(c_int, 0x0029);
pub const XK_asterisk = @as(c_int, 0x002a);
pub const XK_plus = @as(c_int, 0x002b);
pub const XK_comma = @as(c_int, 0x002c);
pub const XK_minus = @as(c_int, 0x002d);
pub const XK_period = @as(c_int, 0x002e);
pub const XK_slash = @as(c_int, 0x002f);
pub const XK_0 = @as(c_int, 0x0030);
pub const XK_1 = @as(c_int, 0x0031);
pub const XK_2 = @as(c_int, 0x0032);
pub const XK_3 = @as(c_int, 0x0033);
pub const XK_4 = @as(c_int, 0x0034);
pub const XK_5 = @as(c_int, 0x0035);
pub const XK_6 = @as(c_int, 0x0036);
pub const XK_7 = @as(c_int, 0x0037);
pub const XK_8 = @as(c_int, 0x0038);
pub const XK_9 = @as(c_int, 0x0039);
pub const XK_colon = @as(c_int, 0x003a);
pub const XK_semicolon = @as(c_int, 0x003b);
pub const XK_less = @as(c_int, 0x003c);
pub const XK_equal = @as(c_int, 0x003d);
pub const XK_greater = @as(c_int, 0x003e);
pub const XK_question = @as(c_int, 0x003f);
pub const XK_at = @as(c_int, 0x0040);
pub const XK_A = @as(c_int, 0x0041);
pub const XK_B = @as(c_int, 0x0042);
pub const XK_C = @as(c_int, 0x0043);
pub const XK_D = @as(c_int, 0x0044);
pub const XK_E = @as(c_int, 0x0045);
pub const XK_F = @as(c_int, 0x0046);
pub const XK_G = @as(c_int, 0x0047);
pub const XK_H = @as(c_int, 0x0048);
pub const XK_I = @as(c_int, 0x0049);
pub const XK_J = @as(c_int, 0x004a);
pub const XK_K = @as(c_int, 0x004b);
pub const XK_L = @as(c_int, 0x004c);
pub const XK_M = @as(c_int, 0x004d);
pub const XK_N = @as(c_int, 0x004e);
pub const XK_O = @as(c_int, 0x004f);
pub const XK_P = @as(c_int, 0x0050);
pub const XK_Q = @as(c_int, 0x0051);
pub const XK_R = @as(c_int, 0x0052);
pub const XK_S = @as(c_int, 0x0053);
pub const XK_T = @as(c_int, 0x0054);
pub const XK_U = @as(c_int, 0x0055);
pub const XK_V = @as(c_int, 0x0056);
pub const XK_W = @as(c_int, 0x0057);
pub const XK_X = @as(c_int, 0x0058);
pub const XK_Y = @as(c_int, 0x0059);
pub const XK_Z = @as(c_int, 0x005a);
pub const XK_bracketleft = @as(c_int, 0x005b);
pub const XK_backslash = @as(c_int, 0x005c);
pub const XK_bracketright = @as(c_int, 0x005d);
pub const XK_asciicircum = @as(c_int, 0x005e);
pub const XK_underscore = @as(c_int, 0x005f);
pub const XK_grave = @as(c_int, 0x0060);
pub const XK_quoteleft = @as(c_int, 0x0060);
pub const XK_a = @as(c_int, 0x0061);
pub const XK_b = @as(c_int, 0x0062);
pub const XK_c = @as(c_int, 0x0063);
pub const XK_d = @as(c_int, 0x0064);
pub const XK_e = @as(c_int, 0x0065);
pub const XK_f = @as(c_int, 0x0066);
pub const XK_g = @as(c_int, 0x0067);
pub const XK_h = @as(c_int, 0x0068);
pub const XK_i = @as(c_int, 0x0069);
pub const XK_j = @as(c_int, 0x006a);
pub const XK_k = @as(c_int, 0x006b);
pub const XK_l = @as(c_int, 0x006c);
pub const XK_m = @as(c_int, 0x006d);
pub const XK_n = @as(c_int, 0x006e);
pub const XK_o = @as(c_int, 0x006f);
pub const XK_p = @as(c_int, 0x0070);
pub const XK_q = @as(c_int, 0x0071);
pub const XK_r = @as(c_int, 0x0072);
pub const XK_s = @as(c_int, 0x0073);
pub const XK_t = @as(c_int, 0x0074);
pub const XK_u = @as(c_int, 0x0075);
pub const XK_v = @as(c_int, 0x0076);
pub const XK_w = @as(c_int, 0x0077);
pub const XK_x = @as(c_int, 0x0078);
pub const XK_y = @as(c_int, 0x0079);
pub const XK_z = @as(c_int, 0x007a);
pub const XK_braceleft = @as(c_int, 0x007b);
pub const XK_bar = @as(c_int, 0x007c);
pub const XK_braceright = @as(c_int, 0x007d);
pub const XK_asciitilde = @as(c_int, 0x007e);
pub const XK_nobreakspace = @as(c_int, 0x00a0);
pub const XK_exclamdown = @as(c_int, 0x00a1);
pub const XK_cent = @as(c_int, 0x00a2);
pub const XK_sterling = @as(c_int, 0x00a3);
pub const XK_currency = @as(c_int, 0x00a4);
pub const XK_yen = @as(c_int, 0x00a5);
pub const XK_brokenbar = @as(c_int, 0x00a6);
pub const XK_section = @as(c_int, 0x00a7);
pub const XK_diaeresis = @as(c_int, 0x00a8);
pub const XK_copyright = @as(c_int, 0x00a9);
pub const XK_ordfeminine = @as(c_int, 0x00aa);
pub const XK_guillemotleft = @as(c_int, 0x00ab);
pub const XK_notsign = @as(c_int, 0x00ac);
pub const XK_hyphen = @as(c_int, 0x00ad);
pub const XK_registered = @as(c_int, 0x00ae);
pub const XK_macron = @as(c_int, 0x00af);
pub const XK_degree = @as(c_int, 0x00b0);
pub const XK_plusminus = @as(c_int, 0x00b1);
pub const XK_twosuperior = @as(c_int, 0x00b2);
pub const XK_threesuperior = @as(c_int, 0x00b3);
pub const XK_acute = @as(c_int, 0x00b4);
pub const XK_mu = @as(c_int, 0x00b5);
pub const XK_paragraph = @as(c_int, 0x00b6);
pub const XK_periodcentered = @as(c_int, 0x00b7);
pub const XK_cedilla = @as(c_int, 0x00b8);
pub const XK_onesuperior = @as(c_int, 0x00b9);
pub const XK_masculine = @as(c_int, 0x00ba);
pub const XK_guillemotright = @as(c_int, 0x00bb);
pub const XK_onequarter = @as(c_int, 0x00bc);
pub const XK_onehalf = @as(c_int, 0x00bd);
pub const XK_threequarters = @as(c_int, 0x00be);
pub const XK_questiondown = @as(c_int, 0x00bf);
pub const XK_Agrave = @as(c_int, 0x00c0);
pub const XK_Aacute = @as(c_int, 0x00c1);
pub const XK_Acircumflex = @as(c_int, 0x00c2);
pub const XK_Atilde = @as(c_int, 0x00c3);
pub const XK_Adiaeresis = @as(c_int, 0x00c4);
pub const XK_Aring = @as(c_int, 0x00c5);
pub const XK_AE = @as(c_int, 0x00c6);
pub const XK_Ccedilla = @as(c_int, 0x00c7);
pub const XK_Egrave = @as(c_int, 0x00c8);
pub const XK_Eacute = @as(c_int, 0x00c9);
pub const XK_Ecircumflex = @as(c_int, 0x00ca);
pub const XK_Ediaeresis = @as(c_int, 0x00cb);
pub const XK_Igrave = @as(c_int, 0x00cc);
pub const XK_Iacute = @as(c_int, 0x00cd);
pub const XK_Icircumflex = @as(c_int, 0x00ce);
pub const XK_Idiaeresis = @as(c_int, 0x00cf);
pub const XK_ETH = @as(c_int, 0x00d0);
pub const XK_Eth = @as(c_int, 0x00d0);
pub const XK_Ntilde = @as(c_int, 0x00d1);
pub const XK_Ograve = @as(c_int, 0x00d2);
pub const XK_Oacute = @as(c_int, 0x00d3);
pub const XK_Ocircumflex = @as(c_int, 0x00d4);
pub const XK_Otilde = @as(c_int, 0x00d5);
pub const XK_Odiaeresis = @as(c_int, 0x00d6);
pub const XK_multiply = @as(c_int, 0x00d7);
pub const XK_Oslash = @as(c_int, 0x00d8);
pub const XK_Ooblique = @as(c_int, 0x00d8);
pub const XK_Ugrave = @as(c_int, 0x00d9);
pub const XK_Uacute = @as(c_int, 0x00da);
pub const XK_Ucircumflex = @as(c_int, 0x00db);
pub const XK_Udiaeresis = @as(c_int, 0x00dc);
pub const XK_Yacute = @as(c_int, 0x00dd);
pub const XK_THORN = @as(c_int, 0x00de);
pub const XK_Thorn = @as(c_int, 0x00de);
pub const XK_ssharp = @as(c_int, 0x00df);
pub const XK_agrave = @as(c_int, 0x00e0);
pub const XK_aacute = @as(c_int, 0x00e1);
pub const XK_acircumflex = @as(c_int, 0x00e2);
pub const XK_atilde = @as(c_int, 0x00e3);
pub const XK_adiaeresis = @as(c_int, 0x00e4);
pub const XK_aring = @as(c_int, 0x00e5);
pub const XK_ae = @as(c_int, 0x00e6);
pub const XK_ccedilla = @as(c_int, 0x00e7);
pub const XK_egrave = @as(c_int, 0x00e8);
pub const XK_eacute = @as(c_int, 0x00e9);
pub const XK_ecircumflex = @as(c_int, 0x00ea);
pub const XK_ediaeresis = @as(c_int, 0x00eb);
pub const XK_igrave = @as(c_int, 0x00ec);
pub const XK_iacute = @as(c_int, 0x00ed);
pub const XK_icircumflex = @as(c_int, 0x00ee);
pub const XK_idiaeresis = @as(c_int, 0x00ef);
pub const XK_eth = @as(c_int, 0x00f0);
pub const XK_ntilde = @as(c_int, 0x00f1);
pub const XK_ograve = @as(c_int, 0x00f2);
pub const XK_oacute = @as(c_int, 0x00f3);
pub const XK_ocircumflex = @as(c_int, 0x00f4);
pub const XK_otilde = @as(c_int, 0x00f5);
pub const XK_odiaeresis = @as(c_int, 0x00f6);
pub const XK_division = @as(c_int, 0x00f7);
pub const XK_oslash = @as(c_int, 0x00f8);
pub const XK_ooblique = @as(c_int, 0x00f8);
pub const XK_ugrave = @as(c_int, 0x00f9);
pub const XK_uacute = @as(c_int, 0x00fa);
pub const XK_ucircumflex = @as(c_int, 0x00fb);
pub const XK_udiaeresis = @as(c_int, 0x00fc);
pub const XK_yacute = @as(c_int, 0x00fd);
pub const XK_thorn = @as(c_int, 0x00fe);
pub const XK_ydiaeresis = @as(c_int, 0x00ff);
pub const XK_Aogonek = @as(c_int, 0x01a1);
pub const XK_breve = @as(c_int, 0x01a2);
pub const XK_Lstroke = @as(c_int, 0x01a3);
pub const XK_Lcaron = @as(c_int, 0x01a5);
pub const XK_Sacute = @as(c_int, 0x01a6);
pub const XK_Scaron = @as(c_int, 0x01a9);
pub const XK_Scedilla = @as(c_int, 0x01aa);
pub const XK_Tcaron = @as(c_int, 0x01ab);
pub const XK_Zacute = @as(c_int, 0x01ac);
pub const XK_Zcaron = @as(c_int, 0x01ae);
pub const XK_Zabovedot = @as(c_int, 0x01af);
pub const XK_aogonek = @as(c_int, 0x01b1);
pub const XK_ogonek = @as(c_int, 0x01b2);
pub const XK_lstroke = @as(c_int, 0x01b3);
pub const XK_lcaron = @as(c_int, 0x01b5);
pub const XK_sacute = @as(c_int, 0x01b6);
pub const XK_caron = @as(c_int, 0x01b7);
pub const XK_scaron = @as(c_int, 0x01b9);
pub const XK_scedilla = @as(c_int, 0x01ba);
pub const XK_tcaron = @as(c_int, 0x01bb);
pub const XK_zacute = @as(c_int, 0x01bc);
pub const XK_doubleacute = @as(c_int, 0x01bd);
pub const XK_zcaron = @as(c_int, 0x01be);
pub const XK_zabovedot = @as(c_int, 0x01bf);
pub const XK_Racute = @as(c_int, 0x01c0);
pub const XK_Abreve = @as(c_int, 0x01c3);
pub const XK_Lacute = @as(c_int, 0x01c5);
pub const XK_Cacute = @as(c_int, 0x01c6);
pub const XK_Ccaron = @as(c_int, 0x01c8);
pub const XK_Eogonek = @as(c_int, 0x01ca);
pub const XK_Ecaron = @as(c_int, 0x01cc);
pub const XK_Dcaron = @as(c_int, 0x01cf);
pub const XK_Dstroke = @as(c_int, 0x01d0);
pub const XK_Nacute = @as(c_int, 0x01d1);
pub const XK_Ncaron = @as(c_int, 0x01d2);
pub const XK_Odoubleacute = @as(c_int, 0x01d5);
pub const XK_Rcaron = @as(c_int, 0x01d8);
pub const XK_Uring = @as(c_int, 0x01d9);
pub const XK_Udoubleacute = @as(c_int, 0x01db);
pub const XK_Tcedilla = @as(c_int, 0x01de);
pub const XK_racute = @as(c_int, 0x01e0);
pub const XK_abreve = @as(c_int, 0x01e3);
pub const XK_lacute = @as(c_int, 0x01e5);
pub const XK_cacute = @as(c_int, 0x01e6);
pub const XK_ccaron = @as(c_int, 0x01e8);
pub const XK_eogonek = @as(c_int, 0x01ea);
pub const XK_ecaron = @as(c_int, 0x01ec);
pub const XK_dcaron = @as(c_int, 0x01ef);
pub const XK_dstroke = @as(c_int, 0x01f0);
pub const XK_nacute = @as(c_int, 0x01f1);
pub const XK_ncaron = @as(c_int, 0x01f2);
pub const XK_odoubleacute = @as(c_int, 0x01f5);
pub const XK_rcaron = @as(c_int, 0x01f8);
pub const XK_uring = @as(c_int, 0x01f9);
pub const XK_udoubleacute = @as(c_int, 0x01fb);
pub const XK_tcedilla = @as(c_int, 0x01fe);
pub const XK_abovedot = @as(c_int, 0x01ff);
pub const XK_Hstroke = @as(c_int, 0x02a1);
pub const XK_Hcircumflex = @as(c_int, 0x02a6);
pub const XK_Iabovedot = @as(c_int, 0x02a9);
pub const XK_Gbreve = @as(c_int, 0x02ab);
pub const XK_Jcircumflex = @as(c_int, 0x02ac);
pub const XK_hstroke = @as(c_int, 0x02b1);
pub const XK_hcircumflex = @as(c_int, 0x02b6);
pub const XK_idotless = @as(c_int, 0x02b9);
pub const XK_gbreve = @as(c_int, 0x02bb);
pub const XK_jcircumflex = @as(c_int, 0x02bc);
pub const XK_Cabovedot = @as(c_int, 0x02c5);
pub const XK_Ccircumflex = @as(c_int, 0x02c6);
pub const XK_Gabovedot = @as(c_int, 0x02d5);
pub const XK_Gcircumflex = @as(c_int, 0x02d8);
pub const XK_Ubreve = @as(c_int, 0x02dd);
pub const XK_Scircumflex = @as(c_int, 0x02de);
pub const XK_cabovedot = @as(c_int, 0x02e5);
pub const XK_ccircumflex = @as(c_int, 0x02e6);
pub const XK_gabovedot = @as(c_int, 0x02f5);
pub const XK_gcircumflex = @as(c_int, 0x02f8);
pub const XK_ubreve = @as(c_int, 0x02fd);
pub const XK_scircumflex = @as(c_int, 0x02fe);
pub const XK_kra = @as(c_int, 0x03a2);
pub const XK_kappa = @as(c_int, 0x03a2);
pub const XK_Rcedilla = @as(c_int, 0x03a3);
pub const XK_Itilde = @as(c_int, 0x03a5);
pub const XK_Lcedilla = @as(c_int, 0x03a6);
pub const XK_Emacron = @as(c_int, 0x03aa);
pub const XK_Gcedilla = @as(c_int, 0x03ab);
pub const XK_Tslash = @as(c_int, 0x03ac);
pub const XK_rcedilla = @as(c_int, 0x03b3);
pub const XK_itilde = @as(c_int, 0x03b5);
pub const XK_lcedilla = @as(c_int, 0x03b6);
pub const XK_emacron = @as(c_int, 0x03ba);
pub const XK_gcedilla = @as(c_int, 0x03bb);
pub const XK_tslash = @as(c_int, 0x03bc);
pub const XK_ENG = @as(c_int, 0x03bd);
pub const XK_eng = @as(c_int, 0x03bf);
pub const XK_Amacron = @as(c_int, 0x03c0);
pub const XK_Iogonek = @as(c_int, 0x03c7);
pub const XK_Eabovedot = @as(c_int, 0x03cc);
pub const XK_Imacron = @as(c_int, 0x03cf);
pub const XK_Ncedilla = @as(c_int, 0x03d1);
pub const XK_Omacron = @as(c_int, 0x03d2);
pub const XK_Kcedilla = @as(c_int, 0x03d3);
pub const XK_Uogonek = @as(c_int, 0x03d9);
pub const XK_Utilde = @as(c_int, 0x03dd);
pub const XK_Umacron = @as(c_int, 0x03de);
pub const XK_amacron = @as(c_int, 0x03e0);
pub const XK_iogonek = @as(c_int, 0x03e7);
pub const XK_eabovedot = @as(c_int, 0x03ec);
pub const XK_imacron = @as(c_int, 0x03ef);
pub const XK_ncedilla = @as(c_int, 0x03f1);
pub const XK_omacron = @as(c_int, 0x03f2);
pub const XK_kcedilla = @as(c_int, 0x03f3);
pub const XK_uogonek = @as(c_int, 0x03f9);
pub const XK_utilde = @as(c_int, 0x03fd);
pub const XK_umacron = @as(c_int, 0x03fe);
pub const XK_Wcircumflex = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000174, .hex);
pub const XK_wcircumflex = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000175, .hex);
pub const XK_Ycircumflex = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000176, .hex);
pub const XK_ycircumflex = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000177, .hex);
pub const XK_Babovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e02, .hex);
pub const XK_babovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e03, .hex);
pub const XK_Dabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e0a, .hex);
pub const XK_dabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e0b, .hex);
pub const XK_Fabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e1e, .hex);
pub const XK_fabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e1f, .hex);
pub const XK_Mabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e40, .hex);
pub const XK_mabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e41, .hex);
pub const XK_Pabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e56, .hex);
pub const XK_pabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e57, .hex);
pub const XK_Sabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e60, .hex);
pub const XK_sabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e61, .hex);
pub const XK_Tabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e6a, .hex);
pub const XK_tabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e6b, .hex);
pub const XK_Wgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e80, .hex);
pub const XK_wgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e81, .hex);
pub const XK_Wacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e82, .hex);
pub const XK_wacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e83, .hex);
pub const XK_Wdiaeresis = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e84, .hex);
pub const XK_wdiaeresis = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e85, .hex);
pub const XK_Ygrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef2, .hex);
pub const XK_ygrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef3, .hex);
pub const XK_OE = @as(c_int, 0x13bc);
pub const XK_oe = @as(c_int, 0x13bd);
pub const XK_Ydiaeresis = @as(c_int, 0x13be);
pub const XK_overline = @as(c_int, 0x047e);
pub const XK_kana_fullstop = @as(c_int, 0x04a1);
pub const XK_kana_openingbracket = @as(c_int, 0x04a2);
pub const XK_kana_closingbracket = @as(c_int, 0x04a3);
pub const XK_kana_comma = @as(c_int, 0x04a4);
pub const XK_kana_conjunctive = @as(c_int, 0x04a5);
pub const XK_kana_middledot = @as(c_int, 0x04a5);
pub const XK_kana_WO = @as(c_int, 0x04a6);
pub const XK_kana_a = @as(c_int, 0x04a7);
pub const XK_kana_i = @as(c_int, 0x04a8);
pub const XK_kana_u = @as(c_int, 0x04a9);
pub const XK_kana_e = @as(c_int, 0x04aa);
pub const XK_kana_o = @as(c_int, 0x04ab);
pub const XK_kana_ya = @as(c_int, 0x04ac);
pub const XK_kana_yu = @as(c_int, 0x04ad);
pub const XK_kana_yo = @as(c_int, 0x04ae);
pub const XK_kana_tsu = @as(c_int, 0x04af);
pub const XK_kana_tu = @as(c_int, 0x04af);
pub const XK_prolongedsound = @as(c_int, 0x04b0);
pub const XK_kana_A = @as(c_int, 0x04b1);
pub const XK_kana_I = @as(c_int, 0x04b2);
pub const XK_kana_U = @as(c_int, 0x04b3);
pub const XK_kana_E = @as(c_int, 0x04b4);
pub const XK_kana_O = @as(c_int, 0x04b5);
pub const XK_kana_KA = @as(c_int, 0x04b6);
pub const XK_kana_KI = @as(c_int, 0x04b7);
pub const XK_kana_KU = @as(c_int, 0x04b8);
pub const XK_kana_KE = @as(c_int, 0x04b9);
pub const XK_kana_KO = @as(c_int, 0x04ba);
pub const XK_kana_SA = @as(c_int, 0x04bb);
pub const XK_kana_SHI = @as(c_int, 0x04bc);
pub const XK_kana_SU = @as(c_int, 0x04bd);
pub const XK_kana_SE = @as(c_int, 0x04be);
pub const XK_kana_SO = @as(c_int, 0x04bf);
pub const XK_kana_TA = @as(c_int, 0x04c0);
pub const XK_kana_CHI = @as(c_int, 0x04c1);
pub const XK_kana_TI = @as(c_int, 0x04c1);
pub const XK_kana_TSU = @as(c_int, 0x04c2);
pub const XK_kana_TU = @as(c_int, 0x04c2);
pub const XK_kana_TE = @as(c_int, 0x04c3);
pub const XK_kana_TO = @as(c_int, 0x04c4);
pub const XK_kana_NA = @as(c_int, 0x04c5);
pub const XK_kana_NI = @as(c_int, 0x04c6);
pub const XK_kana_NU = @as(c_int, 0x04c7);
pub const XK_kana_NE = @as(c_int, 0x04c8);
pub const XK_kana_NO = @as(c_int, 0x04c9);
pub const XK_kana_HA = @as(c_int, 0x04ca);
pub const XK_kana_HI = @as(c_int, 0x04cb);
pub const XK_kana_FU = @as(c_int, 0x04cc);
pub const XK_kana_HU = @as(c_int, 0x04cc);
pub const XK_kana_HE = @as(c_int, 0x04cd);
pub const XK_kana_HO = @as(c_int, 0x04ce);
pub const XK_kana_MA = @as(c_int, 0x04cf);
pub const XK_kana_MI = @as(c_int, 0x04d0);
pub const XK_kana_MU = @as(c_int, 0x04d1);
pub const XK_kana_ME = @as(c_int, 0x04d2);
pub const XK_kana_MO = @as(c_int, 0x04d3);
pub const XK_kana_YA = @as(c_int, 0x04d4);
pub const XK_kana_YU = @as(c_int, 0x04d5);
pub const XK_kana_YO = @as(c_int, 0x04d6);
pub const XK_kana_RA = @as(c_int, 0x04d7);
pub const XK_kana_RI = @as(c_int, 0x04d8);
pub const XK_kana_RU = @as(c_int, 0x04d9);
pub const XK_kana_RE = @as(c_int, 0x04da);
pub const XK_kana_RO = @as(c_int, 0x04db);
pub const XK_kana_WA = @as(c_int, 0x04dc);
pub const XK_kana_N = @as(c_int, 0x04dd);
pub const XK_voicedsound = @as(c_int, 0x04de);
pub const XK_semivoicedsound = @as(c_int, 0x04df);
pub const XK_kana_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_Farsi_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f0, .hex);
pub const XK_Farsi_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f1, .hex);
pub const XK_Farsi_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f2, .hex);
pub const XK_Farsi_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f3, .hex);
pub const XK_Farsi_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f4, .hex);
pub const XK_Farsi_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f5, .hex);
pub const XK_Farsi_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f6, .hex);
pub const XK_Farsi_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f7, .hex);
pub const XK_Farsi_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f8, .hex);
pub const XK_Farsi_9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006f9, .hex);
pub const XK_Arabic_percent = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100066a, .hex);
pub const XK_Arabic_superscript_alef = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000670, .hex);
pub const XK_Arabic_tteh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000679, .hex);
pub const XK_Arabic_peh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100067e, .hex);
pub const XK_Arabic_tcheh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000686, .hex);
pub const XK_Arabic_ddal = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000688, .hex);
pub const XK_Arabic_rreh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000691, .hex);
pub const XK_Arabic_comma = @as(c_int, 0x05ac);
pub const XK_Arabic_fullstop = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006d4, .hex);
pub const XK_Arabic_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000660, .hex);
pub const XK_Arabic_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000661, .hex);
pub const XK_Arabic_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000662, .hex);
pub const XK_Arabic_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000663, .hex);
pub const XK_Arabic_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000664, .hex);
pub const XK_Arabic_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000665, .hex);
pub const XK_Arabic_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000666, .hex);
pub const XK_Arabic_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000667, .hex);
pub const XK_Arabic_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000668, .hex);
pub const XK_Arabic_9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000669, .hex);
pub const XK_Arabic_semicolon = @as(c_int, 0x05bb);
pub const XK_Arabic_question_mark = @as(c_int, 0x05bf);
pub const XK_Arabic_hamza = @as(c_int, 0x05c1);
pub const XK_Arabic_maddaonalef = @as(c_int, 0x05c2);
pub const XK_Arabic_hamzaonalef = @as(c_int, 0x05c3);
pub const XK_Arabic_hamzaonwaw = @as(c_int, 0x05c4);
pub const XK_Arabic_hamzaunderalef = @as(c_int, 0x05c5);
pub const XK_Arabic_hamzaonyeh = @as(c_int, 0x05c6);
pub const XK_Arabic_alef = @as(c_int, 0x05c7);
pub const XK_Arabic_beh = @as(c_int, 0x05c8);
pub const XK_Arabic_tehmarbuta = @as(c_int, 0x05c9);
pub const XK_Arabic_teh = @as(c_int, 0x05ca);
pub const XK_Arabic_theh = @as(c_int, 0x05cb);
pub const XK_Arabic_jeem = @as(c_int, 0x05cc);
pub const XK_Arabic_hah = @as(c_int, 0x05cd);
pub const XK_Arabic_khah = @as(c_int, 0x05ce);
pub const XK_Arabic_dal = @as(c_int, 0x05cf);
pub const XK_Arabic_thal = @as(c_int, 0x05d0);
pub const XK_Arabic_ra = @as(c_int, 0x05d1);
pub const XK_Arabic_zain = @as(c_int, 0x05d2);
pub const XK_Arabic_seen = @as(c_int, 0x05d3);
pub const XK_Arabic_sheen = @as(c_int, 0x05d4);
pub const XK_Arabic_sad = @as(c_int, 0x05d5);
pub const XK_Arabic_dad = @as(c_int, 0x05d6);
pub const XK_Arabic_tah = @as(c_int, 0x05d7);
pub const XK_Arabic_zah = @as(c_int, 0x05d8);
pub const XK_Arabic_ain = @as(c_int, 0x05d9);
pub const XK_Arabic_ghain = @as(c_int, 0x05da);
pub const XK_Arabic_tatweel = @as(c_int, 0x05e0);
pub const XK_Arabic_feh = @as(c_int, 0x05e1);
pub const XK_Arabic_qaf = @as(c_int, 0x05e2);
pub const XK_Arabic_kaf = @as(c_int, 0x05e3);
pub const XK_Arabic_lam = @as(c_int, 0x05e4);
pub const XK_Arabic_meem = @as(c_int, 0x05e5);
pub const XK_Arabic_noon = @as(c_int, 0x05e6);
pub const XK_Arabic_ha = @as(c_int, 0x05e7);
pub const XK_Arabic_heh = @as(c_int, 0x05e7);
pub const XK_Arabic_waw = @as(c_int, 0x05e8);
pub const XK_Arabic_alefmaksura = @as(c_int, 0x05e9);
pub const XK_Arabic_yeh = @as(c_int, 0x05ea);
pub const XK_Arabic_fathatan = @as(c_int, 0x05eb);
pub const XK_Arabic_dammatan = @as(c_int, 0x05ec);
pub const XK_Arabic_kasratan = @as(c_int, 0x05ed);
pub const XK_Arabic_fatha = @as(c_int, 0x05ee);
pub const XK_Arabic_damma = @as(c_int, 0x05ef);
pub const XK_Arabic_kasra = @as(c_int, 0x05f0);
pub const XK_Arabic_shadda = @as(c_int, 0x05f1);
pub const XK_Arabic_sukun = @as(c_int, 0x05f2);
pub const XK_Arabic_madda_above = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000653, .hex);
pub const XK_Arabic_hamza_above = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000654, .hex);
pub const XK_Arabic_hamza_below = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000655, .hex);
pub const XK_Arabic_jeh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000698, .hex);
pub const XK_Arabic_veh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006a4, .hex);
pub const XK_Arabic_keheh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006a9, .hex);
pub const XK_Arabic_gaf = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006af, .hex);
pub const XK_Arabic_noon_ghunna = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006ba, .hex);
pub const XK_Arabic_heh_doachashmee = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006be, .hex);
pub const XK_Farsi_yeh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006cc, .hex);
pub const XK_Arabic_farsi_yeh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006cc, .hex);
pub const XK_Arabic_yeh_baree = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006d2, .hex);
pub const XK_Arabic_heh_goal = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10006c1, .hex);
pub const XK_Arabic_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_Cyrillic_GHE_bar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000492, .hex);
pub const XK_Cyrillic_ghe_bar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000493, .hex);
pub const XK_Cyrillic_ZHE_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000496, .hex);
pub const XK_Cyrillic_zhe_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000497, .hex);
pub const XK_Cyrillic_KA_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100049a, .hex);
pub const XK_Cyrillic_ka_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100049b, .hex);
pub const XK_Cyrillic_KA_vertstroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100049c, .hex);
pub const XK_Cyrillic_ka_vertstroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100049d, .hex);
pub const XK_Cyrillic_EN_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004a2, .hex);
pub const XK_Cyrillic_en_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004a3, .hex);
pub const XK_Cyrillic_U_straight = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004ae, .hex);
pub const XK_Cyrillic_u_straight = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004af, .hex);
pub const XK_Cyrillic_U_straight_bar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b0, .hex);
pub const XK_Cyrillic_u_straight_bar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b1, .hex);
pub const XK_Cyrillic_HA_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b2, .hex);
pub const XK_Cyrillic_ha_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b3, .hex);
pub const XK_Cyrillic_CHE_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b6, .hex);
pub const XK_Cyrillic_che_descender = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b7, .hex);
pub const XK_Cyrillic_CHE_vertstroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b8, .hex);
pub const XK_Cyrillic_che_vertstroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004b9, .hex);
pub const XK_Cyrillic_SHHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004ba, .hex);
pub const XK_Cyrillic_shha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004bb, .hex);
pub const XK_Cyrillic_SCHWA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004d8, .hex);
pub const XK_Cyrillic_schwa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004d9, .hex);
pub const XK_Cyrillic_I_macron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004e2, .hex);
pub const XK_Cyrillic_i_macron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004e3, .hex);
pub const XK_Cyrillic_O_bar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004e8, .hex);
pub const XK_Cyrillic_o_bar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004e9, .hex);
pub const XK_Cyrillic_U_macron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004ee, .hex);
pub const XK_Cyrillic_u_macron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004ef, .hex);
pub const XK_Serbian_dje = @as(c_int, 0x06a1);
pub const XK_Macedonia_gje = @as(c_int, 0x06a2);
pub const XK_Cyrillic_io = @as(c_int, 0x06a3);
pub const XK_Ukrainian_ie = @as(c_int, 0x06a4);
pub const XK_Ukranian_je = @as(c_int, 0x06a4);
pub const XK_Macedonia_dse = @as(c_int, 0x06a5);
pub const XK_Ukrainian_i = @as(c_int, 0x06a6);
pub const XK_Ukranian_i = @as(c_int, 0x06a6);
pub const XK_Ukrainian_yi = @as(c_int, 0x06a7);
pub const XK_Ukranian_yi = @as(c_int, 0x06a7);
pub const XK_Cyrillic_je = @as(c_int, 0x06a8);
pub const XK_Serbian_je = @as(c_int, 0x06a8);
pub const XK_Cyrillic_lje = @as(c_int, 0x06a9);
pub const XK_Serbian_lje = @as(c_int, 0x06a9);
pub const XK_Cyrillic_nje = @as(c_int, 0x06aa);
pub const XK_Serbian_nje = @as(c_int, 0x06aa);
pub const XK_Serbian_tshe = @as(c_int, 0x06ab);
pub const XK_Macedonia_kje = @as(c_int, 0x06ac);
pub const XK_Ukrainian_ghe_with_upturn = @as(c_int, 0x06ad);
pub const XK_Byelorussian_shortu = @as(c_int, 0x06ae);
pub const XK_Cyrillic_dzhe = @as(c_int, 0x06af);
pub const XK_Serbian_dze = @as(c_int, 0x06af);
pub const XK_numerosign = @as(c_int, 0x06b0);
pub const XK_Serbian_DJE = @as(c_int, 0x06b1);
pub const XK_Macedonia_GJE = @as(c_int, 0x06b2);
pub const XK_Cyrillic_IO = @as(c_int, 0x06b3);
pub const XK_Ukrainian_IE = @as(c_int, 0x06b4);
pub const XK_Ukranian_JE = @as(c_int, 0x06b4);
pub const XK_Macedonia_DSE = @as(c_int, 0x06b5);
pub const XK_Ukrainian_I = @as(c_int, 0x06b6);
pub const XK_Ukranian_I = @as(c_int, 0x06b6);
pub const XK_Ukrainian_YI = @as(c_int, 0x06b7);
pub const XK_Ukranian_YI = @as(c_int, 0x06b7);
pub const XK_Cyrillic_JE = @as(c_int, 0x06b8);
pub const XK_Serbian_JE = @as(c_int, 0x06b8);
pub const XK_Cyrillic_LJE = @as(c_int, 0x06b9);
pub const XK_Serbian_LJE = @as(c_int, 0x06b9);
pub const XK_Cyrillic_NJE = @as(c_int, 0x06ba);
pub const XK_Serbian_NJE = @as(c_int, 0x06ba);
pub const XK_Serbian_TSHE = @as(c_int, 0x06bb);
pub const XK_Macedonia_KJE = @as(c_int, 0x06bc);
pub const XK_Ukrainian_GHE_WITH_UPTURN = @as(c_int, 0x06bd);
pub const XK_Byelorussian_SHORTU = @as(c_int, 0x06be);
pub const XK_Cyrillic_DZHE = @as(c_int, 0x06bf);
pub const XK_Serbian_DZE = @as(c_int, 0x06bf);
pub const XK_Cyrillic_yu = @as(c_int, 0x06c0);
pub const XK_Cyrillic_a = @as(c_int, 0x06c1);
pub const XK_Cyrillic_be = @as(c_int, 0x06c2);
pub const XK_Cyrillic_tse = @as(c_int, 0x06c3);
pub const XK_Cyrillic_de = @as(c_int, 0x06c4);
pub const XK_Cyrillic_ie = @as(c_int, 0x06c5);
pub const XK_Cyrillic_ef = @as(c_int, 0x06c6);
pub const XK_Cyrillic_ghe = @as(c_int, 0x06c7);
pub const XK_Cyrillic_ha = @as(c_int, 0x06c8);
pub const XK_Cyrillic_i = @as(c_int, 0x06c9);
pub const XK_Cyrillic_shorti = @as(c_int, 0x06ca);
pub const XK_Cyrillic_ka = @as(c_int, 0x06cb);
pub const XK_Cyrillic_el = @as(c_int, 0x06cc);
pub const XK_Cyrillic_em = @as(c_int, 0x06cd);
pub const XK_Cyrillic_en = @as(c_int, 0x06ce);
pub const XK_Cyrillic_o = @as(c_int, 0x06cf);
pub const XK_Cyrillic_pe = @as(c_int, 0x06d0);
pub const XK_Cyrillic_ya = @as(c_int, 0x06d1);
pub const XK_Cyrillic_er = @as(c_int, 0x06d2);
pub const XK_Cyrillic_es = @as(c_int, 0x06d3);
pub const XK_Cyrillic_te = @as(c_int, 0x06d4);
pub const XK_Cyrillic_u = @as(c_int, 0x06d5);
pub const XK_Cyrillic_zhe = @as(c_int, 0x06d6);
pub const XK_Cyrillic_ve = @as(c_int, 0x06d7);
pub const XK_Cyrillic_softsign = @as(c_int, 0x06d8);
pub const XK_Cyrillic_yeru = @as(c_int, 0x06d9);
pub const XK_Cyrillic_ze = @as(c_int, 0x06da);
pub const XK_Cyrillic_sha = @as(c_int, 0x06db);
pub const XK_Cyrillic_e = @as(c_int, 0x06dc);
pub const XK_Cyrillic_shcha = @as(c_int, 0x06dd);
pub const XK_Cyrillic_che = @as(c_int, 0x06de);
pub const XK_Cyrillic_hardsign = @as(c_int, 0x06df);
pub const XK_Cyrillic_YU = @as(c_int, 0x06e0);
pub const XK_Cyrillic_A = @as(c_int, 0x06e1);
pub const XK_Cyrillic_BE = @as(c_int, 0x06e2);
pub const XK_Cyrillic_TSE = @as(c_int, 0x06e3);
pub const XK_Cyrillic_DE = @as(c_int, 0x06e4);
pub const XK_Cyrillic_IE = @as(c_int, 0x06e5);
pub const XK_Cyrillic_EF = @as(c_int, 0x06e6);
pub const XK_Cyrillic_GHE = @as(c_int, 0x06e7);
pub const XK_Cyrillic_HA = @as(c_int, 0x06e8);
pub const XK_Cyrillic_I = @as(c_int, 0x06e9);
pub const XK_Cyrillic_SHORTI = @as(c_int, 0x06ea);
pub const XK_Cyrillic_KA = @as(c_int, 0x06eb);
pub const XK_Cyrillic_EL = @as(c_int, 0x06ec);
pub const XK_Cyrillic_EM = @as(c_int, 0x06ed);
pub const XK_Cyrillic_EN = @as(c_int, 0x06ee);
pub const XK_Cyrillic_O = @as(c_int, 0x06ef);
pub const XK_Cyrillic_PE = @as(c_int, 0x06f0);
pub const XK_Cyrillic_YA = @as(c_int, 0x06f1);
pub const XK_Cyrillic_ER = @as(c_int, 0x06f2);
pub const XK_Cyrillic_ES = @as(c_int, 0x06f3);
pub const XK_Cyrillic_TE = @as(c_int, 0x06f4);
pub const XK_Cyrillic_U = @as(c_int, 0x06f5);
pub const XK_Cyrillic_ZHE = @as(c_int, 0x06f6);
pub const XK_Cyrillic_VE = @as(c_int, 0x06f7);
pub const XK_Cyrillic_SOFTSIGN = @as(c_int, 0x06f8);
pub const XK_Cyrillic_YERU = @as(c_int, 0x06f9);
pub const XK_Cyrillic_ZE = @as(c_int, 0x06fa);
pub const XK_Cyrillic_SHA = @as(c_int, 0x06fb);
pub const XK_Cyrillic_E = @as(c_int, 0x06fc);
pub const XK_Cyrillic_SHCHA = @as(c_int, 0x06fd);
pub const XK_Cyrillic_CHE = @as(c_int, 0x06fe);
pub const XK_Cyrillic_HARDSIGN = @as(c_int, 0x06ff);
pub const XK_Greek_ALPHAaccent = @as(c_int, 0x07a1);
pub const XK_Greek_EPSILONaccent = @as(c_int, 0x07a2);
pub const XK_Greek_ETAaccent = @as(c_int, 0x07a3);
pub const XK_Greek_IOTAaccent = @as(c_int, 0x07a4);
pub const XK_Greek_IOTAdieresis = @as(c_int, 0x07a5);
pub const XK_Greek_IOTAdiaeresis = @as(c_int, 0x07a5);
pub const XK_Greek_OMICRONaccent = @as(c_int, 0x07a7);
pub const XK_Greek_UPSILONaccent = @as(c_int, 0x07a8);
pub const XK_Greek_UPSILONdieresis = @as(c_int, 0x07a9);
pub const XK_Greek_OMEGAaccent = @as(c_int, 0x07ab);
pub const XK_Greek_accentdieresis = @as(c_int, 0x07ae);
pub const XK_Greek_horizbar = @as(c_int, 0x07af);
pub const XK_Greek_alphaaccent = @as(c_int, 0x07b1);
pub const XK_Greek_epsilonaccent = @as(c_int, 0x07b2);
pub const XK_Greek_etaaccent = @as(c_int, 0x07b3);
pub const XK_Greek_iotaaccent = @as(c_int, 0x07b4);
pub const XK_Greek_iotadieresis = @as(c_int, 0x07b5);
pub const XK_Greek_iotaaccentdieresis = @as(c_int, 0x07b6);
pub const XK_Greek_omicronaccent = @as(c_int, 0x07b7);
pub const XK_Greek_upsilonaccent = @as(c_int, 0x07b8);
pub const XK_Greek_upsilondieresis = @as(c_int, 0x07b9);
pub const XK_Greek_upsilonaccentdieresis = @as(c_int, 0x07ba);
pub const XK_Greek_omegaaccent = @as(c_int, 0x07bb);
pub const XK_Greek_ALPHA = @as(c_int, 0x07c1);
pub const XK_Greek_BETA = @as(c_int, 0x07c2);
pub const XK_Greek_GAMMA = @as(c_int, 0x07c3);
pub const XK_Greek_DELTA = @as(c_int, 0x07c4);
pub const XK_Greek_EPSILON = @as(c_int, 0x07c5);
pub const XK_Greek_ZETA = @as(c_int, 0x07c6);
pub const XK_Greek_ETA = @as(c_int, 0x07c7);
pub const XK_Greek_THETA = @as(c_int, 0x07c8);
pub const XK_Greek_IOTA = @as(c_int, 0x07c9);
pub const XK_Greek_KAPPA = @as(c_int, 0x07ca);
pub const XK_Greek_LAMDA = @as(c_int, 0x07cb);
pub const XK_Greek_LAMBDA = @as(c_int, 0x07cb);
pub const XK_Greek_MU = @as(c_int, 0x07cc);
pub const XK_Greek_NU = @as(c_int, 0x07cd);
pub const XK_Greek_XI = @as(c_int, 0x07ce);
pub const XK_Greek_OMICRON = @as(c_int, 0x07cf);
pub const XK_Greek_PI = @as(c_int, 0x07d0);
pub const XK_Greek_RHO = @as(c_int, 0x07d1);
pub const XK_Greek_SIGMA = @as(c_int, 0x07d2);
pub const XK_Greek_TAU = @as(c_int, 0x07d4);
pub const XK_Greek_UPSILON = @as(c_int, 0x07d5);
pub const XK_Greek_PHI = @as(c_int, 0x07d6);
pub const XK_Greek_CHI = @as(c_int, 0x07d7);
pub const XK_Greek_PSI = @as(c_int, 0x07d8);
pub const XK_Greek_OMEGA = @as(c_int, 0x07d9);
pub const XK_Greek_alpha = @as(c_int, 0x07e1);
pub const XK_Greek_beta = @as(c_int, 0x07e2);
pub const XK_Greek_gamma = @as(c_int, 0x07e3);
pub const XK_Greek_delta = @as(c_int, 0x07e4);
pub const XK_Greek_epsilon = @as(c_int, 0x07e5);
pub const XK_Greek_zeta = @as(c_int, 0x07e6);
pub const XK_Greek_eta = @as(c_int, 0x07e7);
pub const XK_Greek_theta = @as(c_int, 0x07e8);
pub const XK_Greek_iota = @as(c_int, 0x07e9);
pub const XK_Greek_kappa = @as(c_int, 0x07ea);
pub const XK_Greek_lamda = @as(c_int, 0x07eb);
pub const XK_Greek_lambda = @as(c_int, 0x07eb);
pub const XK_Greek_mu = @as(c_int, 0x07ec);
pub const XK_Greek_nu = @as(c_int, 0x07ed);
pub const XK_Greek_xi = @as(c_int, 0x07ee);
pub const XK_Greek_omicron = @as(c_int, 0x07ef);
pub const XK_Greek_pi = @as(c_int, 0x07f0);
pub const XK_Greek_rho = @as(c_int, 0x07f1);
pub const XK_Greek_sigma = @as(c_int, 0x07f2);
pub const XK_Greek_finalsmallsigma = @as(c_int, 0x07f3);
pub const XK_Greek_tau = @as(c_int, 0x07f4);
pub const XK_Greek_upsilon = @as(c_int, 0x07f5);
pub const XK_Greek_phi = @as(c_int, 0x07f6);
pub const XK_Greek_chi = @as(c_int, 0x07f7);
pub const XK_Greek_psi = @as(c_int, 0x07f8);
pub const XK_Greek_omega = @as(c_int, 0x07f9);
pub const XK_Greek_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_hebrew_doublelowline = @as(c_int, 0x0cdf);
pub const XK_hebrew_aleph = @as(c_int, 0x0ce0);
pub const XK_hebrew_bet = @as(c_int, 0x0ce1);
pub const XK_hebrew_beth = @as(c_int, 0x0ce1);
pub const XK_hebrew_gimel = @as(c_int, 0x0ce2);
pub const XK_hebrew_gimmel = @as(c_int, 0x0ce2);
pub const XK_hebrew_dalet = @as(c_int, 0x0ce3);
pub const XK_hebrew_daleth = @as(c_int, 0x0ce3);
pub const XK_hebrew_he = @as(c_int, 0x0ce4);
pub const XK_hebrew_waw = @as(c_int, 0x0ce5);
pub const XK_hebrew_zain = @as(c_int, 0x0ce6);
pub const XK_hebrew_zayin = @as(c_int, 0x0ce6);
pub const XK_hebrew_chet = @as(c_int, 0x0ce7);
pub const XK_hebrew_het = @as(c_int, 0x0ce7);
pub const XK_hebrew_tet = @as(c_int, 0x0ce8);
pub const XK_hebrew_teth = @as(c_int, 0x0ce8);
pub const XK_hebrew_yod = @as(c_int, 0x0ce9);
pub const XK_hebrew_finalkaph = @as(c_int, 0x0cea);
pub const XK_hebrew_kaph = @as(c_int, 0x0ceb);
pub const XK_hebrew_lamed = @as(c_int, 0x0cec);
pub const XK_hebrew_finalmem = @as(c_int, 0x0ced);
pub const XK_hebrew_mem = @as(c_int, 0x0cee);
pub const XK_hebrew_finalnun = @as(c_int, 0x0cef);
pub const XK_hebrew_nun = @as(c_int, 0x0cf0);
pub const XK_hebrew_samech = @as(c_int, 0x0cf1);
pub const XK_hebrew_samekh = @as(c_int, 0x0cf1);
pub const XK_hebrew_ayin = @as(c_int, 0x0cf2);
pub const XK_hebrew_finalpe = @as(c_int, 0x0cf3);
pub const XK_hebrew_pe = @as(c_int, 0x0cf4);
pub const XK_hebrew_finalzade = @as(c_int, 0x0cf5);
pub const XK_hebrew_finalzadi = @as(c_int, 0x0cf5);
pub const XK_hebrew_zade = @as(c_int, 0x0cf6);
pub const XK_hebrew_zadi = @as(c_int, 0x0cf6);
pub const XK_hebrew_qoph = @as(c_int, 0x0cf7);
pub const XK_hebrew_kuf = @as(c_int, 0x0cf7);
pub const XK_hebrew_resh = @as(c_int, 0x0cf8);
pub const XK_hebrew_shin = @as(c_int, 0x0cf9);
pub const XK_hebrew_taw = @as(c_int, 0x0cfa);
pub const XK_hebrew_taf = @as(c_int, 0x0cfa);
pub const XK_Hebrew_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_Thai_kokai = @as(c_int, 0x0da1);
pub const XK_Thai_khokhai = @as(c_int, 0x0da2);
pub const XK_Thai_khokhuat = @as(c_int, 0x0da3);
pub const XK_Thai_khokhwai = @as(c_int, 0x0da4);
pub const XK_Thai_khokhon = @as(c_int, 0x0da5);
pub const XK_Thai_khorakhang = @as(c_int, 0x0da6);
pub const XK_Thai_ngongu = @as(c_int, 0x0da7);
pub const XK_Thai_chochan = @as(c_int, 0x0da8);
pub const XK_Thai_choching = @as(c_int, 0x0da9);
pub const XK_Thai_chochang = @as(c_int, 0x0daa);
pub const XK_Thai_soso = @as(c_int, 0x0dab);
pub const XK_Thai_chochoe = @as(c_int, 0x0dac);
pub const XK_Thai_yoying = @as(c_int, 0x0dad);
pub const XK_Thai_dochada = @as(c_int, 0x0dae);
pub const XK_Thai_topatak = @as(c_int, 0x0daf);
pub const XK_Thai_thothan = @as(c_int, 0x0db0);
pub const XK_Thai_thonangmontho = @as(c_int, 0x0db1);
pub const XK_Thai_thophuthao = @as(c_int, 0x0db2);
pub const XK_Thai_nonen = @as(c_int, 0x0db3);
pub const XK_Thai_dodek = @as(c_int, 0x0db4);
pub const XK_Thai_totao = @as(c_int, 0x0db5);
pub const XK_Thai_thothung = @as(c_int, 0x0db6);
pub const XK_Thai_thothahan = @as(c_int, 0x0db7);
pub const XK_Thai_thothong = @as(c_int, 0x0db8);
pub const XK_Thai_nonu = @as(c_int, 0x0db9);
pub const XK_Thai_bobaimai = @as(c_int, 0x0dba);
pub const XK_Thai_popla = @as(c_int, 0x0dbb);
pub const XK_Thai_phophung = @as(c_int, 0x0dbc);
pub const XK_Thai_fofa = @as(c_int, 0x0dbd);
pub const XK_Thai_phophan = @as(c_int, 0x0dbe);
pub const XK_Thai_fofan = @as(c_int, 0x0dbf);
pub const XK_Thai_phosamphao = @as(c_int, 0x0dc0);
pub const XK_Thai_moma = @as(c_int, 0x0dc1);
pub const XK_Thai_yoyak = @as(c_int, 0x0dc2);
pub const XK_Thai_rorua = @as(c_int, 0x0dc3);
pub const XK_Thai_ru = @as(c_int, 0x0dc4);
pub const XK_Thai_loling = @as(c_int, 0x0dc5);
pub const XK_Thai_lu = @as(c_int, 0x0dc6);
pub const XK_Thai_wowaen = @as(c_int, 0x0dc7);
pub const XK_Thai_sosala = @as(c_int, 0x0dc8);
pub const XK_Thai_sorusi = @as(c_int, 0x0dc9);
pub const XK_Thai_sosua = @as(c_int, 0x0dca);
pub const XK_Thai_hohip = @as(c_int, 0x0dcb);
pub const XK_Thai_lochula = @as(c_int, 0x0dcc);
pub const XK_Thai_oang = @as(c_int, 0x0dcd);
pub const XK_Thai_honokhuk = @as(c_int, 0x0dce);
pub const XK_Thai_paiyannoi = @as(c_int, 0x0dcf);
pub const XK_Thai_saraa = @as(c_int, 0x0dd0);
pub const XK_Thai_maihanakat = @as(c_int, 0x0dd1);
pub const XK_Thai_saraaa = @as(c_int, 0x0dd2);
pub const XK_Thai_saraam = @as(c_int, 0x0dd3);
pub const XK_Thai_sarai = @as(c_int, 0x0dd4);
pub const XK_Thai_saraii = @as(c_int, 0x0dd5);
pub const XK_Thai_saraue = @as(c_int, 0x0dd6);
pub const XK_Thai_sarauee = @as(c_int, 0x0dd7);
pub const XK_Thai_sarau = @as(c_int, 0x0dd8);
pub const XK_Thai_sarauu = @as(c_int, 0x0dd9);
pub const XK_Thai_phinthu = @as(c_int, 0x0dda);
pub const XK_Thai_maihanakat_maitho = @as(c_int, 0x0dde);
pub const XK_Thai_baht = @as(c_int, 0x0ddf);
pub const XK_Thai_sarae = @as(c_int, 0x0de0);
pub const XK_Thai_saraae = @as(c_int, 0x0de1);
pub const XK_Thai_sarao = @as(c_int, 0x0de2);
pub const XK_Thai_saraaimaimuan = @as(c_int, 0x0de3);
pub const XK_Thai_saraaimaimalai = @as(c_int, 0x0de4);
pub const XK_Thai_lakkhangyao = @as(c_int, 0x0de5);
pub const XK_Thai_maiyamok = @as(c_int, 0x0de6);
pub const XK_Thai_maitaikhu = @as(c_int, 0x0de7);
pub const XK_Thai_maiek = @as(c_int, 0x0de8);
pub const XK_Thai_maitho = @as(c_int, 0x0de9);
pub const XK_Thai_maitri = @as(c_int, 0x0dea);
pub const XK_Thai_maichattawa = @as(c_int, 0x0deb);
pub const XK_Thai_thanthakhat = @as(c_int, 0x0dec);
pub const XK_Thai_nikhahit = @as(c_int, 0x0ded);
pub const XK_Thai_leksun = @as(c_int, 0x0df0);
pub const XK_Thai_leknung = @as(c_int, 0x0df1);
pub const XK_Thai_leksong = @as(c_int, 0x0df2);
pub const XK_Thai_leksam = @as(c_int, 0x0df3);
pub const XK_Thai_leksi = @as(c_int, 0x0df4);
pub const XK_Thai_lekha = @as(c_int, 0x0df5);
pub const XK_Thai_lekhok = @as(c_int, 0x0df6);
pub const XK_Thai_lekchet = @as(c_int, 0x0df7);
pub const XK_Thai_lekpaet = @as(c_int, 0x0df8);
pub const XK_Thai_lekkao = @as(c_int, 0x0df9);
pub const XK_Hangul = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff31, .hex);
pub const XK_Hangul_Start = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff32, .hex);
pub const XK_Hangul_End = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff33, .hex);
pub const XK_Hangul_Hanja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff34, .hex);
pub const XK_Hangul_Jamo = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff35, .hex);
pub const XK_Hangul_Romaja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff36, .hex);
pub const XK_Hangul_Codeinput = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff37, .hex);
pub const XK_Hangul_Jeonja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff38, .hex);
pub const XK_Hangul_Banja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff39, .hex);
pub const XK_Hangul_PreHanja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3a, .hex);
pub const XK_Hangul_PostHanja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3b, .hex);
pub const XK_Hangul_SingleCandidate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3c, .hex);
pub const XK_Hangul_MultipleCandidate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3d, .hex);
pub const XK_Hangul_PreviousCandidate = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3e, .hex);
pub const XK_Hangul_Special = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff3f, .hex);
pub const XK_Hangul_switch = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff7e, .hex);
pub const XK_Hangul_Kiyeog = @as(c_int, 0x0ea1);
pub const XK_Hangul_SsangKiyeog = @as(c_int, 0x0ea2);
pub const XK_Hangul_KiyeogSios = @as(c_int, 0x0ea3);
pub const XK_Hangul_Nieun = @as(c_int, 0x0ea4);
pub const XK_Hangul_NieunJieuj = @as(c_int, 0x0ea5);
pub const XK_Hangul_NieunHieuh = @as(c_int, 0x0ea6);
pub const XK_Hangul_Dikeud = @as(c_int, 0x0ea7);
pub const XK_Hangul_SsangDikeud = @as(c_int, 0x0ea8);
pub const XK_Hangul_Rieul = @as(c_int, 0x0ea9);
pub const XK_Hangul_RieulKiyeog = @as(c_int, 0x0eaa);
pub const XK_Hangul_RieulMieum = @as(c_int, 0x0eab);
pub const XK_Hangul_RieulPieub = @as(c_int, 0x0eac);
pub const XK_Hangul_RieulSios = @as(c_int, 0x0ead);
pub const XK_Hangul_RieulTieut = @as(c_int, 0x0eae);
pub const XK_Hangul_RieulPhieuf = @as(c_int, 0x0eaf);
pub const XK_Hangul_RieulHieuh = @as(c_int, 0x0eb0);
pub const XK_Hangul_Mieum = @as(c_int, 0x0eb1);
pub const XK_Hangul_Pieub = @as(c_int, 0x0eb2);
pub const XK_Hangul_SsangPieub = @as(c_int, 0x0eb3);
pub const XK_Hangul_PieubSios = @as(c_int, 0x0eb4);
pub const XK_Hangul_Sios = @as(c_int, 0x0eb5);
pub const XK_Hangul_SsangSios = @as(c_int, 0x0eb6);
pub const XK_Hangul_Ieung = @as(c_int, 0x0eb7);
pub const XK_Hangul_Jieuj = @as(c_int, 0x0eb8);
pub const XK_Hangul_SsangJieuj = @as(c_int, 0x0eb9);
pub const XK_Hangul_Cieuc = @as(c_int, 0x0eba);
pub const XK_Hangul_Khieuq = @as(c_int, 0x0ebb);
pub const XK_Hangul_Tieut = @as(c_int, 0x0ebc);
pub const XK_Hangul_Phieuf = @as(c_int, 0x0ebd);
pub const XK_Hangul_Hieuh = @as(c_int, 0x0ebe);
pub const XK_Hangul_A = @as(c_int, 0x0ebf);
pub const XK_Hangul_AE = @as(c_int, 0x0ec0);
pub const XK_Hangul_YA = @as(c_int, 0x0ec1);
pub const XK_Hangul_YAE = @as(c_int, 0x0ec2);
pub const XK_Hangul_EO = @as(c_int, 0x0ec3);
pub const XK_Hangul_E = @as(c_int, 0x0ec4);
pub const XK_Hangul_YEO = @as(c_int, 0x0ec5);
pub const XK_Hangul_YE = @as(c_int, 0x0ec6);
pub const XK_Hangul_O = @as(c_int, 0x0ec7);
pub const XK_Hangul_WA = @as(c_int, 0x0ec8);
pub const XK_Hangul_WAE = @as(c_int, 0x0ec9);
pub const XK_Hangul_OE = @as(c_int, 0x0eca);
pub const XK_Hangul_YO = @as(c_int, 0x0ecb);
pub const XK_Hangul_U = @as(c_int, 0x0ecc);
pub const XK_Hangul_WEO = @as(c_int, 0x0ecd);
pub const XK_Hangul_WE = @as(c_int, 0x0ece);
pub const XK_Hangul_WI = @as(c_int, 0x0ecf);
pub const XK_Hangul_YU = @as(c_int, 0x0ed0);
pub const XK_Hangul_EU = @as(c_int, 0x0ed1);
pub const XK_Hangul_YI = @as(c_int, 0x0ed2);
pub const XK_Hangul_I = @as(c_int, 0x0ed3);
pub const XK_Hangul_J_Kiyeog = @as(c_int, 0x0ed4);
pub const XK_Hangul_J_SsangKiyeog = @as(c_int, 0x0ed5);
pub const XK_Hangul_J_KiyeogSios = @as(c_int, 0x0ed6);
pub const XK_Hangul_J_Nieun = @as(c_int, 0x0ed7);
pub const XK_Hangul_J_NieunJieuj = @as(c_int, 0x0ed8);
pub const XK_Hangul_J_NieunHieuh = @as(c_int, 0x0ed9);
pub const XK_Hangul_J_Dikeud = @as(c_int, 0x0eda);
pub const XK_Hangul_J_Rieul = @as(c_int, 0x0edb);
pub const XK_Hangul_J_RieulKiyeog = @as(c_int, 0x0edc);
pub const XK_Hangul_J_RieulMieum = @as(c_int, 0x0edd);
pub const XK_Hangul_J_RieulPieub = @as(c_int, 0x0ede);
pub const XK_Hangul_J_RieulSios = @as(c_int, 0x0edf);
pub const XK_Hangul_J_RieulTieut = @as(c_int, 0x0ee0);
pub const XK_Hangul_J_RieulPhieuf = @as(c_int, 0x0ee1);
pub const XK_Hangul_J_RieulHieuh = @as(c_int, 0x0ee2);
pub const XK_Hangul_J_Mieum = @as(c_int, 0x0ee3);
pub const XK_Hangul_J_Pieub = @as(c_int, 0x0ee4);
pub const XK_Hangul_J_PieubSios = @as(c_int, 0x0ee5);
pub const XK_Hangul_J_Sios = @as(c_int, 0x0ee6);
pub const XK_Hangul_J_SsangSios = @as(c_int, 0x0ee7);
pub const XK_Hangul_J_Ieung = @as(c_int, 0x0ee8);
pub const XK_Hangul_J_Jieuj = @as(c_int, 0x0ee9);
pub const XK_Hangul_J_Cieuc = @as(c_int, 0x0eea);
pub const XK_Hangul_J_Khieuq = @as(c_int, 0x0eeb);
pub const XK_Hangul_J_Tieut = @as(c_int, 0x0eec);
pub const XK_Hangul_J_Phieuf = @as(c_int, 0x0eed);
pub const XK_Hangul_J_Hieuh = @as(c_int, 0x0eee);
pub const XK_Hangul_RieulYeorinHieuh = @as(c_int, 0x0eef);
pub const XK_Hangul_SunkyeongeumMieum = @as(c_int, 0x0ef0);
pub const XK_Hangul_SunkyeongeumPieub = @as(c_int, 0x0ef1);
pub const XK_Hangul_PanSios = @as(c_int, 0x0ef2);
pub const XK_Hangul_KkogjiDalrinIeung = @as(c_int, 0x0ef3);
pub const XK_Hangul_SunkyeongeumPhieuf = @as(c_int, 0x0ef4);
pub const XK_Hangul_YeorinHieuh = @as(c_int, 0x0ef5);
pub const XK_Hangul_AraeA = @as(c_int, 0x0ef6);
pub const XK_Hangul_AraeAE = @as(c_int, 0x0ef7);
pub const XK_Hangul_J_PanSios = @as(c_int, 0x0ef8);
pub const XK_Hangul_J_KkogjiDalrinIeung = @as(c_int, 0x0ef9);
pub const XK_Hangul_J_YeorinHieuh = @as(c_int, 0x0efa);
pub const XK_Korean_Won = @as(c_int, 0x0eff);
pub const XK_Armenian_ligature_ew = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000587, .hex);
pub const XK_Armenian_full_stop = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000589, .hex);
pub const XK_Armenian_verjaket = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000589, .hex);
pub const XK_Armenian_separation_mark = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055d, .hex);
pub const XK_Armenian_but = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055d, .hex);
pub const XK_Armenian_hyphen = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100058a, .hex);
pub const XK_Armenian_yentamna = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100058a, .hex);
pub const XK_Armenian_exclam = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055c, .hex);
pub const XK_Armenian_amanak = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055c, .hex);
pub const XK_Armenian_accent = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055b, .hex);
pub const XK_Armenian_shesht = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055b, .hex);
pub const XK_Armenian_question = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055e, .hex);
pub const XK_Armenian_paruyk = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055e, .hex);
pub const XK_Armenian_AYB = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000531, .hex);
pub const XK_Armenian_ayb = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000561, .hex);
pub const XK_Armenian_BEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000532, .hex);
pub const XK_Armenian_ben = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000562, .hex);
pub const XK_Armenian_GIM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000533, .hex);
pub const XK_Armenian_gim = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000563, .hex);
pub const XK_Armenian_DA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000534, .hex);
pub const XK_Armenian_da = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000564, .hex);
pub const XK_Armenian_YECH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000535, .hex);
pub const XK_Armenian_yech = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000565, .hex);
pub const XK_Armenian_ZA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000536, .hex);
pub const XK_Armenian_za = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000566, .hex);
pub const XK_Armenian_E = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000537, .hex);
pub const XK_Armenian_e = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000567, .hex);
pub const XK_Armenian_AT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000538, .hex);
pub const XK_Armenian_at = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000568, .hex);
pub const XK_Armenian_TO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000539, .hex);
pub const XK_Armenian_to = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000569, .hex);
pub const XK_Armenian_ZHE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100053a, .hex);
pub const XK_Armenian_zhe = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100056a, .hex);
pub const XK_Armenian_INI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100053b, .hex);
pub const XK_Armenian_ini = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100056b, .hex);
pub const XK_Armenian_LYUN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100053c, .hex);
pub const XK_Armenian_lyun = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100056c, .hex);
pub const XK_Armenian_KHE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100053d, .hex);
pub const XK_Armenian_khe = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100056d, .hex);
pub const XK_Armenian_TSA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100053e, .hex);
pub const XK_Armenian_tsa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100056e, .hex);
pub const XK_Armenian_KEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100053f, .hex);
pub const XK_Armenian_ken = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100056f, .hex);
pub const XK_Armenian_HO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000540, .hex);
pub const XK_Armenian_ho = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000570, .hex);
pub const XK_Armenian_DZA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000541, .hex);
pub const XK_Armenian_dza = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000571, .hex);
pub const XK_Armenian_GHAT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000542, .hex);
pub const XK_Armenian_ghat = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000572, .hex);
pub const XK_Armenian_TCHE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000543, .hex);
pub const XK_Armenian_tche = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000573, .hex);
pub const XK_Armenian_MEN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000544, .hex);
pub const XK_Armenian_men = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000574, .hex);
pub const XK_Armenian_HI = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000545, .hex);
pub const XK_Armenian_hi = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000575, .hex);
pub const XK_Armenian_NU = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000546, .hex);
pub const XK_Armenian_nu = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000576, .hex);
pub const XK_Armenian_SHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000547, .hex);
pub const XK_Armenian_sha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000577, .hex);
pub const XK_Armenian_VO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000548, .hex);
pub const XK_Armenian_vo = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000578, .hex);
pub const XK_Armenian_CHA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000549, .hex);
pub const XK_Armenian_cha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000579, .hex);
pub const XK_Armenian_PE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100054a, .hex);
pub const XK_Armenian_pe = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100057a, .hex);
pub const XK_Armenian_JE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100054b, .hex);
pub const XK_Armenian_je = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100057b, .hex);
pub const XK_Armenian_RA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100054c, .hex);
pub const XK_Armenian_ra = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100057c, .hex);
pub const XK_Armenian_SE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100054d, .hex);
pub const XK_Armenian_se = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100057d, .hex);
pub const XK_Armenian_VEV = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100054e, .hex);
pub const XK_Armenian_vev = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100057e, .hex);
pub const XK_Armenian_TYUN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100054f, .hex);
pub const XK_Armenian_tyun = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100057f, .hex);
pub const XK_Armenian_RE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000550, .hex);
pub const XK_Armenian_re = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000580, .hex);
pub const XK_Armenian_TSO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000551, .hex);
pub const XK_Armenian_tso = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000581, .hex);
pub const XK_Armenian_VYUN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000552, .hex);
pub const XK_Armenian_vyun = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000582, .hex);
pub const XK_Armenian_PYUR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000553, .hex);
pub const XK_Armenian_pyur = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000583, .hex);
pub const XK_Armenian_KE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000554, .hex);
pub const XK_Armenian_ke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000584, .hex);
pub const XK_Armenian_O = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000555, .hex);
pub const XK_Armenian_o = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000585, .hex);
pub const XK_Armenian_FE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000556, .hex);
pub const XK_Armenian_fe = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000586, .hex);
pub const XK_Armenian_apostrophe = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100055a, .hex);
pub const XK_Georgian_an = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d0, .hex);
pub const XK_Georgian_ban = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d1, .hex);
pub const XK_Georgian_gan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d2, .hex);
pub const XK_Georgian_don = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d3, .hex);
pub const XK_Georgian_en = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d4, .hex);
pub const XK_Georgian_vin = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d5, .hex);
pub const XK_Georgian_zen = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d6, .hex);
pub const XK_Georgian_tan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d7, .hex);
pub const XK_Georgian_in = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d8, .hex);
pub const XK_Georgian_kan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010d9, .hex);
pub const XK_Georgian_las = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010da, .hex);
pub const XK_Georgian_man = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010db, .hex);
pub const XK_Georgian_nar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010dc, .hex);
pub const XK_Georgian_on = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010dd, .hex);
pub const XK_Georgian_par = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010de, .hex);
pub const XK_Georgian_zhar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010df, .hex);
pub const XK_Georgian_rae = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e0, .hex);
pub const XK_Georgian_san = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e1, .hex);
pub const XK_Georgian_tar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e2, .hex);
pub const XK_Georgian_un = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e3, .hex);
pub const XK_Georgian_phar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e4, .hex);
pub const XK_Georgian_khar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e5, .hex);
pub const XK_Georgian_ghan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e6, .hex);
pub const XK_Georgian_qar = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e7, .hex);
pub const XK_Georgian_shin = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e8, .hex);
pub const XK_Georgian_chin = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010e9, .hex);
pub const XK_Georgian_can = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010ea, .hex);
pub const XK_Georgian_jil = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010eb, .hex);
pub const XK_Georgian_cil = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010ec, .hex);
pub const XK_Georgian_char = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010ed, .hex);
pub const XK_Georgian_xan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010ee, .hex);
pub const XK_Georgian_jhan = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010ef, .hex);
pub const XK_Georgian_hae = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f0, .hex);
pub const XK_Georgian_he = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f1, .hex);
pub const XK_Georgian_hie = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f2, .hex);
pub const XK_Georgian_we = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f3, .hex);
pub const XK_Georgian_har = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f4, .hex);
pub const XK_Georgian_hoe = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f5, .hex);
pub const XK_Georgian_fi = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10010f6, .hex);
pub const XK_Xabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e8a, .hex);
pub const XK_Ibreve = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100012c, .hex);
pub const XK_Zstroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001b5, .hex);
pub const XK_Gcaron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001e6, .hex);
pub const XK_Ocaron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001d1, .hex);
pub const XK_Obarred = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100019f, .hex);
pub const XK_xabovedot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e8b, .hex);
pub const XK_ibreve = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100012d, .hex);
pub const XK_zstroke = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001b6, .hex);
pub const XK_gcaron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001e7, .hex);
pub const XK_ocaron = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001d2, .hex);
pub const XK_obarred = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000275, .hex);
pub const XK_SCHWA = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100018f, .hex);
pub const XK_schwa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000259, .hex);
pub const XK_EZH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001b7, .hex);
pub const XK_ezh = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000292, .hex);
pub const XK_Lbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e36, .hex);
pub const XK_lbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001e37, .hex);
pub const XK_Abelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea0, .hex);
pub const XK_abelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea1, .hex);
pub const XK_Ahook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea2, .hex);
pub const XK_ahook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea3, .hex);
pub const XK_Acircumflexacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea4, .hex);
pub const XK_acircumflexacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea5, .hex);
pub const XK_Acircumflexgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea6, .hex);
pub const XK_acircumflexgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea7, .hex);
pub const XK_Acircumflexhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea8, .hex);
pub const XK_acircumflexhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ea9, .hex);
pub const XK_Acircumflextilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eaa, .hex);
pub const XK_acircumflextilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eab, .hex);
pub const XK_Acircumflexbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eac, .hex);
pub const XK_acircumflexbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ead, .hex);
pub const XK_Abreveacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eae, .hex);
pub const XK_abreveacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eaf, .hex);
pub const XK_Abrevegrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb0, .hex);
pub const XK_abrevegrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb1, .hex);
pub const XK_Abrevehook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb2, .hex);
pub const XK_abrevehook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb3, .hex);
pub const XK_Abrevetilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb4, .hex);
pub const XK_abrevetilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb5, .hex);
pub const XK_Abrevebelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb6, .hex);
pub const XK_abrevebelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb7, .hex);
pub const XK_Ebelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb8, .hex);
pub const XK_ebelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eb9, .hex);
pub const XK_Ehook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eba, .hex);
pub const XK_ehook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ebb, .hex);
pub const XK_Etilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ebc, .hex);
pub const XK_etilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ebd, .hex);
pub const XK_Ecircumflexacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ebe, .hex);
pub const XK_ecircumflexacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ebf, .hex);
pub const XK_Ecircumflexgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec0, .hex);
pub const XK_ecircumflexgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec1, .hex);
pub const XK_Ecircumflexhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec2, .hex);
pub const XK_ecircumflexhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec3, .hex);
pub const XK_Ecircumflextilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec4, .hex);
pub const XK_ecircumflextilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec5, .hex);
pub const XK_Ecircumflexbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec6, .hex);
pub const XK_ecircumflexbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec7, .hex);
pub const XK_Ihook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec8, .hex);
pub const XK_ihook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ec9, .hex);
pub const XK_Ibelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eca, .hex);
pub const XK_ibelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ecb, .hex);
pub const XK_Obelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ecc, .hex);
pub const XK_obelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ecd, .hex);
pub const XK_Ohook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ece, .hex);
pub const XK_ohook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ecf, .hex);
pub const XK_Ocircumflexacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed0, .hex);
pub const XK_ocircumflexacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed1, .hex);
pub const XK_Ocircumflexgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed2, .hex);
pub const XK_ocircumflexgrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed3, .hex);
pub const XK_Ocircumflexhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed4, .hex);
pub const XK_ocircumflexhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed5, .hex);
pub const XK_Ocircumflextilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed6, .hex);
pub const XK_ocircumflextilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed7, .hex);
pub const XK_Ocircumflexbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed8, .hex);
pub const XK_ocircumflexbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ed9, .hex);
pub const XK_Ohornacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eda, .hex);
pub const XK_ohornacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001edb, .hex);
pub const XK_Ohorngrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001edc, .hex);
pub const XK_ohorngrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001edd, .hex);
pub const XK_Ohornhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ede, .hex);
pub const XK_ohornhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001edf, .hex);
pub const XK_Ohorntilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee0, .hex);
pub const XK_ohorntilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee1, .hex);
pub const XK_Ohornbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee2, .hex);
pub const XK_ohornbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee3, .hex);
pub const XK_Ubelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee4, .hex);
pub const XK_ubelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee5, .hex);
pub const XK_Uhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee6, .hex);
pub const XK_uhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee7, .hex);
pub const XK_Uhornacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee8, .hex);
pub const XK_uhornacute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ee9, .hex);
pub const XK_Uhorngrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eea, .hex);
pub const XK_uhorngrave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eeb, .hex);
pub const XK_Uhornhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eec, .hex);
pub const XK_uhornhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eed, .hex);
pub const XK_Uhorntilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eee, .hex);
pub const XK_uhorntilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001eef, .hex);
pub const XK_Uhornbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef0, .hex);
pub const XK_uhornbelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef1, .hex);
pub const XK_Ybelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef4, .hex);
pub const XK_ybelowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef5, .hex);
pub const XK_Yhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef6, .hex);
pub const XK_yhook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef7, .hex);
pub const XK_Ytilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef8, .hex);
pub const XK_ytilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1001ef9, .hex);
pub const XK_Ohorn = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001a0, .hex);
pub const XK_ohorn = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001a1, .hex);
pub const XK_Uhorn = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001af, .hex);
pub const XK_uhorn = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001b0, .hex);
pub const XK_combining_tilde = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000303, .hex);
pub const XK_combining_grave = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000300, .hex);
pub const XK_combining_acute = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000301, .hex);
pub const XK_combining_hook = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000309, .hex);
pub const XK_combining_belowdot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000323, .hex);
pub const XK_EcuSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a0, .hex);
pub const XK_ColonSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a1, .hex);
pub const XK_CruzeiroSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a2, .hex);
pub const XK_FFrancSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a3, .hex);
pub const XK_LiraSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a4, .hex);
pub const XK_MillSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a5, .hex);
pub const XK_NairaSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a6, .hex);
pub const XK_PesetaSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a7, .hex);
pub const XK_RupeeSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a8, .hex);
pub const XK_WonSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020a9, .hex);
pub const XK_NewSheqelSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020aa, .hex);
pub const XK_DongSign = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10020ab, .hex);
pub const XK_EuroSign = @as(c_int, 0x20ac);
pub const XK_zerosuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002070, .hex);
pub const XK_foursuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002074, .hex);
pub const XK_fivesuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002075, .hex);
pub const XK_sixsuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002076, .hex);
pub const XK_sevensuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002077, .hex);
pub const XK_eightsuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002078, .hex);
pub const XK_ninesuperior = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002079, .hex);
pub const XK_zerosubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002080, .hex);
pub const XK_onesubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002081, .hex);
pub const XK_twosubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002082, .hex);
pub const XK_threesubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002083, .hex);
pub const XK_foursubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002084, .hex);
pub const XK_fivesubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002085, .hex);
pub const XK_sixsubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002086, .hex);
pub const XK_sevensubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002087, .hex);
pub const XK_eightsubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002088, .hex);
pub const XK_ninesubscript = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002089, .hex);
pub const XK_partdifferential = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002202, .hex);
pub const XK_emptyset = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002205, .hex);
pub const XK_elementof = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002208, .hex);
pub const XK_notelementof = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002209, .hex);
pub const XK_containsas = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100220B, .hex);
pub const XK_squareroot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100221A, .hex);
pub const XK_cuberoot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100221B, .hex);
pub const XK_fourthroot = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100221C, .hex);
pub const XK_dintegral = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100222C, .hex);
pub const XK_tintegral = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100222D, .hex);
pub const XK_because = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002235, .hex);
pub const XK_approxeq = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002248, .hex);
pub const XK_notapproxeq = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002247, .hex);
pub const XK_notidentical = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002262, .hex);
pub const XK_stricteq = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002263, .hex);
pub const XK_braille_dot_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff1, .hex);
pub const XK_braille_dot_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff2, .hex);
pub const XK_braille_dot_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff3, .hex);
pub const XK_braille_dot_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff4, .hex);
pub const XK_braille_dot_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff5, .hex);
pub const XK_braille_dot_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff6, .hex);
pub const XK_braille_dot_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff7, .hex);
pub const XK_braille_dot_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff8, .hex);
pub const XK_braille_dot_9 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfff9, .hex);
pub const XK_braille_dot_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfffa, .hex);
pub const XK_braille_blank = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002800, .hex);
pub const XK_braille_dots_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002801, .hex);
pub const XK_braille_dots_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002802, .hex);
pub const XK_braille_dots_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002803, .hex);
pub const XK_braille_dots_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002804, .hex);
pub const XK_braille_dots_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002805, .hex);
pub const XK_braille_dots_23 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002806, .hex);
pub const XK_braille_dots_123 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002807, .hex);
pub const XK_braille_dots_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002808, .hex);
pub const XK_braille_dots_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002809, .hex);
pub const XK_braille_dots_24 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100280a, .hex);
pub const XK_braille_dots_124 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100280b, .hex);
pub const XK_braille_dots_34 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100280c, .hex);
pub const XK_braille_dots_134 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100280d, .hex);
pub const XK_braille_dots_234 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100280e, .hex);
pub const XK_braille_dots_1234 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100280f, .hex);
pub const XK_braille_dots_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002810, .hex);
pub const XK_braille_dots_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002811, .hex);
pub const XK_braille_dots_25 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002812, .hex);
pub const XK_braille_dots_125 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002813, .hex);
pub const XK_braille_dots_35 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002814, .hex);
pub const XK_braille_dots_135 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002815, .hex);
pub const XK_braille_dots_235 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002816, .hex);
pub const XK_braille_dots_1235 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002817, .hex);
pub const XK_braille_dots_45 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002818, .hex);
pub const XK_braille_dots_145 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002819, .hex);
pub const XK_braille_dots_245 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100281a, .hex);
pub const XK_braille_dots_1245 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100281b, .hex);
pub const XK_braille_dots_345 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100281c, .hex);
pub const XK_braille_dots_1345 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100281d, .hex);
pub const XK_braille_dots_2345 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100281e, .hex);
pub const XK_braille_dots_12345 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100281f, .hex);
pub const XK_braille_dots_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002820, .hex);
pub const XK_braille_dots_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002821, .hex);
pub const XK_braille_dots_26 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002822, .hex);
pub const XK_braille_dots_126 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002823, .hex);
pub const XK_braille_dots_36 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002824, .hex);
pub const XK_braille_dots_136 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002825, .hex);
pub const XK_braille_dots_236 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002826, .hex);
pub const XK_braille_dots_1236 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002827, .hex);
pub const XK_braille_dots_46 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002828, .hex);
pub const XK_braille_dots_146 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002829, .hex);
pub const XK_braille_dots_246 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100282a, .hex);
pub const XK_braille_dots_1246 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100282b, .hex);
pub const XK_braille_dots_346 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100282c, .hex);
pub const XK_braille_dots_1346 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100282d, .hex);
pub const XK_braille_dots_2346 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100282e, .hex);
pub const XK_braille_dots_12346 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100282f, .hex);
pub const XK_braille_dots_56 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002830, .hex);
pub const XK_braille_dots_156 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002831, .hex);
pub const XK_braille_dots_256 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002832, .hex);
pub const XK_braille_dots_1256 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002833, .hex);
pub const XK_braille_dots_356 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002834, .hex);
pub const XK_braille_dots_1356 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002835, .hex);
pub const XK_braille_dots_2356 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002836, .hex);
pub const XK_braille_dots_12356 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002837, .hex);
pub const XK_braille_dots_456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002838, .hex);
pub const XK_braille_dots_1456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002839, .hex);
pub const XK_braille_dots_2456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100283a, .hex);
pub const XK_braille_dots_12456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100283b, .hex);
pub const XK_braille_dots_3456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100283c, .hex);
pub const XK_braille_dots_13456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100283d, .hex);
pub const XK_braille_dots_23456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100283e, .hex);
pub const XK_braille_dots_123456 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100283f, .hex);
pub const XK_braille_dots_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002840, .hex);
pub const XK_braille_dots_17 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002841, .hex);
pub const XK_braille_dots_27 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002842, .hex);
pub const XK_braille_dots_127 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002843, .hex);
pub const XK_braille_dots_37 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002844, .hex);
pub const XK_braille_dots_137 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002845, .hex);
pub const XK_braille_dots_237 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002846, .hex);
pub const XK_braille_dots_1237 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002847, .hex);
pub const XK_braille_dots_47 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002848, .hex);
pub const XK_braille_dots_147 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002849, .hex);
pub const XK_braille_dots_247 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100284a, .hex);
pub const XK_braille_dots_1247 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100284b, .hex);
pub const XK_braille_dots_347 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100284c, .hex);
pub const XK_braille_dots_1347 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100284d, .hex);
pub const XK_braille_dots_2347 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100284e, .hex);
pub const XK_braille_dots_12347 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100284f, .hex);
pub const XK_braille_dots_57 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002850, .hex);
pub const XK_braille_dots_157 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002851, .hex);
pub const XK_braille_dots_257 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002852, .hex);
pub const XK_braille_dots_1257 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002853, .hex);
pub const XK_braille_dots_357 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002854, .hex);
pub const XK_braille_dots_1357 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002855, .hex);
pub const XK_braille_dots_2357 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002856, .hex);
pub const XK_braille_dots_12357 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002857, .hex);
pub const XK_braille_dots_457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002858, .hex);
pub const XK_braille_dots_1457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002859, .hex);
pub const XK_braille_dots_2457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100285a, .hex);
pub const XK_braille_dots_12457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100285b, .hex);
pub const XK_braille_dots_3457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100285c, .hex);
pub const XK_braille_dots_13457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100285d, .hex);
pub const XK_braille_dots_23457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100285e, .hex);
pub const XK_braille_dots_123457 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100285f, .hex);
pub const XK_braille_dots_67 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002860, .hex);
pub const XK_braille_dots_167 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002861, .hex);
pub const XK_braille_dots_267 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002862, .hex);
pub const XK_braille_dots_1267 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002863, .hex);
pub const XK_braille_dots_367 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002864, .hex);
pub const XK_braille_dots_1367 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002865, .hex);
pub const XK_braille_dots_2367 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002866, .hex);
pub const XK_braille_dots_12367 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002867, .hex);
pub const XK_braille_dots_467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002868, .hex);
pub const XK_braille_dots_1467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002869, .hex);
pub const XK_braille_dots_2467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100286a, .hex);
pub const XK_braille_dots_12467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100286b, .hex);
pub const XK_braille_dots_3467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100286c, .hex);
pub const XK_braille_dots_13467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100286d, .hex);
pub const XK_braille_dots_23467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100286e, .hex);
pub const XK_braille_dots_123467 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100286f, .hex);
pub const XK_braille_dots_567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002870, .hex);
pub const XK_braille_dots_1567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002871, .hex);
pub const XK_braille_dots_2567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002872, .hex);
pub const XK_braille_dots_12567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002873, .hex);
pub const XK_braille_dots_3567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002874, .hex);
pub const XK_braille_dots_13567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002875, .hex);
pub const XK_braille_dots_23567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002876, .hex);
pub const XK_braille_dots_123567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002877, .hex);
pub const XK_braille_dots_4567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002878, .hex);
pub const XK_braille_dots_14567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002879, .hex);
pub const XK_braille_dots_24567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100287a, .hex);
pub const XK_braille_dots_124567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100287b, .hex);
pub const XK_braille_dots_34567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100287c, .hex);
pub const XK_braille_dots_134567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100287d, .hex);
pub const XK_braille_dots_234567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100287e, .hex);
pub const XK_braille_dots_1234567 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100287f, .hex);
pub const XK_braille_dots_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002880, .hex);
pub const XK_braille_dots_18 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002881, .hex);
pub const XK_braille_dots_28 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002882, .hex);
pub const XK_braille_dots_128 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002883, .hex);
pub const XK_braille_dots_38 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002884, .hex);
pub const XK_braille_dots_138 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002885, .hex);
pub const XK_braille_dots_238 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002886, .hex);
pub const XK_braille_dots_1238 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002887, .hex);
pub const XK_braille_dots_48 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002888, .hex);
pub const XK_braille_dots_148 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002889, .hex);
pub const XK_braille_dots_248 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100288a, .hex);
pub const XK_braille_dots_1248 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100288b, .hex);
pub const XK_braille_dots_348 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100288c, .hex);
pub const XK_braille_dots_1348 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100288d, .hex);
pub const XK_braille_dots_2348 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100288e, .hex);
pub const XK_braille_dots_12348 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100288f, .hex);
pub const XK_braille_dots_58 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002890, .hex);
pub const XK_braille_dots_158 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002891, .hex);
pub const XK_braille_dots_258 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002892, .hex);
pub const XK_braille_dots_1258 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002893, .hex);
pub const XK_braille_dots_358 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002894, .hex);
pub const XK_braille_dots_1358 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002895, .hex);
pub const XK_braille_dots_2358 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002896, .hex);
pub const XK_braille_dots_12358 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002897, .hex);
pub const XK_braille_dots_458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002898, .hex);
pub const XK_braille_dots_1458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1002899, .hex);
pub const XK_braille_dots_2458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100289a, .hex);
pub const XK_braille_dots_12458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100289b, .hex);
pub const XK_braille_dots_3458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100289c, .hex);
pub const XK_braille_dots_13458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100289d, .hex);
pub const XK_braille_dots_23458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100289e, .hex);
pub const XK_braille_dots_123458 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x100289f, .hex);
pub const XK_braille_dots_68 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a0, .hex);
pub const XK_braille_dots_168 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a1, .hex);
pub const XK_braille_dots_268 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a2, .hex);
pub const XK_braille_dots_1268 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a3, .hex);
pub const XK_braille_dots_368 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a4, .hex);
pub const XK_braille_dots_1368 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a5, .hex);
pub const XK_braille_dots_2368 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a6, .hex);
pub const XK_braille_dots_12368 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a7, .hex);
pub const XK_braille_dots_468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a8, .hex);
pub const XK_braille_dots_1468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028a9, .hex);
pub const XK_braille_dots_2468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028aa, .hex);
pub const XK_braille_dots_12468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ab, .hex);
pub const XK_braille_dots_3468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ac, .hex);
pub const XK_braille_dots_13468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ad, .hex);
pub const XK_braille_dots_23468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ae, .hex);
pub const XK_braille_dots_123468 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028af, .hex);
pub const XK_braille_dots_568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b0, .hex);
pub const XK_braille_dots_1568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b1, .hex);
pub const XK_braille_dots_2568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b2, .hex);
pub const XK_braille_dots_12568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b3, .hex);
pub const XK_braille_dots_3568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b4, .hex);
pub const XK_braille_dots_13568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b5, .hex);
pub const XK_braille_dots_23568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b6, .hex);
pub const XK_braille_dots_123568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b7, .hex);
pub const XK_braille_dots_4568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b8, .hex);
pub const XK_braille_dots_14568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028b9, .hex);
pub const XK_braille_dots_24568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ba, .hex);
pub const XK_braille_dots_124568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028bb, .hex);
pub const XK_braille_dots_34568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028bc, .hex);
pub const XK_braille_dots_134568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028bd, .hex);
pub const XK_braille_dots_234568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028be, .hex);
pub const XK_braille_dots_1234568 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028bf, .hex);
pub const XK_braille_dots_78 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c0, .hex);
pub const XK_braille_dots_178 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c1, .hex);
pub const XK_braille_dots_278 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c2, .hex);
pub const XK_braille_dots_1278 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c3, .hex);
pub const XK_braille_dots_378 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c4, .hex);
pub const XK_braille_dots_1378 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c5, .hex);
pub const XK_braille_dots_2378 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c6, .hex);
pub const XK_braille_dots_12378 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c7, .hex);
pub const XK_braille_dots_478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c8, .hex);
pub const XK_braille_dots_1478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028c9, .hex);
pub const XK_braille_dots_2478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ca, .hex);
pub const XK_braille_dots_12478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028cb, .hex);
pub const XK_braille_dots_3478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028cc, .hex);
pub const XK_braille_dots_13478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028cd, .hex);
pub const XK_braille_dots_23478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ce, .hex);
pub const XK_braille_dots_123478 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028cf, .hex);
pub const XK_braille_dots_578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d0, .hex);
pub const XK_braille_dots_1578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d1, .hex);
pub const XK_braille_dots_2578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d2, .hex);
pub const XK_braille_dots_12578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d3, .hex);
pub const XK_braille_dots_3578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d4, .hex);
pub const XK_braille_dots_13578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d5, .hex);
pub const XK_braille_dots_23578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d6, .hex);
pub const XK_braille_dots_123578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d7, .hex);
pub const XK_braille_dots_4578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d8, .hex);
pub const XK_braille_dots_14578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028d9, .hex);
pub const XK_braille_dots_24578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028da, .hex);
pub const XK_braille_dots_124578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028db, .hex);
pub const XK_braille_dots_34578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028dc, .hex);
pub const XK_braille_dots_134578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028dd, .hex);
pub const XK_braille_dots_234578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028de, .hex);
pub const XK_braille_dots_1234578 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028df, .hex);
pub const XK_braille_dots_678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e0, .hex);
pub const XK_braille_dots_1678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e1, .hex);
pub const XK_braille_dots_2678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e2, .hex);
pub const XK_braille_dots_12678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e3, .hex);
pub const XK_braille_dots_3678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e4, .hex);
pub const XK_braille_dots_13678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e5, .hex);
pub const XK_braille_dots_23678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e6, .hex);
pub const XK_braille_dots_123678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e7, .hex);
pub const XK_braille_dots_4678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e8, .hex);
pub const XK_braille_dots_14678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028e9, .hex);
pub const XK_braille_dots_24678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ea, .hex);
pub const XK_braille_dots_124678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028eb, .hex);
pub const XK_braille_dots_34678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ec, .hex);
pub const XK_braille_dots_134678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ed, .hex);
pub const XK_braille_dots_234678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ee, .hex);
pub const XK_braille_dots_1234678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ef, .hex);
pub const XK_braille_dots_5678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f0, .hex);
pub const XK_braille_dots_15678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f1, .hex);
pub const XK_braille_dots_25678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f2, .hex);
pub const XK_braille_dots_125678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f3, .hex);
pub const XK_braille_dots_35678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f4, .hex);
pub const XK_braille_dots_135678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f5, .hex);
pub const XK_braille_dots_235678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f6, .hex);
pub const XK_braille_dots_1235678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f7, .hex);
pub const XK_braille_dots_45678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f8, .hex);
pub const XK_braille_dots_145678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028f9, .hex);
pub const XK_braille_dots_245678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028fa, .hex);
pub const XK_braille_dots_1245678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028fb, .hex);
pub const XK_braille_dots_345678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028fc, .hex);
pub const XK_braille_dots_1345678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028fd, .hex);
pub const XK_braille_dots_2345678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028fe, .hex);
pub const XK_braille_dots_12345678 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10028ff, .hex);
pub const XK_Sinh_ng = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d82, .hex);
pub const XK_Sinh_h2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d83, .hex);
pub const XK_Sinh_a = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d85, .hex);
pub const XK_Sinh_aa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d86, .hex);
pub const XK_Sinh_ae = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d87, .hex);
pub const XK_Sinh_aee = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d88, .hex);
pub const XK_Sinh_i = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d89, .hex);
pub const XK_Sinh_ii = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d8a, .hex);
pub const XK_Sinh_u = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d8b, .hex);
pub const XK_Sinh_uu = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d8c, .hex);
pub const XK_Sinh_ri = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d8d, .hex);
pub const XK_Sinh_rii = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d8e, .hex);
pub const XK_Sinh_lu = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d8f, .hex);
pub const XK_Sinh_luu = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d90, .hex);
pub const XK_Sinh_e = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d91, .hex);
pub const XK_Sinh_ee = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d92, .hex);
pub const XK_Sinh_ai = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d93, .hex);
pub const XK_Sinh_o = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d94, .hex);
pub const XK_Sinh_oo = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d95, .hex);
pub const XK_Sinh_au = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d96, .hex);
pub const XK_Sinh_ka = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d9a, .hex);
pub const XK_Sinh_kha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d9b, .hex);
pub const XK_Sinh_ga = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d9c, .hex);
pub const XK_Sinh_gha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d9d, .hex);
pub const XK_Sinh_ng2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d9e, .hex);
pub const XK_Sinh_nga = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000d9f, .hex);
pub const XK_Sinh_ca = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da0, .hex);
pub const XK_Sinh_cha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da1, .hex);
pub const XK_Sinh_ja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da2, .hex);
pub const XK_Sinh_jha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da3, .hex);
pub const XK_Sinh_nya = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da4, .hex);
pub const XK_Sinh_jnya = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da5, .hex);
pub const XK_Sinh_nja = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da6, .hex);
pub const XK_Sinh_tta = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da7, .hex);
pub const XK_Sinh_ttha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da8, .hex);
pub const XK_Sinh_dda = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000da9, .hex);
pub const XK_Sinh_ddha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000daa, .hex);
pub const XK_Sinh_nna = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dab, .hex);
pub const XK_Sinh_ndda = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dac, .hex);
pub const XK_Sinh_tha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dad, .hex);
pub const XK_Sinh_thha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dae, .hex);
pub const XK_Sinh_dha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000daf, .hex);
pub const XK_Sinh_dhha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db0, .hex);
pub const XK_Sinh_na = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db1, .hex);
pub const XK_Sinh_ndha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db3, .hex);
pub const XK_Sinh_pa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db4, .hex);
pub const XK_Sinh_pha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db5, .hex);
pub const XK_Sinh_ba = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db6, .hex);
pub const XK_Sinh_bha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db7, .hex);
pub const XK_Sinh_ma = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db8, .hex);
pub const XK_Sinh_mba = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000db9, .hex);
pub const XK_Sinh_ya = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dba, .hex);
pub const XK_Sinh_ra = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dbb, .hex);
pub const XK_Sinh_la = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dbd, .hex);
pub const XK_Sinh_va = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc0, .hex);
pub const XK_Sinh_sha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc1, .hex);
pub const XK_Sinh_ssha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc2, .hex);
pub const XK_Sinh_sa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc3, .hex);
pub const XK_Sinh_ha = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc4, .hex);
pub const XK_Sinh_lla = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc5, .hex);
pub const XK_Sinh_fa = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dc6, .hex);
pub const XK_Sinh_al = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dca, .hex);
pub const XK_Sinh_aa2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dcf, .hex);
pub const XK_Sinh_ae2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd0, .hex);
pub const XK_Sinh_aee2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd1, .hex);
pub const XK_Sinh_i2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd2, .hex);
pub const XK_Sinh_ii2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd3, .hex);
pub const XK_Sinh_u2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd4, .hex);
pub const XK_Sinh_uu2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd6, .hex);
pub const XK_Sinh_ru2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd8, .hex);
pub const XK_Sinh_e2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dd9, .hex);
pub const XK_Sinh_ee2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dda, .hex);
pub const XK_Sinh_ai2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000ddb, .hex);
pub const XK_Sinh_o2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000ddc, .hex);
pub const XK_Sinh_oo2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000ddd, .hex);
pub const XK_Sinh_au2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000dde, .hex);
pub const XK_Sinh_lu2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000ddf, .hex);
pub const XK_Sinh_ruu2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000df2, .hex);
pub const XK_Sinh_luu2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000df3, .hex);
pub const XK_Sinh_kunddaliya = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1000df4, .hex);
pub const NoValue = @as(c_int, 0x0000);
pub const XValue = @as(c_int, 0x0001);
pub const YValue = @as(c_int, 0x0002);
pub const WidthValue = @as(c_int, 0x0004);
pub const HeightValue = @as(c_int, 0x0008);
pub const AllValues = @as(c_int, 0x000F);
pub const XNegative = @as(c_int, 0x0010);
pub const YNegative = @as(c_int, 0x0020);
pub const USPosition = @as(c_long, 1) << @as(c_int, 0);
pub const USSize = @as(c_long, 1) << @as(c_int, 1);
pub const PPosition = @as(c_long, 1) << @as(c_int, 2);
pub const PSize = @as(c_long, 1) << @as(c_int, 3);
pub const PMinSize = @as(c_long, 1) << @as(c_int, 4);
pub const PMaxSize = @as(c_long, 1) << @as(c_int, 5);
pub const PResizeInc = @as(c_long, 1) << @as(c_int, 6);
pub const PAspect = @as(c_long, 1) << @as(c_int, 7);
pub const PBaseSize = @as(c_long, 1) << @as(c_int, 8);
pub const PWinGravity = @as(c_long, 1) << @as(c_int, 9);
pub const PAllHints = ((((PPosition | PSize) | PMinSize) | PMaxSize) | PResizeInc) | PAspect;
pub const InputHint = @as(c_long, 1) << @as(c_int, 0);
pub const StateHint = @as(c_long, 1) << @as(c_int, 1);
pub const IconPixmapHint = @as(c_long, 1) << @as(c_int, 2);
pub const IconWindowHint = @as(c_long, 1) << @as(c_int, 3);
pub const IconPositionHint = @as(c_long, 1) << @as(c_int, 4);
pub const IconMaskHint = @as(c_long, 1) << @as(c_int, 5);
pub const WindowGroupHint = @as(c_long, 1) << @as(c_int, 6);
pub const AllHints = (((((InputHint | StateHint) | IconPixmapHint) | IconWindowHint) | IconPositionHint) | IconMaskHint) | WindowGroupHint;
pub const XUrgencyHint = @as(c_long, 1) << @as(c_int, 8);
pub const WithdrawnState = @as(c_int, 0);
pub const NormalState = @as(c_int, 1);
pub const IconicState = @as(c_int, 3);
pub const DontCareState = @as(c_int, 0);
pub const ZoomState = @as(c_int, 2);
pub const InactiveState = @as(c_int, 4);
pub const XNoMemory = -@as(c_int, 1);
pub const XLocaleNotSupported = -@as(c_int, 2);
pub const XConverterNotFound = -@as(c_int, 3);
pub inline fn XDestroyImage(ximage: anytype) @TypeOf(ximage.*.f.destroy_image.*(ximage)) {
    _ = &ximage;
    return ximage.*.f.destroy_image.*(ximage);
}
pub inline fn XGetPixel(ximage: anytype, x: anytype, y: anytype) @TypeOf(ximage.*.f.get_pixel.*(ximage, x, y)) {
    _ = &ximage;
    _ = &x;
    _ = &y;
    return ximage.*.f.get_pixel.*(ximage, x, y);
}
pub inline fn XPutPixel(ximage: anytype, x: anytype, y: anytype, pixel: anytype) @TypeOf(ximage.*.f.put_pixel.*(ximage, x, y, pixel)) {
    _ = &ximage;
    _ = &x;
    _ = &y;
    _ = &pixel;
    return ximage.*.f.put_pixel.*(ximage, x, y, pixel);
}
pub inline fn XSubImage(ximage: anytype, x: anytype, y: anytype, width: anytype, height: anytype) @TypeOf(ximage.*.f.sub_image.*(ximage, x, y, width, height)) {
    _ = &ximage;
    _ = &x;
    _ = &y;
    _ = &width;
    _ = &height;
    return ximage.*.f.sub_image.*(ximage, x, y, width, height);
}
pub inline fn XAddPixel(ximage: anytype, value: anytype) @TypeOf(ximage.*.f.add_pixel.*(ximage, value)) {
    _ = &ximage;
    _ = &value;
    return ximage.*.f.add_pixel.*(ximage, value);
}
pub inline fn IsKeypadKey(keysym: anytype) @TypeOf((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_KP_Space) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_KP_Equal)) {
    _ = &keysym;
    return (@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_KP_Space) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_KP_Equal);
}
pub inline fn IsPrivateKeypadKey(keysym: anytype) @TypeOf((@import("std").zig.c_translation.cast(KeySym, keysym) >= @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x11000000, .hex)) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1100FFFF, .hex))) {
    _ = &keysym;
    return (@import("std").zig.c_translation.cast(KeySym, keysym) >= @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x11000000, .hex)) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x1100FFFF, .hex));
}
pub inline fn IsCursorKey(keysym: anytype) @TypeOf((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_Home) and (@import("std").zig.c_translation.cast(KeySym, keysym) < XK_Select)) {
    _ = &keysym;
    return (@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_Home) and (@import("std").zig.c_translation.cast(KeySym, keysym) < XK_Select);
}
pub inline fn IsPFKey(keysym: anytype) @TypeOf((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_KP_F1) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_KP_F4)) {
    _ = &keysym;
    return (@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_KP_F1) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_KP_F4);
}
pub inline fn IsFunctionKey(keysym: anytype) @TypeOf((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_F1) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_F35)) {
    _ = &keysym;
    return (@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_F1) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_F35);
}
pub inline fn IsMiscFunctionKey(keysym: anytype) @TypeOf((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_Select) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_Break)) {
    _ = &keysym;
    return (@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_Select) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_Break);
}
pub inline fn IsModifierKey(keysym: anytype) @TypeOf(((((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_Shift_L) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_Hyper_R)) or ((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_ISO_Lock) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_ISO_Level5_Lock))) or (@import("std").zig.c_translation.cast(KeySym, keysym) == XK_Mode_switch)) or (@import("std").zig.c_translation.cast(KeySym, keysym) == XK_Num_Lock)) {
    _ = &keysym;
    return ((((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_Shift_L) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_Hyper_R)) or ((@import("std").zig.c_translation.cast(KeySym, keysym) >= XK_ISO_Lock) and (@import("std").zig.c_translation.cast(KeySym, keysym) <= XK_ISO_Level5_Lock))) or (@import("std").zig.c_translation.cast(KeySym, keysym) == XK_Mode_switch)) or (@import("std").zig.c_translation.cast(KeySym, keysym) == XK_Num_Lock);
}
pub const RectangleOut = @as(c_int, 0);
pub const RectangleIn = @as(c_int, 1);
pub const RectanglePart = @as(c_int, 2);
pub const VisualNoMask = @as(c_int, 0x0);
pub const VisualIDMask = @as(c_int, 0x1);
pub const VisualScreenMask = @as(c_int, 0x2);
pub const VisualDepthMask = @as(c_int, 0x4);
pub const VisualClassMask = @as(c_int, 0x8);
pub const VisualRedMaskMask = @as(c_int, 0x10);
pub const VisualGreenMaskMask = @as(c_int, 0x20);
pub const VisualBlueMaskMask = @as(c_int, 0x40);
pub const VisualColormapSizeMask = @as(c_int, 0x80);
pub const VisualBitsPerRGBMask = @as(c_int, 0x100);
pub const VisualAllMask = @as(c_int, 0x1FF);
pub const ReleaseByFreeingColormap = @import("std").zig.c_translation.cast(XID, @as(c_long, 1));
pub const BitmapSuccess = @as(c_int, 0);
pub const BitmapOpenFailed = @as(c_int, 1);
pub const BitmapFileInvalid = @as(c_int, 2);
pub const BitmapNoMemory = @as(c_int, 3);
pub const XCSUCCESS = @as(c_int, 0);
pub const XCNOMEM = @as(c_int, 1);
pub const XCNOENT = @as(c_int, 2);
pub const XUniqueContext = @compileError("unable to translate macro: undefined identifier `XrmUniqueQuark`");
// /usr/include/X11/Xutil.h:359:9
pub const XStringToContext = @compileError("unable to translate macro: undefined identifier `XrmStringToQuark`");
// /usr/include/X11/Xutil.h:360:9
pub const _SYS_IPC_H = @as(c_int, 1);
pub const _BITS_IPCTYPES_H = @as(c_int, 1);
pub const IPC_CREAT = @as(c_int, 0o1000);
pub const IPC_EXCL = @as(c_int, 0o2000);
pub const IPC_NOWAIT = @as(c_int, 0o4000);
pub const IPC_RMID = @as(c_int, 0);
pub const IPC_SET = @as(c_int, 1);
pub const IPC_STAT = @as(c_int, 2);
pub const IPC_PRIVATE = @import("std").zig.c_translation.cast(__key_t, @as(c_int, 0));
pub const _SYS_SHM_H = @as(c_int, 1);
pub const SHMLBA = __getpagesize();
pub const SHM_R = @as(c_int, 0o400);
pub const SHM_W = @as(c_int, 0o200);
pub const SHM_RDONLY = @as(c_int, 0o10000);
pub const SHM_RND = @as(c_int, 0o20000);
pub const SHM_REMAP = @as(c_int, 0o40000);
pub const SHM_EXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const SHM_LOCK = @as(c_int, 11);
pub const SHM_UNLOCK = @as(c_int, 12);
pub const __shmid64_ds = shmid_ds;
pub const SHM_STAT = @as(c_int, 13);
pub const SHM_INFO = @as(c_int, 14);
pub const SHM_STAT_ANY = @as(c_int, 15);
pub const SHM_DEST = @as(c_int, 0o1000);
pub const SHM_LOCKED = @as(c_int, 0o2000);
pub const SHM_HUGETLB = @as(c_int, 0o4000);
pub const SHM_NORESERVE = @as(c_int, 0o10000);
pub const _XSHM_H_ = "";
pub const _SHM_H_ = "";
pub const SHMNAME = "MIT-SHM";
pub const SHM_MAJOR_VERSION = @as(c_int, 1);
pub const SHM_MINOR_VERSION = @as(c_int, 2);
pub const ShmCompletion = @as(c_int, 0);
pub const ShmNumberEvents = ShmCompletion + @as(c_int, 1);
pub const BadShmSeg = @as(c_int, 0);
pub const ShmNumberErrors = BadShmSeg + @as(c_int, 1);
pub const _X11_XKBLIB_H_ = "";
pub const _XKBSTR_H_ = "";
pub const _XKB_H_ = "";
pub const X_kbUseExtension = @as(c_int, 0);
pub const X_kbSelectEvents = @as(c_int, 1);
pub const X_kbBell = @as(c_int, 3);
pub const X_kbGetState = @as(c_int, 4);
pub const X_kbLatchLockState = @as(c_int, 5);
pub const X_kbGetControls = @as(c_int, 6);
pub const X_kbSetControls = @as(c_int, 7);
pub const X_kbGetMap = @as(c_int, 8);
pub const X_kbSetMap = @as(c_int, 9);
pub const X_kbGetCompatMap = @as(c_int, 10);
pub const X_kbSetCompatMap = @as(c_int, 11);
pub const X_kbGetIndicatorState = @as(c_int, 12);
pub const X_kbGetIndicatorMap = @as(c_int, 13);
pub const X_kbSetIndicatorMap = @as(c_int, 14);
pub const X_kbGetNamedIndicator = @as(c_int, 15);
pub const X_kbSetNamedIndicator = @as(c_int, 16);
pub const X_kbGetNames = @as(c_int, 17);
pub const X_kbSetNames = @as(c_int, 18);
pub const X_kbGetGeometry = @as(c_int, 19);
pub const X_kbSetGeometry = @as(c_int, 20);
pub const X_kbPerClientFlags = @as(c_int, 21);
pub const X_kbListComponents = @as(c_int, 22);
pub const X_kbGetKbdByName = @as(c_int, 23);
pub const X_kbGetDeviceInfo = @as(c_int, 24);
pub const X_kbSetDeviceInfo = @as(c_int, 25);
pub const X_kbSetDebuggingFlags = @as(c_int, 101);
pub const XkbEventCode = @as(c_int, 0);
pub const XkbNumberEvents = XkbEventCode + @as(c_int, 1);
pub const XkbNewKeyboardNotify = @as(c_int, 0);
pub const XkbMapNotify = @as(c_int, 1);
pub const XkbStateNotify = @as(c_int, 2);
pub const XkbControlsNotify = @as(c_int, 3);
pub const XkbIndicatorStateNotify = @as(c_int, 4);
pub const XkbIndicatorMapNotify = @as(c_int, 5);
pub const XkbNamesNotify = @as(c_int, 6);
pub const XkbCompatMapNotify = @as(c_int, 7);
pub const XkbBellNotify = @as(c_int, 8);
pub const XkbActionMessage = @as(c_int, 9);
pub const XkbAccessXNotify = @as(c_int, 10);
pub const XkbExtensionDeviceNotify = @as(c_int, 11);
pub const XkbNewKeyboardNotifyMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbMapNotifyMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbStateNotifyMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbControlsNotifyMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbIndicatorStateNotifyMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbIndicatorMapNotifyMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbNamesNotifyMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbCompatMapNotifyMask = @as(c_long, 1) << @as(c_int, 7);
pub const XkbBellNotifyMask = @as(c_long, 1) << @as(c_int, 8);
pub const XkbActionMessageMask = @as(c_long, 1) << @as(c_int, 9);
pub const XkbAccessXNotifyMask = @as(c_long, 1) << @as(c_int, 10);
pub const XkbExtensionDeviceNotifyMask = @as(c_long, 1) << @as(c_int, 11);
pub const XkbAllEventsMask = @as(c_int, 0xFFF);
pub const XkbNKN_KeycodesMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbNKN_GeometryMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbNKN_DeviceIDMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbAllNewKeyboardEventsMask = @as(c_int, 0x7);
pub const XkbAXN_SKPress = @as(c_int, 0);
pub const XkbAXN_SKAccept = @as(c_int, 1);
pub const XkbAXN_SKReject = @as(c_int, 2);
pub const XkbAXN_SKRelease = @as(c_int, 3);
pub const XkbAXN_BKAccept = @as(c_int, 4);
pub const XkbAXN_BKReject = @as(c_int, 5);
pub const XkbAXN_AXKWarning = @as(c_int, 6);
pub const XkbAXN_SKPressMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbAXN_SKAcceptMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbAXN_SKRejectMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbAXN_SKReleaseMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbAXN_BKAcceptMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbAXN_BKRejectMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbAXN_AXKWarningMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbAllAccessXEventsMask = @as(c_int, 0x7f);
pub const XkbAllStateEventsMask = XkbAllStateComponentsMask;
pub const XkbAllMapEventsMask = XkbAllMapComponentsMask;
pub const XkbAllControlEventsMask = XkbAllControlsMask;
pub const XkbAllIndicatorEventsMask = XkbAllIndicatorsMask;
pub const XkbAllNameEventsMask = XkbAllNamesMask;
pub const XkbAllCompatMapEventsMask = XkbAllCompatMask;
pub const XkbAllBellEventsMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbAllActionMessagesMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbKeyboard = @as(c_int, 0);
pub const XkbNumberErrors = @as(c_int, 1);
pub const XkbErr_BadDevice = @as(c_int, 0xff);
pub const XkbErr_BadClass = @as(c_int, 0xfe);
pub const XkbErr_BadId = @as(c_int, 0xfd);
pub const XkbClientMapMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbServerMapMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbCompatMapMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbIndicatorMapMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbNamesMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbGeometryMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbControlsMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbAllComponentsMask = @as(c_int, 0x7f);
pub const XkbModifierStateMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbModifierBaseMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbModifierLatchMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbModifierLockMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbGroupStateMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbGroupBaseMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbGroupLatchMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbGroupLockMask = @as(c_long, 1) << @as(c_int, 7);
pub const XkbCompatStateMask = @as(c_long, 1) << @as(c_int, 8);
pub const XkbGrabModsMask = @as(c_long, 1) << @as(c_int, 9);
pub const XkbCompatGrabModsMask = @as(c_long, 1) << @as(c_int, 10);
pub const XkbLookupModsMask = @as(c_long, 1) << @as(c_int, 11);
pub const XkbCompatLookupModsMask = @as(c_long, 1) << @as(c_int, 12);
pub const XkbPointerButtonMask = @as(c_long, 1) << @as(c_int, 13);
pub const XkbAllStateComponentsMask = @as(c_int, 0x3fff);
pub const XkbRepeatKeysMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbSlowKeysMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbBounceKeysMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbStickyKeysMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbMouseKeysMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbMouseKeysAccelMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbAccessXKeysMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbAccessXTimeoutMask = @as(c_long, 1) << @as(c_int, 7);
pub const XkbAccessXFeedbackMask = @as(c_long, 1) << @as(c_int, 8);
pub const XkbAudibleBellMask = @as(c_long, 1) << @as(c_int, 9);
pub const XkbOverlay1Mask = @as(c_long, 1) << @as(c_int, 10);
pub const XkbOverlay2Mask = @as(c_long, 1) << @as(c_int, 11);
pub const XkbIgnoreGroupLockMask = @as(c_long, 1) << @as(c_int, 12);
pub const XkbGroupsWrapMask = @as(c_long, 1) << @as(c_int, 27);
pub const XkbInternalModsMask = @as(c_long, 1) << @as(c_int, 28);
pub const XkbIgnoreLockModsMask = @as(c_long, 1) << @as(c_int, 29);
pub const XkbPerKeyRepeatMask = @as(c_long, 1) << @as(c_int, 30);
pub const XkbControlsEnabledMask = @as(c_long, 1) << @as(c_int, 31);
pub const XkbAccessXOptionsMask = XkbStickyKeysMask | XkbAccessXFeedbackMask;
pub const XkbAllBooleanCtrlsMask = @as(c_int, 0x00001FFF);
pub const XkbAllControlsMask = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xF8001FFF, .hex);
pub const XkbAX_SKPressFBMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbAX_SKAcceptFBMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbAX_FeatureFBMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbAX_SlowWarnFBMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbAX_IndicatorFBMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbAX_StickyKeysFBMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbAX_TwoKeysMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbAX_LatchToLockMask = @as(c_long, 1) << @as(c_int, 7);
pub const XkbAX_SKReleaseFBMask = @as(c_long, 1) << @as(c_int, 8);
pub const XkbAX_SKRejectFBMask = @as(c_long, 1) << @as(c_int, 9);
pub const XkbAX_BKRejectFBMask = @as(c_long, 1) << @as(c_int, 10);
pub const XkbAX_DumbBellFBMask = @as(c_long, 1) << @as(c_int, 11);
pub const XkbAX_FBOptionsMask = @as(c_int, 0xF3F);
pub const XkbAX_SKOptionsMask = @as(c_int, 0x0C0);
pub const XkbAX_AllOptionsMask = @as(c_int, 0xFFF);
pub const XkbUseCoreKbd = @as(c_int, 0x0100);
pub const XkbUseCorePtr = @as(c_int, 0x0200);
pub const XkbDfltXIClass = @as(c_int, 0x0300);
pub const XkbDfltXIId = @as(c_int, 0x0400);
pub const XkbAllXIClasses = @as(c_int, 0x0500);
pub const XkbAllXIIds = @as(c_int, 0x0600);
pub const XkbXINone = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex);
pub const XkbLegalXILedClass = @compileError("unable to translate macro: undefined identifier `KbdFeedbackClass`");
// /usr/include/X11/extensions/XKB.h:325:9
pub const XkbLegalXIBellClass = @compileError("unable to translate macro: undefined identifier `KbdFeedbackClass`");
// /usr/include/X11/extensions/XKB.h:329:9
pub inline fn XkbExplicitXIDevice(c: anytype) @TypeOf((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0xff)) == @as(c_int, 0);
}
pub inline fn XkbExplicitXIClass(c: anytype) @TypeOf((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0xff)) == @as(c_int, 0);
}
pub inline fn XkbExplicitXIId(c: anytype) @TypeOf((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) {
    _ = &c;
    return (c & ~@as(c_int, 0xff)) == @as(c_int, 0);
}
pub inline fn XkbSingleXIClass(c: anytype) @TypeOf(((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) or (c == XkbDfltXIClass)) {
    _ = &c;
    return ((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) or (c == XkbDfltXIClass);
}
pub inline fn XkbSingleXIId(c: anytype) @TypeOf(((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) or (c == XkbDfltXIId)) {
    _ = &c;
    return ((c & ~@as(c_int, 0xff)) == @as(c_int, 0)) or (c == XkbDfltXIId);
}
pub const XkbNoModifier = @as(c_int, 0xff);
pub const XkbNoShiftLevel = @as(c_int, 0xff);
pub const XkbNoShape = @as(c_int, 0xff);
pub const XkbNoIndicator = @as(c_int, 0xff);
pub const XkbNoModifierMask = @as(c_int, 0);
pub const XkbAllModifiersMask = @as(c_int, 0xff);
pub const XkbAllVirtualModsMask = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const XkbNumKbdGroups = @as(c_int, 4);
pub const XkbMaxKbdGroup = XkbNumKbdGroups - @as(c_int, 1);
pub const XkbMaxMouseKeysBtn = @as(c_int, 4);
pub const XkbGroup1Index = @as(c_int, 0);
pub const XkbGroup2Index = @as(c_int, 1);
pub const XkbGroup3Index = @as(c_int, 2);
pub const XkbGroup4Index = @as(c_int, 3);
pub const XkbAnyGroup = @as(c_int, 254);
pub const XkbAllGroups = @as(c_int, 255);
pub const XkbGroup1Mask = @as(c_int, 1) << @as(c_int, 0);
pub const XkbGroup2Mask = @as(c_int, 1) << @as(c_int, 1);
pub const XkbGroup3Mask = @as(c_int, 1) << @as(c_int, 2);
pub const XkbGroup4Mask = @as(c_int, 1) << @as(c_int, 3);
pub const XkbAnyGroupMask = @as(c_int, 1) << @as(c_int, 7);
pub const XkbAllGroupsMask = @as(c_int, 0xf);
pub inline fn XkbBuildCoreState(m: anytype, g: anytype) @TypeOf(((g & @as(c_int, 0x3)) << @as(c_int, 13)) | (m & @as(c_int, 0xff))) {
    _ = &m;
    _ = &g;
    return ((g & @as(c_int, 0x3)) << @as(c_int, 13)) | (m & @as(c_int, 0xff));
}
pub inline fn XkbGroupForCoreState(s: anytype) @TypeOf((s >> @as(c_int, 13)) & @as(c_int, 0x3)) {
    _ = &s;
    return (s >> @as(c_int, 13)) & @as(c_int, 0x3);
}
pub inline fn XkbIsLegalGroup(g: anytype) @TypeOf((g >= @as(c_int, 0)) and (g < XkbNumKbdGroups)) {
    _ = &g;
    return (g >= @as(c_int, 0)) and (g < XkbNumKbdGroups);
}
pub const XkbWrapIntoRange = @as(c_int, 0x00);
pub const XkbClampIntoRange = @as(c_int, 0x40);
pub const XkbRedirectIntoRange = @as(c_int, 0x80);
pub const XkbSA_ClearLocks = @as(c_long, 1) << @as(c_int, 0);
pub const XkbSA_LatchToLock = @as(c_long, 1) << @as(c_int, 1);
pub const XkbSA_LockNoLock = @as(c_long, 1) << @as(c_int, 0);
pub const XkbSA_LockNoUnlock = @as(c_long, 1) << @as(c_int, 1);
pub const XkbSA_UseModMapMods = @as(c_long, 1) << @as(c_int, 2);
pub const XkbSA_GroupAbsolute = @as(c_long, 1) << @as(c_int, 2);
pub const XkbSA_UseDfltButton = @as(c_int, 0);
pub const XkbSA_NoAcceleration = @as(c_long, 1) << @as(c_int, 0);
pub const XkbSA_MoveAbsoluteX = @as(c_long, 1) << @as(c_int, 1);
pub const XkbSA_MoveAbsoluteY = @as(c_long, 1) << @as(c_int, 2);
pub const XkbSA_ISODfltIsGroup = @as(c_long, 1) << @as(c_int, 7);
pub const XkbSA_ISONoAffectMods = @as(c_long, 1) << @as(c_int, 6);
pub const XkbSA_ISONoAffectGroup = @as(c_long, 1) << @as(c_int, 5);
pub const XkbSA_ISONoAffectPtr = @as(c_long, 1) << @as(c_int, 4);
pub const XkbSA_ISONoAffectCtrls = @as(c_long, 1) << @as(c_int, 3);
pub const XkbSA_ISOAffectMask = @as(c_int, 0x78);
pub const XkbSA_MessageOnPress = @as(c_long, 1) << @as(c_int, 0);
pub const XkbSA_MessageOnRelease = @as(c_long, 1) << @as(c_int, 1);
pub const XkbSA_MessageGenKeyEvent = @as(c_long, 1) << @as(c_int, 2);
pub const XkbSA_AffectDfltBtn = @as(c_int, 1);
pub const XkbSA_DfltBtnAbsolute = @as(c_long, 1) << @as(c_int, 2);
pub const XkbSA_SwitchApplication = @as(c_long, 1) << @as(c_int, 0);
pub const XkbSA_SwitchAbsolute = @as(c_long, 1) << @as(c_int, 2);
pub const XkbSA_IgnoreVal = @as(c_int, 0x00);
pub const XkbSA_SetValMin = @as(c_int, 0x10);
pub const XkbSA_SetValCenter = @as(c_int, 0x20);
pub const XkbSA_SetValMax = @as(c_int, 0x30);
pub const XkbSA_SetValRelative = @as(c_int, 0x40);
pub const XkbSA_SetValAbsolute = @as(c_int, 0x50);
pub const XkbSA_ValOpMask = @as(c_int, 0x70);
pub const XkbSA_ValScaleMask = @as(c_int, 0x07);
pub inline fn XkbSA_ValOp(a: anytype) @TypeOf(a & XkbSA_ValOpMask) {
    _ = &a;
    return a & XkbSA_ValOpMask;
}
pub inline fn XkbSA_ValScale(a: anytype) @TypeOf(a & XkbSA_ValScaleMask) {
    _ = &a;
    return a & XkbSA_ValScaleMask;
}
pub const XkbSA_NoAction = @as(c_int, 0x00);
pub const XkbSA_SetMods = @as(c_int, 0x01);
pub const XkbSA_LatchMods = @as(c_int, 0x02);
pub const XkbSA_LockMods = @as(c_int, 0x03);
pub const XkbSA_SetGroup = @as(c_int, 0x04);
pub const XkbSA_LatchGroup = @as(c_int, 0x05);
pub const XkbSA_LockGroup = @as(c_int, 0x06);
pub const XkbSA_MovePtr = @as(c_int, 0x07);
pub const XkbSA_PtrBtn = @as(c_int, 0x08);
pub const XkbSA_LockPtrBtn = @as(c_int, 0x09);
pub const XkbSA_SetPtrDflt = @as(c_int, 0x0a);
pub const XkbSA_ISOLock = @as(c_int, 0x0b);
pub const XkbSA_Terminate = @as(c_int, 0x0c);
pub const XkbSA_SwitchScreen = @as(c_int, 0x0d);
pub const XkbSA_SetControls = @as(c_int, 0x0e);
pub const XkbSA_LockControls = @as(c_int, 0x0f);
pub const XkbSA_ActionMessage = @as(c_int, 0x10);
pub const XkbSA_RedirectKey = @as(c_int, 0x11);
pub const XkbSA_DeviceBtn = @as(c_int, 0x12);
pub const XkbSA_LockDeviceBtn = @as(c_int, 0x13);
pub const XkbSA_DeviceValuator = @as(c_int, 0x14);
pub const XkbSA_LastAction = XkbSA_DeviceValuator;
pub const XkbSA_NumActions = XkbSA_LastAction + @as(c_int, 1);
pub const XkbSA_XFree86Private = @as(c_int, 0x86);
pub const XkbSA_BreakLatch = ((((((((((@as(c_int, 1) << XkbSA_NoAction) | (@as(c_int, 1) << XkbSA_PtrBtn)) | (@as(c_int, 1) << XkbSA_LockPtrBtn)) | (@as(c_int, 1) << XkbSA_Terminate)) | (@as(c_int, 1) << XkbSA_SwitchScreen)) | (@as(c_int, 1) << XkbSA_SetControls)) | (@as(c_int, 1) << XkbSA_LockControls)) | (@as(c_int, 1) << XkbSA_ActionMessage)) | (@as(c_int, 1) << XkbSA_RedirectKey)) | (@as(c_int, 1) << XkbSA_DeviceBtn)) | (@as(c_int, 1) << XkbSA_LockDeviceBtn);
pub const XkbIsModAction = @compileError("unable to translate macro: undefined identifier `Xkb_SASetMods`");
// /usr/include/X11/extensions/XKB.h:517:9
pub inline fn XkbIsGroupAction(a: anytype) @TypeOf((a.*.type >= XkbSA_SetGroup) and (a.*.type <= XkbSA_LockGroup)) {
    _ = &a;
    return (a.*.type >= XkbSA_SetGroup) and (a.*.type <= XkbSA_LockGroup);
}
pub inline fn XkbIsPtrAction(a: anytype) @TypeOf((a.*.type >= XkbSA_MovePtr) and (a.*.type <= XkbSA_SetPtrDflt)) {
    _ = &a;
    return (a.*.type >= XkbSA_MovePtr) and (a.*.type <= XkbSA_SetPtrDflt);
}
pub const XkbKB_Permanent = @as(c_int, 0x80);
pub const XkbKB_OpMask = @as(c_int, 0x7f);
pub const XkbKB_Default = @as(c_int, 0x00);
pub const XkbKB_Lock = @as(c_int, 0x01);
pub const XkbKB_RadioGroup = @as(c_int, 0x02);
pub const XkbKB_Overlay1 = @as(c_int, 0x03);
pub const XkbKB_Overlay2 = @as(c_int, 0x04);
pub const XkbKB_RGAllowNone = @as(c_int, 0x80);
pub const XkbMinLegalKeyCode = @as(c_int, 8);
pub const XkbMaxLegalKeyCode = @as(c_int, 255);
pub const XkbMaxKeyCount = (XkbMaxLegalKeyCode - XkbMinLegalKeyCode) + @as(c_int, 1);
pub const XkbPerKeyBitArraySize = @import("std").zig.c_translation.MacroArithmetic.div(XkbMaxLegalKeyCode + @as(c_int, 1), @as(c_int, 8));
pub inline fn XkbIsLegalKeycode(k: anytype) @TypeOf(k >= XkbMinLegalKeyCode) {
    _ = &k;
    return k >= XkbMinLegalKeyCode;
}
pub const XkbNumModifiers = @as(c_int, 8);
pub const XkbNumVirtualMods = @as(c_int, 16);
pub const XkbNumIndicators = @as(c_int, 32);
pub const XkbAllIndicatorsMask = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hex);
pub const XkbMaxRadioGroups = @as(c_int, 32);
pub const XkbAllRadioGroupsMask = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hex);
pub const XkbMaxShiftLevel = @as(c_int, 63);
pub const XkbMaxSymsPerKey = XkbMaxShiftLevel * XkbNumKbdGroups;
pub const XkbRGMaxMembers = @as(c_int, 12);
pub const XkbActionMessageLength = @as(c_int, 6);
pub const XkbKeyNameLength = @as(c_int, 4);
pub const XkbMaxRedirectCount = @as(c_int, 8);
pub const XkbGeomPtsPerMM = @as(c_int, 10);
pub const XkbGeomMaxColors = @as(c_int, 32);
pub const XkbGeomMaxLabelColors = @as(c_int, 3);
pub const XkbGeomMaxPriority = @as(c_int, 255);
pub const XkbOneLevelIndex = @as(c_int, 0);
pub const XkbTwoLevelIndex = @as(c_int, 1);
pub const XkbAlphabeticIndex = @as(c_int, 2);
pub const XkbKeypadIndex = @as(c_int, 3);
pub const XkbLastRequiredType = XkbKeypadIndex;
pub const XkbNumRequiredTypes = XkbLastRequiredType + @as(c_int, 1);
pub const XkbMaxKeyTypes = @as(c_int, 255);
pub const XkbOneLevelMask = @as(c_int, 1) << @as(c_int, 0);
pub const XkbTwoLevelMask = @as(c_int, 1) << @as(c_int, 1);
pub const XkbAlphabeticMask = @as(c_int, 1) << @as(c_int, 2);
pub const XkbKeypadMask = @as(c_int, 1) << @as(c_int, 3);
pub const XkbAllRequiredTypes = @as(c_int, 0xf);
pub inline fn XkbShiftLevel(n: anytype) @TypeOf(n - @as(c_int, 1)) {
    _ = &n;
    return n - @as(c_int, 1);
}
pub inline fn XkbShiftLevelMask(n: anytype) @TypeOf(@as(c_int, 1) << (n - @as(c_int, 1))) {
    _ = &n;
    return @as(c_int, 1) << (n - @as(c_int, 1));
}
pub const XkbName = "XKEYBOARD";
pub const XkbMajorVersion = @as(c_int, 1);
pub const XkbMinorVersion = @as(c_int, 0);
pub const XkbExplicitKeyTypesMask = @as(c_int, 0x0f);
pub const XkbExplicitKeyType1Mask = @as(c_int, 1) << @as(c_int, 0);
pub const XkbExplicitKeyType2Mask = @as(c_int, 1) << @as(c_int, 1);
pub const XkbExplicitKeyType3Mask = @as(c_int, 1) << @as(c_int, 2);
pub const XkbExplicitKeyType4Mask = @as(c_int, 1) << @as(c_int, 3);
pub const XkbExplicitInterpretMask = @as(c_int, 1) << @as(c_int, 4);
pub const XkbExplicitAutoRepeatMask = @as(c_int, 1) << @as(c_int, 5);
pub const XkbExplicitBehaviorMask = @as(c_int, 1) << @as(c_int, 6);
pub const XkbExplicitVModMapMask = @as(c_int, 1) << @as(c_int, 7);
pub const XkbAllExplicitMask = @as(c_int, 0xff);
pub const XkbKeyTypesMask = @as(c_int, 1) << @as(c_int, 0);
pub const XkbKeySymsMask = @as(c_int, 1) << @as(c_int, 1);
pub const XkbModifierMapMask = @as(c_int, 1) << @as(c_int, 2);
pub const XkbExplicitComponentsMask = @as(c_int, 1) << @as(c_int, 3);
pub const XkbKeyActionsMask = @as(c_int, 1) << @as(c_int, 4);
pub const XkbKeyBehaviorsMask = @as(c_int, 1) << @as(c_int, 5);
pub const XkbVirtualModsMask = @as(c_int, 1) << @as(c_int, 6);
pub const XkbVirtualModMapMask = @as(c_int, 1) << @as(c_int, 7);
pub const XkbAllClientInfoMask = (XkbKeyTypesMask | XkbKeySymsMask) | XkbModifierMapMask;
pub const XkbAllServerInfoMask = (((XkbExplicitComponentsMask | XkbKeyActionsMask) | XkbKeyBehaviorsMask) | XkbVirtualModsMask) | XkbVirtualModMapMask;
pub const XkbAllMapComponentsMask = XkbAllClientInfoMask | XkbAllServerInfoMask;
pub const XkbSI_AutoRepeat = @as(c_int, 1) << @as(c_int, 0);
pub const XkbSI_LockingKey = @as(c_int, 1) << @as(c_int, 1);
pub const XkbSI_LevelOneOnly = @as(c_int, 0x80);
pub const XkbSI_OpMask = @as(c_int, 0x7f);
pub const XkbSI_NoneOf = @as(c_int, 0);
pub const XkbSI_AnyOfOrNone = @as(c_int, 1);
pub const XkbSI_AnyOf = @as(c_int, 2);
pub const XkbSI_AllOf = @as(c_int, 3);
pub const XkbSI_Exactly = @as(c_int, 4);
pub const XkbIM_NoExplicit = @as(c_long, 1) << @as(c_int, 7);
pub const XkbIM_NoAutomatic = @as(c_long, 1) << @as(c_int, 6);
pub const XkbIM_LEDDrivesKB = @as(c_long, 1) << @as(c_int, 5);
pub const XkbIM_UseBase = @as(c_long, 1) << @as(c_int, 0);
pub const XkbIM_UseLatched = @as(c_long, 1) << @as(c_int, 1);
pub const XkbIM_UseLocked = @as(c_long, 1) << @as(c_int, 2);
pub const XkbIM_UseEffective = @as(c_long, 1) << @as(c_int, 3);
pub const XkbIM_UseCompat = @as(c_long, 1) << @as(c_int, 4);
pub const XkbIM_UseNone = @as(c_int, 0);
pub const XkbIM_UseAnyGroup = ((XkbIM_UseBase | XkbIM_UseLatched) | XkbIM_UseLocked) | XkbIM_UseEffective;
pub const XkbIM_UseAnyMods = XkbIM_UseAnyGroup | XkbIM_UseCompat;
pub const XkbSymInterpMask = @as(c_int, 1) << @as(c_int, 0);
pub const XkbGroupCompatMask = @as(c_int, 1) << @as(c_int, 1);
pub const XkbAllCompatMask = @as(c_int, 0x3);
pub const XkbKeycodesNameMask = @as(c_int, 1) << @as(c_int, 0);
pub const XkbGeometryNameMask = @as(c_int, 1) << @as(c_int, 1);
pub const XkbSymbolsNameMask = @as(c_int, 1) << @as(c_int, 2);
pub const XkbPhysSymbolsNameMask = @as(c_int, 1) << @as(c_int, 3);
pub const XkbTypesNameMask = @as(c_int, 1) << @as(c_int, 4);
pub const XkbCompatNameMask = @as(c_int, 1) << @as(c_int, 5);
pub const XkbKeyTypeNamesMask = @as(c_int, 1) << @as(c_int, 6);
pub const XkbKTLevelNamesMask = @as(c_int, 1) << @as(c_int, 7);
pub const XkbIndicatorNamesMask = @as(c_int, 1) << @as(c_int, 8);
pub const XkbKeyNamesMask = @as(c_int, 1) << @as(c_int, 9);
pub const XkbKeyAliasesMask = @as(c_int, 1) << @as(c_int, 10);
pub const XkbVirtualModNamesMask = @as(c_int, 1) << @as(c_int, 11);
pub const XkbGroupNamesMask = @as(c_int, 1) << @as(c_int, 12);
pub const XkbRGNamesMask = @as(c_int, 1) << @as(c_int, 13);
pub const XkbComponentNamesMask = @as(c_int, 0x3f);
pub const XkbAllNamesMask = @as(c_int, 0x3fff);
pub const XkbGBN_TypesMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbGBN_CompatMapMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbGBN_ClientSymbolsMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbGBN_ServerSymbolsMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbGBN_SymbolsMask = XkbGBN_ClientSymbolsMask | XkbGBN_ServerSymbolsMask;
pub const XkbGBN_IndicatorMapMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbGBN_KeyNamesMask = @as(c_long, 1) << @as(c_int, 5);
pub const XkbGBN_GeometryMask = @as(c_long, 1) << @as(c_int, 6);
pub const XkbGBN_OtherNamesMask = @as(c_long, 1) << @as(c_int, 7);
pub const XkbGBN_AllComponentsMask = @as(c_int, 0xff);
pub const XkbLC_Hidden = @as(c_long, 1) << @as(c_int, 0);
pub const XkbLC_Default = @as(c_long, 1) << @as(c_int, 1);
pub const XkbLC_Partial = @as(c_long, 1) << @as(c_int, 2);
pub const XkbLC_AlphanumericKeys = @as(c_long, 1) << @as(c_int, 8);
pub const XkbLC_ModifierKeys = @as(c_long, 1) << @as(c_int, 9);
pub const XkbLC_KeypadKeys = @as(c_long, 1) << @as(c_int, 10);
pub const XkbLC_FunctionKeys = @as(c_long, 1) << @as(c_int, 11);
pub const XkbLC_AlternateGroup = @as(c_long, 1) << @as(c_int, 12);
pub const XkbXI_KeyboardsMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbXI_ButtonActionsMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbXI_IndicatorNamesMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbXI_IndicatorMapsMask = @as(c_long, 1) << @as(c_int, 3);
pub const XkbXI_IndicatorStateMask = @as(c_long, 1) << @as(c_int, 4);
pub const XkbXI_UnsupportedFeatureMask = @as(c_long, 1) << @as(c_int, 15);
pub const XkbXI_AllFeaturesMask = @as(c_int, 0x001f);
pub const XkbXI_AllDeviceFeaturesMask = @as(c_int, 0x001e);
pub const XkbXI_IndicatorsMask = @as(c_int, 0x001c);
pub const XkbAllExtensionDeviceEventsMask = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x801f, .hex);
pub const XkbPCF_DetectableAutoRepeatMask = @as(c_long, 1) << @as(c_int, 0);
pub const XkbPCF_GrabsUseXKBStateMask = @as(c_long, 1) << @as(c_int, 1);
pub const XkbPCF_AutoResetControlsMask = @as(c_long, 1) << @as(c_int, 2);
pub const XkbPCF_LookupStateWhenGrabbed = @as(c_long, 1) << @as(c_int, 3);
pub const XkbPCF_SendEventUsesXKBState = @as(c_long, 1) << @as(c_int, 4);
pub const XkbPCF_AllFlagsMask = @as(c_int, 0x1F);
pub const XkbDF_DisableLocks = @as(c_int, 1) << @as(c_int, 0);
pub inline fn XkbCharToInt(v: anytype) @TypeOf(if (v & @as(c_int, 0x80)) @import("std").zig.c_translation.cast(c_int, v | ~@as(c_int, 0xff)) else @import("std").zig.c_translation.cast(c_int, v & @as(c_int, 0x7f))) {
    _ = &v;
    return if (v & @as(c_int, 0x80)) @import("std").zig.c_translation.cast(c_int, v | ~@as(c_int, 0xff)) else @import("std").zig.c_translation.cast(c_int, v & @as(c_int, 0x7f));
}
pub const XkbIntTo2Chars = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:34:9
pub inline fn Xkb2CharsToInt(h: anytype, l: anytype) c_short {
    _ = &h;
    _ = &l;
    return @import("std").zig.c_translation.cast(c_short, (h << @as(c_int, 8)) | l);
}
pub inline fn XkbModLocks(s: anytype) @TypeOf(s.*.locked_mods) {
    _ = &s;
    return s.*.locked_mods;
}
pub inline fn XkbStateMods(s: anytype) @TypeOf((s.*.base_mods | s.*.latched_mods) | XkbModLocks(s)) {
    _ = &s;
    return (s.*.base_mods | s.*.latched_mods) | XkbModLocks(s);
}
pub inline fn XkbGroupLock(s: anytype) @TypeOf(s.*.locked_group) {
    _ = &s;
    return s.*.locked_group;
}
pub inline fn XkbStateGroup(s: anytype) @TypeOf((s.*.base_group + s.*.latched_group) + XkbGroupLock(s)) {
    _ = &s;
    return (s.*.base_group + s.*.latched_group) + XkbGroupLock(s);
}
pub inline fn XkbStateFieldFromRec(s: anytype) @TypeOf(XkbBuildCoreState(s.*.lookup_mods, s.*.group)) {
    _ = &s;
    return XkbBuildCoreState(s.*.lookup_mods, s.*.group);
}
pub inline fn XkbGrabStateFromRec(s: anytype) @TypeOf(XkbBuildCoreState(s.*.grab_mods, s.*.group)) {
    _ = &s;
    return XkbBuildCoreState(s.*.grab_mods, s.*.group);
}
pub inline fn XkbNumGroups(g: anytype) @TypeOf(g & @as(c_int, 0x0f)) {
    _ = &g;
    return g & @as(c_int, 0x0f);
}
pub inline fn XkbOutOfRangeGroupInfo(g: anytype) @TypeOf(g & @as(c_int, 0xf0)) {
    _ = &g;
    return g & @as(c_int, 0xf0);
}
pub inline fn XkbOutOfRangeGroupAction(g: anytype) @TypeOf(g & @as(c_int, 0xc0)) {
    _ = &g;
    return g & @as(c_int, 0xc0);
}
pub inline fn XkbOutOfRangeGroupNumber(g: anytype) @TypeOf((g & @as(c_int, 0x30)) >> @as(c_int, 4)) {
    _ = &g;
    return (g & @as(c_int, 0x30)) >> @as(c_int, 4);
}
pub inline fn XkbSetGroupInfo(g: anytype, w: anytype, n: anytype) @TypeOf(((w & @as(c_int, 0xc0)) | ((n & @as(c_int, 3)) << @as(c_int, 4))) | (g & @as(c_int, 0x0f))) {
    _ = &g;
    _ = &w;
    _ = &n;
    return ((w & @as(c_int, 0xc0)) | ((n & @as(c_int, 3)) << @as(c_int, 4))) | (g & @as(c_int, 0x0f));
}
pub inline fn XkbSetNumGroups(g: anytype, n: anytype) @TypeOf((g & @as(c_int, 0xf0)) | (n & @as(c_int, 0x0f))) {
    _ = &g;
    _ = &n;
    return (g & @as(c_int, 0xf0)) | (n & @as(c_int, 0x0f));
}
pub const XkbAnyActionDataSize = @as(c_int, 7);
pub inline fn XkbModActionVMods(a: anytype) c_short {
    _ = &a;
    return @import("std").zig.c_translation.cast(c_short, (a.*.vmods1 << @as(c_int, 8)) | a.*.vmods2);
}
pub const XkbSetModActionVMods = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:131:9
pub inline fn XkbSAGroup(a: anytype) @TypeOf(XkbCharToInt(a.*.group_XXX)) {
    _ = &a;
    return XkbCharToInt(a.*.group_XXX);
}
pub const XkbSASetGroup = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:140:9
pub inline fn XkbPtrActionX(a: anytype) @TypeOf(Xkb2CharsToInt(a.*.high_XXX, a.*.low_XXX)) {
    _ = &a;
    return Xkb2CharsToInt(a.*.high_XXX, a.*.low_XXX);
}
pub inline fn XkbPtrActionY(a: anytype) @TypeOf(Xkb2CharsToInt(a.*.high_YYY, a.*.low_YYY)) {
    _ = &a;
    return Xkb2CharsToInt(a.*.high_YYY, a.*.low_YYY);
}
pub inline fn XkbSetPtrActionX(a: anytype, x: anytype) @TypeOf(XkbIntTo2Chars(x, a.*.high_XXX, a.*.low_XXX)) {
    _ = &a;
    _ = &x;
    return XkbIntTo2Chars(x, a.*.high_XXX, a.*.low_XXX);
}
pub inline fn XkbSetPtrActionY(a: anytype, y: anytype) @TypeOf(XkbIntTo2Chars(y, a.*.high_YYY, a.*.low_YYY)) {
    _ = &a;
    _ = &y;
    return XkbIntTo2Chars(y, a.*.high_YYY, a.*.low_YYY);
}
pub inline fn XkbSAPtrDfltValue(a: anytype) @TypeOf(XkbCharToInt(a.*.valueXXX)) {
    _ = &a;
    return XkbCharToInt(a.*.valueXXX);
}
pub const XkbSASetPtrDfltValue = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:180:9
pub inline fn XkbSAScreen(a: anytype) @TypeOf(XkbCharToInt(a.*.screenXXX)) {
    _ = &a;
    return XkbCharToInt(a.*.screenXXX);
}
pub const XkbSASetScreen = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:188:9
pub const XkbActionSetCtrls = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:198:9
pub inline fn XkbActionCtrls(a: anytype) @TypeOf((((@import("std").zig.c_translation.cast(c_uint, a.*.ctrls3) << @as(c_int, 24)) | (@import("std").zig.c_translation.cast(c_uint, a.*.ctrls2) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(c_uint, a.*.ctrls1) << @as(c_int, 8))) | @import("std").zig.c_translation.cast(c_uint, a.*.ctrls0)) {
    _ = &a;
    return (((@import("std").zig.c_translation.cast(c_uint, a.*.ctrls3) << @as(c_int, 24)) | (@import("std").zig.c_translation.cast(c_uint, a.*.ctrls2) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(c_uint, a.*.ctrls1) << @as(c_int, 8))) | @import("std").zig.c_translation.cast(c_uint, a.*.ctrls0);
}
pub inline fn XkbSARedirectVMods(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(c_uint, a.*.vmods1) << @as(c_int, 8)) | @import("std").zig.c_translation.cast(c_uint, a.*.vmods0)) {
    _ = &a;
    return (@import("std").zig.c_translation.cast(c_uint, a.*.vmods1) << @as(c_int, 8)) | @import("std").zig.c_translation.cast(c_uint, a.*.vmods0);
}
pub const XkbSARedirectSetVMods = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:226:9
pub inline fn XkbSARedirectVModsMask(a: anytype) @TypeOf((@import("std").zig.c_translation.cast(c_uint, a.*.vmods_mask1) << @as(c_int, 8)) | @import("std").zig.c_translation.cast(c_uint, a.*.vmods_mask0)) {
    _ = &a;
    return (@import("std").zig.c_translation.cast(c_uint, a.*.vmods_mask1) << @as(c_int, 8)) | @import("std").zig.c_translation.cast(c_uint, a.*.vmods_mask0);
}
pub const XkbSARedirectSetVModsMask = @compileError("unable to translate C expr: expected ')' instead got '='");
// /usr/include/X11/extensions/XKBstr.h:230:9
pub inline fn XkbAX_AnyFeedback(c: anytype) @TypeOf(c.*.enabled_ctrls & XkbAccessXFeedbackMask) {
    _ = &c;
    return c.*.enabled_ctrls & XkbAccessXFeedbackMask;
}
pub inline fn XkbAX_NeedOption(c: anytype, w: anytype) @TypeOf(c.*.ax_options & w) {
    _ = &c;
    _ = &w;
    return c.*.ax_options & w;
}
pub inline fn XkbAX_NeedFeedback(c: anytype, w: anytype) @TypeOf((XkbAX_AnyFeedback(c) != 0) and (XkbAX_NeedOption(c, w) != 0)) {
    _ = &c;
    _ = &w;
    return (XkbAX_AnyFeedback(c) != 0) and (XkbAX_NeedOption(c, w) != 0);
}
pub inline fn XkbSMKeyActionsPtr(m: anytype, k: anytype) @TypeOf(&m.*.acts[@as(usize, @intCast(m.*.key_acts[@as(usize, @intCast(k))]))]) {
    _ = &m;
    _ = &k;
    return &m.*.acts[@as(usize, @intCast(m.*.key_acts[@as(usize, @intCast(k))]))];
}
pub inline fn XkbCMKeyGroupInfo(m: anytype, k: anytype) @TypeOf(m.*.key_sym_map[@as(usize, @intCast(k))].group_info) {
    _ = &m;
    _ = &k;
    return m.*.key_sym_map[@as(usize, @intCast(k))].group_info;
}
pub inline fn XkbCMKeyNumGroups(m: anytype, k: anytype) @TypeOf(XkbNumGroups(m.*.key_sym_map[@as(usize, @intCast(k))].group_info)) {
    _ = &m;
    _ = &k;
    return XkbNumGroups(m.*.key_sym_map[@as(usize, @intCast(k))].group_info);
}
pub inline fn XkbCMKeyGroupWidth(m: anytype, k: anytype, g: anytype) @TypeOf(XkbCMKeyType(m, k, g).*.num_levels) {
    _ = &m;
    _ = &k;
    _ = &g;
    return XkbCMKeyType(m, k, g).*.num_levels;
}
pub inline fn XkbCMKeyGroupsWidth(m: anytype, k: anytype) @TypeOf(m.*.key_sym_map[@as(usize, @intCast(k))].width) {
    _ = &m;
    _ = &k;
    return m.*.key_sym_map[@as(usize, @intCast(k))].width;
}
pub inline fn XkbCMKeyTypeIndex(m: anytype, k: anytype, g: anytype) @TypeOf(m.*.key_sym_map[@as(usize, @intCast(k))].kt_index[@as(usize, @intCast(g & @as(c_int, 0x3)))]) {
    _ = &m;
    _ = &k;
    _ = &g;
    return m.*.key_sym_map[@as(usize, @intCast(k))].kt_index[@as(usize, @intCast(g & @as(c_int, 0x3)))];
}
pub inline fn XkbCMKeyType(m: anytype, k: anytype, g: anytype) @TypeOf(&m.*.types[@as(usize, @intCast(XkbCMKeyTypeIndex(m, k, g)))]) {
    _ = &m;
    _ = &k;
    _ = &g;
    return &m.*.types[@as(usize, @intCast(XkbCMKeyTypeIndex(m, k, g)))];
}
pub inline fn XkbCMKeyNumSyms(m: anytype, k: anytype) @TypeOf(XkbCMKeyGroupsWidth(m, k) * XkbCMKeyNumGroups(m, k)) {
    _ = &m;
    _ = &k;
    return XkbCMKeyGroupsWidth(m, k) * XkbCMKeyNumGroups(m, k);
}
pub inline fn XkbCMKeySymsOffset(m: anytype, k: anytype) @TypeOf(m.*.key_sym_map[@as(usize, @intCast(k))].offset) {
    _ = &m;
    _ = &k;
    return m.*.key_sym_map[@as(usize, @intCast(k))].offset;
}
pub inline fn XkbCMKeySymsPtr(m: anytype, k: anytype) @TypeOf(&m.*.syms[@as(usize, @intCast(XkbCMKeySymsOffset(m, k)))]) {
    _ = &m;
    _ = &k;
    return &m.*.syms[@as(usize, @intCast(XkbCMKeySymsOffset(m, k)))];
}
pub inline fn XkbIM_IsAuto(i: anytype) @TypeOf(((i.*.flags & XkbIM_NoAutomatic) == @as(c_int, 0)) and ((((i.*.which_groups != 0) and (i.*.groups != 0)) or ((i.*.which_mods != 0) and (i.*.mods.mask != 0))) or (i.*.ctrls != 0))) {
    _ = &i;
    return ((i.*.flags & XkbIM_NoAutomatic) == @as(c_int, 0)) and ((((i.*.which_groups != 0) and (i.*.groups != 0)) or ((i.*.which_mods != 0) and (i.*.mods.mask != 0))) or (i.*.ctrls != 0));
}
pub inline fn XkbIM_InUse(i: anytype) @TypeOf((((i.*.flags != 0) or (i.*.which_groups != 0)) or (i.*.which_mods != 0)) or (i.*.ctrls != 0)) {
    _ = &i;
    return (((i.*.flags != 0) or (i.*.which_groups != 0)) or (i.*.which_mods != 0)) or (i.*.ctrls != 0);
}
pub inline fn XkbKeyKeyTypeIndex(d: anytype, k: anytype, g: anytype) @TypeOf(XkbCMKeyTypeIndex(d.*.map, k, g)) {
    _ = &d;
    _ = &k;
    _ = &g;
    return XkbCMKeyTypeIndex(d.*.map, k, g);
}
pub inline fn XkbKeyKeyType(d: anytype, k: anytype, g: anytype) @TypeOf(XkbCMKeyType(d.*.map, k, g)) {
    _ = &d;
    _ = &k;
    _ = &g;
    return XkbCMKeyType(d.*.map, k, g);
}
pub inline fn XkbKeyGroupWidth(d: anytype, k: anytype, g: anytype) @TypeOf(XkbCMKeyGroupWidth(d.*.map, k, g)) {
    _ = &d;
    _ = &k;
    _ = &g;
    return XkbCMKeyGroupWidth(d.*.map, k, g);
}
pub inline fn XkbKeyGroupsWidth(d: anytype, k: anytype) @TypeOf(XkbCMKeyGroupsWidth(d.*.map, k)) {
    _ = &d;
    _ = &k;
    return XkbCMKeyGroupsWidth(d.*.map, k);
}
pub inline fn XkbKeyGroupInfo(d: anytype, k: anytype) @TypeOf(XkbCMKeyGroupInfo(d.*.map, k)) {
    _ = &d;
    _ = &k;
    return XkbCMKeyGroupInfo(d.*.map, k);
}
pub inline fn XkbKeyNumGroups(d: anytype, k: anytype) @TypeOf(XkbCMKeyNumGroups(d.*.map, k)) {
    _ = &d;
    _ = &k;
    return XkbCMKeyNumGroups(d.*.map, k);
}
pub inline fn XkbKeyNumSyms(d: anytype, k: anytype) @TypeOf(XkbCMKeyNumSyms(d.*.map, k)) {
    _ = &d;
    _ = &k;
    return XkbCMKeyNumSyms(d.*.map, k);
}
pub inline fn XkbKeySymsPtr(d: anytype, k: anytype) @TypeOf(XkbCMKeySymsPtr(d.*.map, k)) {
    _ = &d;
    _ = &k;
    return XkbCMKeySymsPtr(d.*.map, k);
}
pub inline fn XkbKeySym(d: anytype, k: anytype, n: anytype) @TypeOf(XkbKeySymsPtr(d, k)[@as(usize, @intCast(n))]) {
    _ = &d;
    _ = &k;
    _ = &n;
    return XkbKeySymsPtr(d, k)[@as(usize, @intCast(n))];
}
pub inline fn XkbKeySymEntry(d: anytype, k: anytype, sl: anytype, g: anytype) @TypeOf(XkbKeySym(d, k, (XkbKeyGroupsWidth(d, k) * g) + sl)) {
    _ = &d;
    _ = &k;
    _ = &sl;
    _ = &g;
    return XkbKeySym(d, k, (XkbKeyGroupsWidth(d, k) * g) + sl);
}
pub inline fn XkbKeyAction(d: anytype, k: anytype, n: anytype) @TypeOf(if (XkbKeyHasActions(d, k)) &XkbKeyActionsPtr(d, k)[@as(usize, @intCast(n))] else NULL) {
    _ = &d;
    _ = &k;
    _ = &n;
    return if (XkbKeyHasActions(d, k)) &XkbKeyActionsPtr(d, k)[@as(usize, @intCast(n))] else NULL;
}
pub inline fn XkbKeyActionEntry(d: anytype, k: anytype, sl: anytype, g: anytype) @TypeOf(if (XkbKeyHasActions(d, k)) XkbKeyAction(d, k, (XkbKeyGroupsWidth(d, k) * g) + sl) else NULL) {
    _ = &d;
    _ = &k;
    _ = &sl;
    _ = &g;
    return if (XkbKeyHasActions(d, k)) XkbKeyAction(d, k, (XkbKeyGroupsWidth(d, k) * g) + sl) else NULL;
}
pub inline fn XkbKeyHasActions(d: anytype, k: anytype) @TypeOf(d.*.server.*.key_acts[@as(usize, @intCast(k))] != @as(c_int, 0)) {
    _ = &d;
    _ = &k;
    return d.*.server.*.key_acts[@as(usize, @intCast(k))] != @as(c_int, 0);
}
pub inline fn XkbKeyNumActions(d: anytype, k: anytype) @TypeOf(if (XkbKeyHasActions(d, k)) XkbKeyNumSyms(d, k) else @as(c_int, 1)) {
    _ = &d;
    _ = &k;
    return if (XkbKeyHasActions(d, k)) XkbKeyNumSyms(d, k) else @as(c_int, 1);
}
pub inline fn XkbKeyActionsPtr(d: anytype, k: anytype) @TypeOf(XkbSMKeyActionsPtr(d.*.server, k)) {
    _ = &d;
    _ = &k;
    return XkbSMKeyActionsPtr(d.*.server, k);
}
pub inline fn XkbKeycodeInRange(d: anytype, k: anytype) @TypeOf((k >= d.*.min_key_code) and (k <= d.*.max_key_code)) {
    _ = &d;
    _ = &k;
    return (k >= d.*.min_key_code) and (k <= d.*.max_key_code);
}
pub inline fn XkbNumKeys(d: anytype) @TypeOf((d.*.max_key_code - d.*.min_key_code) + @as(c_int, 1)) {
    _ = &d;
    return (d.*.max_key_code - d.*.min_key_code) + @as(c_int, 1);
}
pub inline fn XkbXI_DevHasBtnActs(d: anytype) @TypeOf((d.*.num_btns > @as(c_int, 0)) and (d.*.btn_acts != NULL)) {
    _ = &d;
    return (d.*.num_btns > @as(c_int, 0)) and (d.*.btn_acts != NULL);
}
pub inline fn XkbXI_LegalDevBtn(d: anytype, b: anytype) @TypeOf((XkbXI_DevHasBtnActs(d) != 0) and (b < d.*.num_btns)) {
    _ = &d;
    _ = &b;
    return (XkbXI_DevHasBtnActs(d) != 0) and (b < d.*.num_btns);
}
pub inline fn XkbXI_DevHasLeds(d: anytype) @TypeOf((d.*.num_leds > @as(c_int, 0)) and (d.*.leds != NULL)) {
    _ = &d;
    return (d.*.num_leds > @as(c_int, 0)) and (d.*.leds != NULL);
}
pub const XkbOD_Success = @as(c_int, 0);
pub const XkbOD_BadLibraryVersion = @as(c_int, 1);
pub const XkbOD_ConnectionRefused = @as(c_int, 2);
pub const XkbOD_NonXkbServer = @as(c_int, 3);
pub const XkbOD_BadServerVersion = @as(c_int, 4);
pub const XkbLC_ForceLatin1Lookup = @as(c_int, 1) << @as(c_int, 0);
pub const XkbLC_ConsumeLookupMods = @as(c_int, 1) << @as(c_int, 1);
pub const XkbLC_AlwaysConsumeShiftAndLock = @as(c_int, 1) << @as(c_int, 2);
pub const XkbLC_IgnoreNewKeyboards = @as(c_int, 1) << @as(c_int, 3);
pub const XkbLC_ControlFallback = @as(c_int, 1) << @as(c_int, 4);
pub const XkbLC_ConsumeKeysOnComposeFail = @as(c_int, 1) << @as(c_int, 29);
pub const XkbLC_ComposeLED = @as(c_int, 1) << @as(c_int, 30);
pub const XkbLC_BeepOnComposeFail = @as(c_int, 1) << @as(c_int, 31);
pub const XkbLC_AllComposeControls = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0000000, .hex);
pub const XkbLC_AllControls = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc000001f, .hex);
pub const XkbNoteIndicatorMapChanges = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/X11/XKBlib.h:527:9
pub const XkbNoteIndicatorStateChanges = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/X11/XKBlib.h:529:9
pub inline fn XkbGetIndicatorMapChanges(d: anytype, x: anytype, c: anytype) @TypeOf(XkbGetIndicatorMap(d, c.*.map_changes, x)) {
    _ = &d;
    _ = &x;
    _ = &c;
    return XkbGetIndicatorMap(d, c.*.map_changes, x);
}
pub inline fn XkbChangeIndicatorMaps(d: anytype, x: anytype, c: anytype) @TypeOf(XkbSetIndicatorMap(d, c.*.map_changes, x)) {
    _ = &d;
    _ = &x;
    _ = &c;
    return XkbSetIndicatorMap(d, c.*.map_changes, x);
}
pub inline fn XkbGetControlsChanges(d: anytype, x: anytype, c: anytype) @TypeOf(XkbGetControls(d, c.*.changed_ctrls, x)) {
    _ = &d;
    _ = &x;
    _ = &c;
    return XkbGetControls(d, c.*.changed_ctrls, x);
}
pub inline fn XkbChangeControls(d: anytype, x: anytype, c: anytype) @TypeOf(XkbSetControls(d, c.*.changed_ctrls, x)) {
    _ = &d;
    _ = &x;
    _ = &c;
    return XkbSetControls(d, c.*.changed_ctrls, x);
}
pub const MLX_INT_H = "";
pub const MLX_TYPE_SHM_PIXMAP = @as(c_int, 3);
pub const MLX_TYPE_SHM = @as(c_int, 2);
pub const MLX_TYPE_XIMAGE = @as(c_int, 1);
pub const MLX_MAX_EVENT = LASTEvent;
pub const ENV_DISPLAY = "DISPLAY";
pub const LOCALHOST = "localhost";
pub const ERR_NO_TRUECOLOR = "MinilibX Error : No TrueColor Visual available.\n";
pub const WARN_SHM_ATTACH = "MinilibX Warning : X server can't attach shared memory.\n";
pub const MLX_H = "";
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const __locale_struct = struct___locale_struct;
pub const flock = struct_flock;
pub const stat = struct_stat;
pub const _XExtData = struct__XExtData;
pub const _XGC = struct__XGC;
pub const _XDisplay = struct__XDisplay;
pub const _XImage = struct__XImage;
pub const _XPrivate = struct__XPrivate;
pub const _XrmHashBucketRec = struct__XrmHashBucketRec;
pub const _XEvent = union__XEvent;
pub const _XOM = struct__XOM;
pub const _XOC = struct__XOC;
pub const _XIM = struct__XIM;
pub const _XIC = struct__XIC;
pub const _XIMText = struct__XIMText;
pub const _XIMPreeditStateNotifyCallbackStruct = struct__XIMPreeditStateNotifyCallbackStruct;
pub const _XIMStringConversionText = struct__XIMStringConversionText;
pub const _XIMStringConversionCallbackStruct = struct__XIMStringConversionCallbackStruct;
pub const _XIMPreeditDrawCallbackStruct = struct__XIMPreeditDrawCallbackStruct;
pub const _XIMPreeditCaretCallbackStruct = struct__XIMPreeditCaretCallbackStruct;
pub const _XIMStatusDrawCallbackStruct = struct__XIMStatusDrawCallbackStruct;
pub const _XIMHotKeyTrigger = struct__XIMHotKeyTrigger;
pub const _XIMHotKeyTriggers = struct__XIMHotKeyTriggers;
pub const _XComposeStatus = struct__XComposeStatus;
pub const _XRegion = struct__XRegion;
pub const ipc_perm = struct_ipc_perm;
pub const shmid_ds = struct_shmid_ds;
pub const shminfo = struct_shminfo;
pub const shm_info = struct_shm_info;
pub const _XkbStateRec = struct__XkbStateRec;
pub const _XkbMods = struct__XkbMods;
pub const _XkbKTMapEntry = struct__XkbKTMapEntry;
pub const _XkbKeyType = struct__XkbKeyType;
pub const _XkbBehavior = struct__XkbBehavior;
pub const _XkbAnyAction = struct__XkbAnyAction;
pub const _XkbModAction = struct__XkbModAction;
pub const _XkbGroupAction = struct__XkbGroupAction;
pub const _XkbISOAction = struct__XkbISOAction;
pub const _XkbPtrAction = struct__XkbPtrAction;
pub const _XkbPtrBtnAction = struct__XkbPtrBtnAction;
pub const _XkbPtrDfltAction = struct__XkbPtrDfltAction;
pub const _XkbSwitchScreenAction = struct__XkbSwitchScreenAction;
pub const _XkbCtrlsAction = struct__XkbCtrlsAction;
pub const _XkbMessageAction = struct__XkbMessageAction;
pub const _XkbRedirectKeyAction = struct__XkbRedirectKeyAction;
pub const _XkbDeviceBtnAction = struct__XkbDeviceBtnAction;
pub const _XkbDeviceValuatorAction = struct__XkbDeviceValuatorAction;
pub const _XkbAction = union__XkbAction;
pub const _XkbControls = struct__XkbControls;
pub const _XkbServerMapRec = struct__XkbServerMapRec;
pub const _XkbSymMapRec = struct__XkbSymMapRec;
pub const _XkbClientMapRec = struct__XkbClientMapRec;
pub const _XkbSymInterpretRec = struct__XkbSymInterpretRec;
pub const _XkbCompatMapRec = struct__XkbCompatMapRec;
pub const _XkbIndicatorMapRec = struct__XkbIndicatorMapRec;
pub const _XkbIndicatorRec = struct__XkbIndicatorRec;
pub const _XkbKeyNameRec = struct__XkbKeyNameRec;
pub const _XkbKeyAliasRec = struct__XkbKeyAliasRec;
pub const _XkbNamesRec = struct__XkbNamesRec;
pub const _XkbGeometry = struct__XkbGeometry;
pub const _XkbDesc = struct__XkbDesc;
pub const _XkbMapChanges = struct__XkbMapChanges;
pub const _XkbControlsChanges = struct__XkbControlsChanges;
pub const _XkbIndicatorChanges = struct__XkbIndicatorChanges;
pub const _XkbNameChanges = struct__XkbNameChanges;
pub const _XkbCompatChanges = struct__XkbCompatChanges;
pub const _XkbChanges = struct__XkbChanges;
pub const _XkbComponentNames = struct__XkbComponentNames;
pub const _XkbComponentName = struct__XkbComponentName;
pub const _XkbComponentList = struct__XkbComponentList;
pub const _XkbDeviceLedInfo = struct__XkbDeviceLedInfo;
pub const _XkbDeviceInfo = struct__XkbDeviceInfo;
pub const _XkbDeviceLedChanges = struct__XkbDeviceLedChanges;
pub const _XkbDeviceChanges = struct__XkbDeviceChanges;
pub const _XkbAnyEvent = struct__XkbAnyEvent;
pub const _XkbNewKeyboardNotify = struct__XkbNewKeyboardNotify;
pub const _XkbMapNotifyEvent = struct__XkbMapNotifyEvent;
pub const _XkbStateNotifyEvent = struct__XkbStateNotifyEvent;
pub const _XkbControlsNotify = struct__XkbControlsNotify;
pub const _XkbIndicatorNotify = struct__XkbIndicatorNotify;
pub const _XkbNamesNotify = struct__XkbNamesNotify;
pub const _XkbCompatMapNotify = struct__XkbCompatMapNotify;
pub const _XkbBellNotify = struct__XkbBellNotify;
pub const _XkbActionMessage = struct__XkbActionMessage;
pub const _XkbAccessXNotify = struct__XkbAccessXNotify;
pub const _XkbExtensionDeviceNotify = struct__XkbExtensionDeviceNotify;
pub const _XkbEvent = union__XkbEvent;
pub const _XkbKbdDpyState = struct__XkbKbdDpyState;
pub const s_xpm_col = struct_s_xpm_col;
pub const s_col_name = struct_s_col_name;
pub const s_event_list = struct_s_event_list;
pub const s_win_list = struct_s_win_list;
pub const s_img = struct_s_img;
pub const s_xvar = struct_s_xvar;
