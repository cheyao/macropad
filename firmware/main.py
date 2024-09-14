import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.modules.macros import Macros

keyboard = KMKKeyboard();

SAVE = KC.MACRO(":w");
QUIT = KC.MACRO(":wq");
QUIT = KC.MACRO(":wq");

macros = Macros();
keyboard.modules.append(macros);

keyboard.col_pins = (board.GP3, board.GP4, board.GP9, board.GP10);
keyboard.row_pins = (board.GP5, board.GP6, board.GP7, board.GP8);
keyboard.diode_orientation = DiodeOrientation.COL2ROW;

keyboard.keymap = [
    [SAVE, KC.TAB, KC.SCOLON, QUIT],
    [KC.R, KC.I, KC.A, KC.G],
    [KC.H, KC.J, KC.K, KC.L],
    [KC.LSHIFT, KC.LCTRL, KC.LALT, KC.ESC]
];

if __name__ == '__main__':
    keyboard.go();


