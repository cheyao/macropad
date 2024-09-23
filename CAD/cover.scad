// Units: mm
use <MCAD/boxes.scad>

// PCB
THICKNESS = 14;
MARGIN = 8;

W = 83.480;
H = 97.326;

USB_ROFF = 15.344;

HL = 4.105;
HR = 3.969;
HB = 3.969;
HT = 4.458;

KEYBY = 1.619;
KEYLX = 8.555;

KEY_WIDTH = 66.506;
KEY_HEIGHT = 66.506;

LCDLX = 29.567;
LCDTY = 1.126;

LCDW = 27.4;
LCDH = 27.3;

// Holders
module hole(h=13.1, ir=2.9, or=4.0) {
	translate([0, 0, 50]) cylinder(h=3000000.4, r=4.7/2, center=true);
}

// Cover
color([0, 1, 0, 0.5]) difference() {
	roundedBox([W + THICKNESS, H + THICKNESS, THICKNESS - MARGIN], radius=3.175, sidesonly=true);
	// Keypad hole
	translate([-W/2 + KEYLX - 1, -H/2 + KEYBY - (2/2), -10]) cube([KEY_WIDTH + 2, KEY_HEIGHT + 2, 40]);
	// Screw holes
	translate([+W / 2 - HR, -H / 2 + HB, 500]) hole();
	translate([-W / 2 + HL, -H / 2 + HB, 500]) hole();
	translate([+W / 2 - HR, +H / 2 - HT, 500]) hole();
	translate([-W / 2 + HL, +H / 2 - HT, 500]) hole();
	// LCD
	translate([-W / 2 + LCDLX - 1, (H / 2) - (LCDH + 2), -25]) cube([LCDW + 2, LCDH + 2, 50]);
}
