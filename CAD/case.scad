// Units: mm
use <MCAD/boxes.scad>
use <cyl_head_bolt.scad>

// PCB
board_width = 81.0987;
board_length = 93.358;
keypad_x = 66.506;
keypad_y_offset = 6.183;
keypad_x_offset = 7.034; // From the right

/*
// Main board
difference() {
	translate([0, 0, 1]) color("green") roundedBox([board_width, board_length, 1.6], radius=3.175, sidesonly=true);

	// Holes
	translate([board_width / 2 - hole_offset_x, board_length / 2 - hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
	translate([board_width / 2 - hole_offset_x, -board_length / 2 + hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
	translate([-board_width / 2 + hole_offset_x, board_length / 2 - hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
	translate([-board_width / 2 + hole_offset_x, -board_length / 2 + hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
}

// USB
translate([0, board_length/2, -1.6 * 2]) color("silver") cube([9.0, 7.3533, 1.6], center=true);

// Keys
translate([-((board_width - keypad_x) / 2) + keypad_x_offset, -((board_length - keypad_x) / 2) + keypad_y_offset, 0]) cube([keypad_x, keypad_x, 4], center=true);
*/

// Add 2

off = 0.7937;

// 21×17.8×3.5mm
// Case
color("orange") difference() {
	translate([0, 0, -5.25]) roundedBox([board_width + 14, board_length + 14, 11.5], radius=3.175, sidesonly=true);
	// USB hole
	translate([0, board_length/2, -3.6]) cube([19, 20, 6], center=true);
	// Board hollow
	translate([0, 0, -2]) roundedBox([board_width + 8, board_length + 8, 10], radius=3.175, sidesonly=true);
}

// Holders
module hole_cylinder(h=9.1, ir=2.9, or=6.0) {
	difference() {
		cylinder(h=h, r=or, center=true);
		translate([0, 0, h]) hole_through(name="M3", l=h);
	}
}

hole_offset_x = 4.105;
hole_offset_y = 3.664;

ty = 3.969;
tlx = 3.969;
trx = 4.105;

by = 4.458;
blx = 3.969;
brx = 4.105;

// Top
// tl
translate([+board_width / 2 - tlx, -board_length / 2 + ty, -15/2-0.8+2]) hole_cylinder();
// tr 
translate([-board_width / 2 + trx, -board_length / 2 + ty, -15/2-0.8+2]) hole_cylinder();

// bl
translate([+board_width / 2 - blx, +board_length / 2 - by, -15/2-0.8+2]) hole_cylinder();
// br
translate([-board_width / 2 + brx, +board_length / 2 - by, -15/2-0.8+2]) hole_cylinder();
