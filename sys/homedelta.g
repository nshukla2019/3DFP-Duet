; homedelta.g
; called to home all towers on a delta printer
;
; generated by RepRapFirmware Configuration Tool v3.3.13 on Mon Sep 19 2022 16:36:43 GMT-0400 (Eastern Daylight Time)
                       ; coordinate positioning (fix wording later)


;G90

;G1 X0 Y0 Z250 F1800 ; H2 --> allows movement before axis is homed
M98 P"my_test.g"

;G92 X0 Y0 Z250

;G28 X0 Y0 Z0


;*** Slow homing has been configured. Change F180 to F1800 below when your configuration is working
;G1 H1 X205 Y205 Z205 F180 ; move all towers to the high end stopping at the endstops (first pass)
;G1 H2 X-5 Y-5 Z-5 F1800   ; go down a few mm
;*** Slow homing has been configured. Change F180 to F360 below when your configuration is working
;G1 H1 X10 Y10 Z10 F180    ; move all towers up once more (second pass)
;G1 Z-5 F6000              ; move down a few mm so that the nozzle can be centred
;G90                       ; absolute positioning
;G1 X0 Y0 F6000            ; move X+Y to the centre

