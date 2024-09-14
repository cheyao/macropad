// Units: mm
use <MCAD/boxes.scad>
use <cyl_head_bolt.scad>

// PCB
board_width = 81.0987;
board_length = 93.358;
hole_offset_x = 4.105;
hole_offset_y = 3.664;

difference() {
	color([0, 0.5, 0, 0.3]) roundedBox([board_width, board_length, 1.6], radius=3.175, sidesonly=true);
	translate([board_width / 2 - hole_offset_x, board_length / 2 - hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
	translate([board_width / 2 - hole_offset_x, -board_length / 2 + hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
	translate([-board_width / 2 + hole_offset_x, board_length / 2 - hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
	translate([-board_width / 2 + hole_offset_x, -board_length / 2 + hole_offset_y, 0]) cylinder(h=1.7, r=3.2, center=true);
}

translate([0, board_length/2, -1.6 * 2]) color("silver") cube([9.0, 7.3533, 1.6], center=true);
// 38.835

// Case
difference() {
	translate([0, 0, -5]) roundedBox([board_width + 10, board_length + 10, 20], radius=3.175, sidesonly=true);
	// USB hole
	translate([0, board_length/2, -1.6 * 2]) cube([9.0 * 1.5, 7.3533 * 2, 1.6 * 2.5], center=true);
	// Bord hole
	translate([0, 0, -3]) roundedBox([board_width + 8, board_length + 8, 20], radius=3.175, sidesonly=true);
}

// Holders
module hole(h=13.1, ir=2.9, or=6.0) {
	difference() {
		translate([0, 0, 0]) cylinder(h=h, r=or, center=true);
		translate([0, 0, 20]) hole_through(name="M3", l=50+5);
	}
}

translate([board_width / 2 - hole_offset_x, board_length / 2 - hole_offset_y, -15/2-0.8]) hole();
translate([board_width / 2 - hole_offset_x, -board_length / 2 + hole_offset_y, -15/2-0.8]) hole();
translate([-board_width / 2 + hole_offset_x, board_length / 2 - hole_offset_y, -15/2-0.8]) hole();
translate([-board_width / 2 + hole_offset_x, -board_length / 2 + hole_offset_y, -15/2-0.8]) hole();
