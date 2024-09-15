// Units: mm
use <MCAD/boxes.scad>
use <cyl_head_bolt.scad>

// PCB
board_width = 81.0987;
board_length = 93.358;
hole_offset_x = 4.105;
hole_offset_y = 3.664;
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

// 21×17.8×3.5mm
// Case
difference() {
	translate([0, 0, -5]) roundedBox([board_width + 14, board_length + 14, 12], radius=3.175, sidesonly=true);
	// USB hole
	translate([0, board_length/2, -3.6]) cube([19, 20, 6], center=true);
	// Board hollow
	translate([0, 0, -2]) roundedBox([board_width + 8, board_length + 8, 10], radius=3.175, sidesonly=true);
}

// Holders
module hole_cylinder(h=13.1, ir=2.9, or=6.0) {
	difference() {
		cylinder(h=h, r=or, center=true);
		translate([0, 0, h]) hole_through(name="M3", l=h);
	}
}

translate([+board_width / 2 - hole_offset_x, +board_length / 2 - hole_offset_y, -15/2-0.8]) hole_cylinder();
translate([+board_width / 2 - hole_offset_x, -board_length / 2 + hole_offset_y, -15/2-0.8]) hole_cylinder();
translate([-board_width / 2 + hole_offset_x, +board_length / 2 - hole_offset_y, -15/2-0.8]) hole_cylinder();
translate([-board_width / 2 + hole_offset_x, -board_length / 2 + hole_offset_y, -15/2-0.8]) hole_cylinder();
