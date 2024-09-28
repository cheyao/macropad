// Units: mm
use <MCAD/boxes.scad>

BOARD_WIDTH = 83.480;
BOARD_LENGTH = 97.326;

USB_ROFF = 15.344;

LEFT_HOLE_OFFSET_X = 4.105;
RIGHT_HOLE_OFFSET_X = 3.969;;
BOTTOM_HOLE_OFFSET_Y = 3.969;
TOP_HOLE_OFFSET_Y = 4.458;

KEYBY = 1.619;
KEYLX = 8.555;

KEY_WIDTH = 66.506;
KEY_HEIGHT = 66.506;

LCD_LX = 29.567;
LCD_TY = 1.126;

LCD_W = 27.4;
LCD_H = 27.3;

// Holders
module hole(h=13.1, ir=2.9, or=4.0) {
	translate([0, 0, 50]) cylinder(h=3000000.4, r=4.7/2, center=true);
}

module mounting_holes() {
	// Screw holes
	translate([+BOARD_WIDTH / 2 - RIGHT_HOLE_OFFSET_X, -BOARD_LENGTH / 2 + BOTTOM_HOLE_OFFSET_Y, 500]) hole();
	translate([-BOARD_WIDTH / 2 + LEFT_HOLE_OFFSET_X,  -BOARD_LENGTH / 2 + BOTTOM_HOLE_OFFSET_Y, 500]) hole();
	translate([+BOARD_WIDTH / 2 - RIGHT_HOLE_OFFSET_X, +BOARD_LENGTH / 2 - TOP_HOLE_OFFSET_Y, 500]) hole();
	translate([-BOARD_WIDTH / 2 + LEFT_HOLE_OFFSET_X,  +BOARD_LENGTH / 2 - TOP_HOLE_OFFSET_Y, 500]) hole();
}

module cover() {
	// PCB
	THICKNESS = 14;
	MARGIN = 8;

	// Cover
	color([0, 1, 0, 0.5]) difference() {
		roundedBox([BOARD_WIDTH + THICKNESS, BOARD_WIDTH + THICKNESS, THICKNESS - MARGIN], radius=3.175, sidesonly=true);
		// Keypad hole
		translate([-BOARD_WIDTH / 2 + KEYLX - 1,  -BOARD_LENGTH / 2 + KEYBY - (2/2), -10]) cube([KEY_WIDTH + 2, KEY_HEIGHT + 2, 40]);
		// LCD
		translate([-BOARD_WIDTH / 2 + LCD_LX - 1, (BOARD_LENGTH / 2) - (LCD_H + 2), -25]) cube([LCD_W + 2, LCD_H + 2, 50]);

		mounting_holes();
	}
}
