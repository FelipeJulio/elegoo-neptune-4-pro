# Elegoo Neptune 4 Pro - Settings for Cura 5.10

## Printer

### Printer Settings

| Setting             | Value       |
| ------------------- | ----------- |
| X (Width)           | 235.0 mm    |
| Y (Depth)           | 235.0 mm    |
| Z (Height)          | 270.0 mm    |
| Build plate shape   | Rectangular |
| Origin at center    | (Unchecked) |
| Heated bed          | (Checked)   |
| Heated build volume | (Unchecked) |
| G-code flavor       | Marlin      |

### Printhead Settings

| Setting                         | Value     |
| ------------------------------- | --------- |
| X min                           | -20 mm    |
| Y min                           | -10 mm    |
| X max                           | 10 mm     |
| Y max                           | 10 mm     |
| Gantry Height                   | 270.0 mm  |
| Number of Extruders             | 1         |
| Apply Extruder offsets to GCode | (Checked) |

### Start G-code

```plaintext
G28 ;home
G92 E0 ;Reset Extruder
G1 Z4.0 F3000 ;Move Z Axis up
G92 E0 ;Reset Extruder
G1 X1.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 X1.1 Y80.0 Z0.28 F1500.0 E10 ;Draw the first line
G1 X1.4 Y80.0 Z0.28 F5000.0 ;Move to side a little
G1 X1.4 Y20 Z0.28 F1500.0 E20 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
```

### End G-code

```plaintext
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F1600 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z2 ;Raise Z more
G90 ;Absolute positioning
G1 X0 Y{machine_depth} ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed
M84 X Y E ;Disable all steppers but Z
```

## Nozzle

### Nozzle Settings

| Setting                        | Value   |
| ------------------------------ | ------- |
| Nozzle size                    | 0.4 mm  |
| Compatible material diameter   | 1.75 mm |
| Nozzle offset X                | 0.0 mm  |
| Nozzle offset Y                | 0.0 mm  |
| Cooling Fan Number             | 0       |
| Extruder Start G-code duration | 0.0 s   |
| Extruder End G-code duration   | 0.0 s   |

### Extruder Prestart G-code

```plaintext
Leave empty
```

### Extruder Start G-code

```plaintext
Leave empty
```

### Extruder End G-code

```plaintext
Leave empty
```

## Profiles

### PETG

```plaintext
petg.curaprofile
```

This **PETG profile for the Elegoo Neptune 4 Pro** is tuned to balance print quality and high-speed performance.

- **Layer Height:** 0.2 mm (0.26 mm first layer)
- **Line Width:** 0.42 mm
- **Infill:** 20% Gyroid
- **Nozzle Temp:** 235 °C
- **Bed Temp:** 70 °C
- **Flow:** 100% across all walls and infill

### Speed

- **Average Print Speed:** 180 mm/s
- **Walls:** 70–120 mm/s
- **Outer Walls:** 70 mm/s (better surface finish)
- **Travel Speed:** 220 mm/s
- **First Layers:** 30 mm/s for adhesion

### Retraction

- **Distance:** 1 mm
- **Speed:** 40 mm/s

### Acceleration

- **Travel:** up to 5000 mm/s²
- **Infill:** up to 4500 mm/s²
- **Walls & First Layers:** reduced to minimize ringing

---

**Overall:** a **fast, performance-oriented profile** with careful tuning of outer walls and initial layers to maintain strong adhesion and visual quality while reducing print times.
