const std = @import("std");

pub fn main() anyerror!void {
    std.debug.print("           ", .{});

    var i: u8 = 0;
    while (i <= 7) : (i += 1) {
        std.debug.print("  4{d}m ", .{i});
    }

    var k: u8 = 30;
    while (k <= 37) : (k += 1) {
        i = 0;
        while (i <= 1) : (i += 1) {
            var p: []const u8 = "  ";
            if (i != 0) {
                p = "1;";
            }

            std.debug.print("\n{s}{d}m  \x1B[{s}{d}mgYw \x1B[0m", .{ p, k, p, k });

            var j: u8 = 0;
            while (j <= 7) : (j += 1) {
                std.debug.print(" \x1B[4{d};{s}{d}m gYw \x1B[0m", .{ j, p, k });
            }
        }
    }

    std.debug.print("\n", .{});
}
