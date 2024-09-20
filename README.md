# Macropad
Hello! This is my first time designing a PCB and a CAD.

I'm not adding too many features, playing it safe. Better getting something plain but working, instead of something extravagant and broken.

<p align="middle">
  <img src="https://cloud-jupbf1az2-hack-club-bot.vercel.app/1screenshot_2024-09-15_at_10.56.55_am.png" width="32%"/>
  <img src="https://cloud-jupbf1az2-hack-club-bot.vercel.app/2screenshot_2024-09-15_at_10.56.45_am.png" width="32%"/> 
  <img src="https://cloud-jupbf1az2-hack-club-bot.vercel.app/0screenshot_2024-09-15_at_10.57.57_am.png" width="32%"/>
</p>

Fingers crossed that everything works

```
.
├── CAD                                         # 3D Files
│   ├── cover.scad                              # Cover
│   ├── case.scad                               # Case
│   ├── ...                                     # Some libraries
│   └── *.stl                                   # STL output
├── PCB
│   ├── macropad-bom.csv                        # BOM
│   ├── gerbers                                 # Gerbers
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

