// Units: mm
use <MCAD/boxes.scad>

// PCB
W = 83.480;
H = 97.326;

USB_ROFF = 15.344;
USB_COFF = 19.844;

// Check 
HL = 4.105;
HR = 3.969;
HB = 3.969;
HT = 4.458;

THICKNESS = 14;
MARGIN = 8;

// Case
color("orange") difference() {
	translate([0, 0, -5.25]) roundedBox([W + THICKNESS, H + THICKNESS, 11.5], radius=3.175, sidesonly=true);
	// Board hollow
	translate([0, 0, -2]) roundedBox([W + MARGIN, H + MARGIN, 10], radius=3.175, sidesonly=true);
	// USB hole
	translate([W/2-USB_COFF, H/2, -3.6]) cube([19, 20, 6], center=true);
}

// Holders
module hole_cylinder(h=9.1, or=6.0) {
	difference() {
		cylinder(h=h, r=or, center=true);
		translate([0, 0, 2.9]) cylinder(h=3.4, r=4.7/2, center=true);
	}
}

// Holes
translate([+W / 2 - HR, -H / 2 + HB, -15/2-0.8+2]) hole_cylinder();
translate([-W / 2 + HL, -H / 2 + HB, -15/2-0.8+2]) hole_cylinder();

translate([+W / 2 - HR, +H / 2 - HT, -15/2-0.8+2]) hole_cylinder();
translate([-W / 2 + HL, +H / 2 - HT, -15/2-0.8+2]) hole_cylinder();
