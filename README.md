# Macropad
Hello! This is my first time designing a PCB and a CAD.

<p align="middle">
    <img src="https://cloud-3jqi500oq-hack-club-bot.vercel.app/0screenshot_2024-10-06_at_3.50.53_pm.png" width="32%"/>
    <img src="https://cloud-3jqi500oq-hack-club-bot.vercel.app/1screenshot_2024-10-06_at_3.50.14_pm.png" width="32%"/>
    <img src="https://cloud-3jqi500oq-hack-club-bot.vercel.app/2screenshot_2024-10-06_at_3.43.34_pm.png" width="32%"/>
</p>

Designed using:

- KiCad - 6 revisions lol
- OpenSCAD then FreeCAD (Fusion 360 doesn't work :() Got like 400 constraints in my freecad project
- Python firmware

## BOM
- 1x SSD1306 128x64OLED (5V VCC, 3.3V logic, i2c)
- 16x Didode 1N4148
- 2x WS2812B LED
- 2x 4.7k resistor
- 16x Kailh Choc V2 switches
- 1 SEEEDUINO XIAO RP2040
- 4x same screws as orpheuspad and corresponding nuts
- 1x 10 pF capacitor (code 100, not obligatory)
- 1x 100 nF capacitor (code 104, not obligatory)

Interactive bom at `PCB/production/ibom.html`

## File list:

```
.
├── CAD                                         # 3D Files
│   ├── case.FCStd                              # Case
│   ├── plate.dxf                               # Keyboard plate
│   └── case.stl                                # Case stl output (Acrylic top if < 1.5mm thickness please)
├── PCB
│   ├── macropad.step                           # 3D Model of the board
│   ├── production                              # The output directory for production (Just send this folder to JLCPCB)
│   │   ├── Cyao_macropad_v3.0.zip              # Gerbers
│   │   ├── *.{csv,ipc}                         # Misc files for JLCPCB
│   │   └── ibom.html                           # Interactive bom for PCBAlex <3
│   └── third_party
│       ├── Kalih                               # The keys
│       ├── OPL_Kicad_Library                   # Seed footprint
│       ├── KiCad-SSD1306-128x64-master         # LCD
│       └── Seeeduino-xiao-rp2040-KiCAD-Library # Seed schema
└── firmware                                    # Directory of my own firmware
    ├── adafruit-circuitpython-seeeduino_xiao_rp2040-en_US-9.1.4.uf2 # Circuitpython firmware
    ├── main.py                                 # Main firmware
    ├── boot.py                                 # Boot options
    └── kmk                                     # kmk firmware
```

NOTE: I will need a 0.96” SSD1306 OLED screen that accepts 5V with 3.3V logic

The resistors are allso probably optional - but suggested by reddit

