# Elegoo Neptune 4 Pro - Printer Settings for Cura

## Printer

### Printer Settings
| Setting              | Value    |
|----------------------|---------|
| X (Width)           | 235.0 mm |
| Y (Depth)           | 235.0 mm |
| Z (Height)          | 270.0 mm |
| Build plate shape   | Rectangular |
| Origin at center    | ❌ (Unchecked) |
| Heated bed         | ✅ (Checked) |
| Heated build volume | ❌ (Unchecked) |
| G-code flavor       | Marlin |

### Printhead Settings
| Setting                      | Value  |
|------------------------------|--------|
| X min                        | -20 mm  |
| Y min                        | -10 mm  |
| X max                        | 10 mm  |
| Y max                        | 10 mm  |
| Gantry Height                | 270.0 mm |
| Number of Extruders          | 1       |
| Apply Extruder offsets to GCode | ✅ (Checked) |

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
| Setting                      | Value  |
|------------------------------|--------|
| Nozzle size                  | 0.4 mm  |
| Compatible material diameter  | 1.75 mm |
| Nozzle offset X               | 0.0 mm  |
| Nozzle offset Y               | 0.0 mm  |
| Cooling Fan Number            | 0       |
| Extruder Start G-code duration | 0.0 s   |
| Extruder End G-code duration   | 0.0 s   |

### Start G-code

```plaintext
Leave empty
```

### End G-code

```plaintext
Leave empty
```

## Profiles

### PETG

```plaintext
petg.curaprofile
```

This PETG profile for the Elegoo Neptune 4 Pro balances high speed (160 mm/s) and quality. It uses 0.2 mm layers, 85°C bed temperature, and 240°C nozzle temperature. Features include 1.5 mm retraction, tree supports, 25% triangular infill, and 1.2 mm wall thickness. The first layer prints slowly (20 mm/s) for better adhesion, while fast travel speeds (250 mm/s) optimize print time.