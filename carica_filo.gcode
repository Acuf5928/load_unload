;┌──────────────────────────────────────────────────────────────────┐
;│						CARICA FILAMENTO							│
;└──────────────────────────────────────────────────────────────────┘
;Ver 2.0
;date: 20/06/2020
;original author: Dazero.it
;modified by: Acuf5928
;───────────────────────────────────────────────────────────────────
G21					;Unita millimetri
M82					;Posizione assoluta estrusore
;───────────────────────────────────────────────────────────────────
M117 E Riscaldamento...
G91                 ;Relative positioning
G1 Z50 F2400        ;Retract and raise Z
M104 S210			;Imposta temperatura hotend
M109 S210		    ;Imposta temperatura hotend e aspetta
;───────────────────────────────────────────────────────────────────
M0 Carica e premi OK	;Disabilitare con schermi TOUCH !
;───────────────────────────────────────────────────────────────────
M117 Caricamento...
G4 S1				;Pausa 1 secondo
G92 E0				;Reset posiszione estrusore
G1 E330 F3000		;Caricamento filamento
G92 E0				;Reset posiszione estrusore	
G1 E50 F1500		;Caricamento filamento ultima parte a velocià bassa
G92 E0				;Reset posiszione estrusore	
M400				;Aspetta fine movimenti
;───────────────────────────────────────────────────────────────────
G4 P500				;Pausa 500 ms
G1 E100 F100		;Spurgo filamento
M400				;Aspetta fine movimenti
G90                 ;Absolute positionning
;───────────────────────────────────────────────────────────────────
M117 Fine caricamento
