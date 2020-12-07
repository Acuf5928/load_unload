;┌──────────────────────────────────────────────────────────────────┐
;│						CARICA FILAMENTO							│
;└──────────────────────────────────────────────────────────────────┘
;Ver 2.0
;date: 20/06/2020
;author: Dazero.it
;───────────────────────────────────────────────────────────────────
G21					;Unita millimetri
M82					;Posizione assoluta estrusore
;───────────────────────────────────────────────────────────────────
M117 E Riscaldamento...
M104 S200			;Imposta temperatura hotend
M109 S200		;Imposta temperatura hotend e aspetta
;───────────────────────────────────────────────────────────────────
M0 Carica e premi OK	;Disabilitare con schermi TOUCH !
;───────────────────────────────────────────────────────────────────
M117 Caricamento...
G4 S1				;Pausa 1 secondo
G92 E0				;Reset posiszione estrusore
G1 E350 F3000		;Caricamento filamento
G92 E0				;Reset posiszione estrusore	
G1 E50 F1500		;Caricamento filamento ultima parte a velocià bassa
G92 E0				;Reset posiszione estrusore	
M400				;Aspetta fine movimenti
;───────────────────────────────────────────────────────────────────
G4 P500				;Pausa 500 ms
G1 E100 F200		;Spurgo filamento
M400				;Aspetta fine movimenti
;───────────────────────────────────────────────────────────────────
M117 Fine caricamento
