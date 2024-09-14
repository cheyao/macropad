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

// Holders
module hole(h=13.1, ir=2.9, or=4.0) {
	translate([0, 0, 50]) hole_through(name="M3", l=1000);
}

// Cover
color([0, 1, 0, 0.5]) difference() {
	roundedBox([board_width + 14, board_length + 14, 4], radius=3.175, sidesonly=true);
	// Keypad hole
	translate([-((board_width - keypad_x) / 2) + keypad_x_offset, -((board_length - keypad_x) / 2) + keypad_y_offset, 0]) cube([keypad_x + 1.5, keypad_x + 1.5, 40], center=true);
	// Screw holes
	translate([board_width / 2 - hole_offset_x, board_length / 2 - hole_offset_y, 5/2-0.8]) hole();
	translate([board_width / 2 - hole_offset_x, -board_length / 2 + hole_offset_y, 5/2-0.8]) hole();
	translate([-board_width / 2 + hole_offset_x, board_length / 2 - hole_offset_y, 5/2-0.8]) hole();
	translate([-board_width / 2 + hole_offset_x, -board_length / 2 + hole_offset_y, 5/2-0.8]) hole();
}
