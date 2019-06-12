
_watch_dog_timer:

;WDT.c,1 :: 		void watch_dog_timer(){
;WDT.c,3 :: 		trisb.b0=0;
	BCF        TRISB+0, 0
;WDT.c,4 :: 		trisb.b1=0;
	BCF        TRISB+0, 1
;WDT.c,5 :: 		trisb.b2=0;
	BCF        TRISB+0, 2
;WDT.c,6 :: 		trisb.b3=0;
	BCF        TRISB+0, 3
;WDT.c,8 :: 		PSA_bit=1; //Prescaler active for wdt
	BSF        PSA_bit+0, BitPos(PSA_bit+0)
;WDT.c,11 :: 		PS0_bit=1;
	BSF        PS0_bit+0, BitPos(PS0_bit+0)
;WDT.c,12 :: 		PS1_bit=1;
	BSF        PS1_bit+0, BitPos(PS1_bit+0)
;WDT.c,13 :: 		PS2_bit=1;
	BSF        PS2_bit+0, BitPos(PS2_bit+0)
;WDT.c,15 :: 		}
L_end_watch_dog_timer:
	RETURN
; end of _watch_dog_timer

_main:

;WDT.c,16 :: 		void main(){
;WDT.c,17 :: 		watch_dog_timer();
	CALL       _watch_dog_timer+0
;WDT.c,18 :: 		portb.b0 = 1;
	BSF        PORTB+0, 0
;WDT.c,19 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
;WDT.c,20 :: 		portb.b0 = 0;
	BCF        PORTB+0, 0
;WDT.c,21 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
;WDT.c,22 :: 		while(1){
L_main2:
;WDT.c,23 :: 		portb.b1 = 1;
	BSF        PORTB+0, 1
;WDT.c,24 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;WDT.c,25 :: 		portb.b1 = 0;
	BCF        PORTB+0, 1
;WDT.c,26 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;WDT.c,27 :: 		portb.b2 = 1;
	BSF        PORTB+0, 2
;WDT.c,28 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;WDT.c,29 :: 		portb.b2 = 0;
	BCF        PORTB+0, 2
;WDT.c,30 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;WDT.c,31 :: 		}
	GOTO       L_main2
;WDT.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
