# Cyao macropad firmware
# Rev 1.1
# Copyright 2024
# Licensed under zlib license
import board
import busio
import time
import board
from rainbowio import colorwheel

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.modules.macros import Macros
from kmk.extensions.display import Display, TextEntry, ImageEntry
from kmk.extensions.display.ssd1306 import SSD1306
from kmk.extensions.RGB import RGB
from kmk.extensions.rgb import AnimationModes

COL0 = board.D9;
COL1 = board.D8;
COL2 = board.D7;
COL3 = board.D6;
ROW0 = board.D3;
ROW1 = board.D2;
ROW2 = board.D1;
ROW3 = board.D0;

LED_PIN = board.D10;

bus = busio.I2C(board.SCL, board.SDA);

driver = SSD1306(i2c=bus, device_address=0x3C);

display = Display(
    display=driver,
    width=128,
    height=64,
    dim_time=10,
    dim_target=0.2,
    off_time=1200,
    brightness=0.7
);

display.entries = [
    ImageEntry(image="pic.bmp", x=0, y=0),
];

keyboard = KMKKeyboard();

macros = Macros();
keyboard.modules.append(macros);
keyboard.extensions.append(display);

keyboard.col_pins = (COL0, COL1, COL2, COL3);
keyboard.row_pins = (ROW0, ROW1, ROW2, ROW3);
keyboard.diode_orientation = DiodeOrientation.COL2ROW;

rgb = RGB(pixel_pin=board.D10, num_pixels=4, animation_speed=1, animation_mode=AnimationModes.SWIRL)
keyboard.extensions.append(rgb)

from kmk.modules.macros import Press, Release, Tap, Delay
from kmk.modules.mouse_keys import MouseKeys
keyboard.modules.append(MouseKeys())

A = KC.MACRO(
    Press(KC.LCMD),
    Tap(KC.T),
    Release(KC.LCMD)
);
B = KC.MACRO(
    Press(KC.LALT),
    Tap(KC.T),
    Release(KC.LALT)
);
C = KC.MACRO(
    Press(KC.LALT),
    Tap(KC.W),
    Release(KC.LALT)
);
D = KC.MACRO(
    Press(KC.LCMD),
    Tap(KC.Q),
    Release(KC.LCMD)
);

E = KC.MS_LT;
F = KC.MS_DN;
G = KC.MS_UP;
H = KC.MS_RT;

I = KC.MW_DN;
J = KC.MW_UP;
K = KC.MACRO(
    Press(KC.LCMD),
    Press(KC.LSFT),
    Tap(KC.F),
    Release(KC.LCMD),
    Release(KC.LSFT),
);
L = KC.LALT;

M = KC.MB_LMB;
N = KC.MB_RMB;
O = KC.MACRO(
    Press(KC.LCMD),
    Tap(KC.LEFT),
    Release(KC.LCMD)
);
P = KC.MACRO(
    Press(KC.LCMD),
    Tap(KC.RIGHT),
    Release(KC.LCMD)
);

keyboard.keymap = [
    [A, B, C, D,
     E, F, G, H,
     I, J, K, L,
     M, N, O, P],
];

if __name__ == '__main__':
    keyboard.go();

