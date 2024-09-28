// Units: mm
use <MCAD/boxes.scad>

// PCB
BOARD_WIDTH = 83.480;
BOARD_HEIGHT = 97.326;

USB_COFF = 19.844;

// Check 
HL = 4.105;
HR = 3.969;
HB = 3.969;
HT = 4.458;

THICKNESS = 14;
MARGIN = 8;

// Case
module box() {
	difference() {
		translate([0, 0, -5.25]) roundedBox([BOARD_WIDTH + THICKNESS, BOARD_HEIGHT + THICKNESS, 11.5], radius=3.175, sidesonly=true);
		// Middle hollow
		translate([0, 0, -2])    roundedBox([BOARD_WIDTH + MARGIN, BOARD_HEIGHT + MARGIN, 10], radius=3.175, sidesonly=true);
		// USB hole
		translate([BOARD_WIDTH/2-USB_COFF, H/2, -3.6]) cube([19, 20, 6], center=true);
	}
}

// Holders
module hole_cylinder() {
	difference() {
		cylinder(h=9.1, r=6.0, center=true);
		translate([0, 0, 2.9]) cylinder(h=3.4, r=4.7/2, center=true);
	}
}

// Holes
module drill_holes() {
	translate([+BOARD_WIDTH / 2 - HR, -BOARD_HEIGHT / 2 + HB, -15/2-0.8+2]) hole_cylinder();
	translate([-BOARD_WIDTH / 2 + HL, -BOARD_HEIGHT / 2 + HB, -15/2-0.8+2]) hole_cylinder();

	translate([+BOARD_WIDTH / 2 - HR, +BOARD_HEIGHT / 2 - HT, -15/2-0.8+2]) hole_cylinder();
	translate([-BOARD_WIDTH / 2 + HL, +BOARD_HEIGHT / 2 - HT, -15/2-0.8+2]) hole_cylinder();
}

box();
drill_holes();
