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

// Main board
difference() {
	color("green") roundedBox([board_width, board_length, 1.6], radius=3.175, sidesonly=true);

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

// Case
difference() {
	translate([0, 0, -5]) roundedBox([board_width + 10, board_length + 10, 15], radius=3.175, sidesonly=true);
	// USB hole
	translate([0, board_length/2, -1.6 * 2]) cube([9.0 * 1.5, 7.3533 * 2, 1.6 * 2.5], center=true);
	// Bord hollow
	translate([0, 0, -3]) roundedBox([board_width + 8, board_length + 8, 18], radius=3.175, sidesonly=true);
	// Keypad hole
}

// Holders
module hole(h=13.1, ir=2.9, or=4.0) {
	difference() {
		cylinder(h=h, r=or, center=true);
		translate([0, 0, h]) hole_through(name="M3", l=h);
	}
}

translate([board_width / 2 - hole_offset_x, board_length / 2 - hole_offset_y, -15/2-0.8]) hole();
translate([board_width / 2 - hole_offset_x, -board_length / 2 + hole_offset_y, -15/2-0.8]) hole();
translate([-board_width / 2 + hole_offset_x, board_length / 2 - hole_offset_y, -15/2-0.8]) hole();
translate([-board_width / 2 + hole_offset_x, -board_length / 2 + hole_offset_y, -15/2-0.8]) hole();
