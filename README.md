# Macropad
Hello! This is my first time designing a PCB and a CAD.

Fingers crossed everything works fine

<p align="middle">
    <img src="https://cloud-3jqi500oq-hack-club-bot.vercel.app/0screenshot_2024-10-06_at_3.50.53_pm.png" width="32%"/>
    <img src="https://cloud-3jqi500oq-hack-club-bot.vercel.app/1screenshot_2024-10-06_at_3.50.14_pm.png" width="32%"/>
    <img src="https://cloud-3jqi500oq-hack-club-bot.vercel.app/2screenshot_2024-10-06_at_3.43.34_pm.png" width="32%"/>
</p>

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

The resistors are 4.7k ohm ones

The resistors are allso probably optional - but suggested by reddit

