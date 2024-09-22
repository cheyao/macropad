# Macropad
Hello! This is my first time designing a PCB and a CAD.

Fingers crossed everything works fine

<p align="middle">
  <img src="https://cloud-54hh12yzw-hack-club-bot.vercel.app/0screenshot_2024-09-20_at_8.47.37_pm.png" width="32%"/>
  <img src="https://cloud-54hh12yzw-hack-club-bot.vercel.app/1screenshot_2024-09-20_at_5.44.05_pm.png" width="32%"/> 
  <img src="https://cloud-54hh12yzw-hack-club-bot.vercel.app/2screenshot_2024-09-20_at_5.43.58_pm.png" width="32%"/>
</p>

<img src="https://cloud-8usq0iiv2-hack-club-bot.vercel.app/0screenshot_2024-09-22_at_9.38.49_am.png"/>

## File list:

```
.
├── CAD                                         # 3D Files
│   ├── cover.scad                              # Cover
│   ├── case.scad                               # Case
│   ├── ...                                     # Some libraries
│   ├── case.stl                                # Case stl output
│   └── cover.stl                               # Cover stl output (Acrylic please)
├── PCB
│   ├── macropad.step                           # 3D Model of the board
│   ├── production                              # The output directory for production (Just send this folder to JLCPCB)
│   │   ├── Cyao_macropad_v2.1.zip              # Gerbers
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

