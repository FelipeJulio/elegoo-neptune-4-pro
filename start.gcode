; Elegoo Neptune 4 Pro - Start G-code
M220 S100 ; Velocidade 100%
M221 S100 ; Fluxo 100%
M104 S140 ; Pré-aquecer bico
M190 S{material_bed_temperature_layer_0} ; Aquecer mesa
M109 S{material_print_temperature_layer_0} ; Aquecer bico
G28 ; Home all
;G29 ; Mesh leveling (descomente se ativado)
G92 E0
G1 Z4.0 F3000
G1 X1.1 Y20 Z0.28 F5000.0
G1 X1.1 Y80 Z0.28 F1500.0 E10
G1 X1.4 Y80 Z0.28 F5000.0
G1 X1.4 Y20 Z0.28 F1500.0 E20
G92 E0
G1 Z2.0 F3000
