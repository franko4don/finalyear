
_lookup:

;receiver.c,11 :: 		void lookup(int channel){
;receiver.c,12 :: 		switch(channel){
	GOTO       L_lookup0
;receiver.c,13 :: 		case 0: PORTD.F0^=1;
L_lookup2:
	MOVLW      1
	XORWF      PORTD+0, 1
;receiver.c,14 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_lookup3
;receiver.c,15 :: 		transmitSignal(encodeSignal(0));
	CLRF       FARG_encodeSignal_k+0
	CLRF       FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,16 :: 		}else{
	GOTO       L_lookup4
L_lookup3:
;receiver.c,17 :: 		transmitSignal(11010101);
	MOVLW      53
	MOVWF      FARG_transmitSignal_m+0
	MOVLW      0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,18 :: 		}
L_lookup4:
;receiver.c,19 :: 		break;
	GOTO       L_lookup1
;receiver.c,21 :: 		case 1: PORTD.F1^=1;
L_lookup5:
	MOVLW      2
	XORWF      PORTD+0, 1
;receiver.c,22 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_lookup6
;receiver.c,23 :: 		transmitSignal(encodeSignal(1));
	MOVLW      1
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,24 :: 		}
	GOTO       L_lookup7
L_lookup6:
;receiver.c,26 :: 		transmitSignal(~encodeSignal(1));
	MOVLW      1
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	COMF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	COMF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,27 :: 		}
L_lookup7:
;receiver.c,28 :: 		break;
	GOTO       L_lookup1
;receiver.c,29 :: 		case 2: PORTD.F2^=1;
L_lookup8:
	MOVLW      4
	XORWF      PORTD+0, 1
;receiver.c,30 :: 		if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_lookup9
;receiver.c,31 :: 		transmitSignal(encodeSignal(2));
	MOVLW      2
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,32 :: 		}
	GOTO       L_lookup10
L_lookup9:
;receiver.c,34 :: 		transmitSignal(~encodeSignal(2));
	MOVLW      2
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	COMF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	COMF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,35 :: 		}
L_lookup10:
;receiver.c,36 :: 		break;
	GOTO       L_lookup1
;receiver.c,37 :: 		case 3: PORTD.F3^=1;
L_lookup11:
	MOVLW      8
	XORWF      PORTD+0, 1
;receiver.c,38 :: 		if(PORTD.F3==1){
	BTFSS      PORTD+0, 3
	GOTO       L_lookup12
;receiver.c,39 :: 		transmitSignal(encodeSignal(3));
	MOVLW      3
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,40 :: 		}
L_lookup12:
;receiver.c,41 :: 		break;
	GOTO       L_lookup1
;receiver.c,42 :: 		case 4: PORTD.F4^=1;
L_lookup13:
	MOVLW      16
	XORWF      PORTD+0, 1
;receiver.c,43 :: 		if(PORTD.F4==1){
	BTFSS      PORTD+0, 4
	GOTO       L_lookup14
;receiver.c,44 :: 		transmitSignal(encodeSignal(4));
	MOVLW      4
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,45 :: 		}
L_lookup14:
;receiver.c,46 :: 		break;
	GOTO       L_lookup1
;receiver.c,47 :: 		case 5: PORTD.F5^=1;
L_lookup15:
	MOVLW      32
	XORWF      PORTD+0, 1
;receiver.c,48 :: 		if(PORTD.F5==1){
	BTFSS      PORTD+0, 5
	GOTO       L_lookup16
;receiver.c,49 :: 		transmitSignal(encodeSignal(5));
	MOVLW      5
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,50 :: 		}
L_lookup16:
;receiver.c,51 :: 		break;
	GOTO       L_lookup1
;receiver.c,52 :: 		case 6: PORTD.F6^=1;
L_lookup17:
	MOVLW      64
	XORWF      PORTD+0, 1
;receiver.c,53 :: 		if(PORTD.F6==1){
	BTFSS      PORTD+0, 6
	GOTO       L_lookup18
;receiver.c,54 :: 		transmitSignal(encodeSignal(6));
	MOVLW      6
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,55 :: 		}
L_lookup18:
;receiver.c,56 :: 		break;
	GOTO       L_lookup1
;receiver.c,57 :: 		case 7: PORTD.F7^=1;
L_lookup19:
	MOVLW      128
	XORWF      PORTD+0, 1
;receiver.c,58 :: 		if(PORTD.F7==1){
	BTFSS      PORTD+0, 7
	GOTO       L_lookup20
;receiver.c,59 :: 		transmitSignal(encodeSignal(7));
	MOVLW      7
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,60 :: 		}
L_lookup20:
;receiver.c,61 :: 		break;
	GOTO       L_lookup1
;receiver.c,62 :: 		case 8: PORTC.F0^=1;
L_lookup21:
	MOVLW      1
	XORWF      PORTC+0, 1
;receiver.c,63 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_lookup22
;receiver.c,64 :: 		transmitSignal(encodeSignal(8));
	MOVLW      8
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,65 :: 		}
L_lookup22:
;receiver.c,66 :: 		break;
	GOTO       L_lookup1
;receiver.c,67 :: 		case 9: PORTC.F1^=1;
L_lookup23:
	MOVLW      2
	XORWF      PORTC+0, 1
;receiver.c,68 :: 		if(PORTC.F1==1){
	BTFSS      PORTC+0, 1
	GOTO       L_lookup24
;receiver.c,69 :: 		transmitSignal(encodeSignal(9));
	MOVLW      9
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,70 :: 		}
L_lookup24:
;receiver.c,71 :: 		break;
	GOTO       L_lookup1
;receiver.c,72 :: 		case 10: PORTC.F2^=1;
L_lookup25:
	MOVLW      4
	XORWF      PORTC+0, 1
;receiver.c,73 :: 		if(PORTC.F2==1){
	BTFSS      PORTC+0, 2
	GOTO       L_lookup26
;receiver.c,74 :: 		transmitSignal(encodeSignal(10));
	MOVLW      10
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,75 :: 		}
L_lookup26:
;receiver.c,76 :: 		break;
	GOTO       L_lookup1
;receiver.c,77 :: 		case 11: PORTC.F3^=1;
L_lookup27:
	MOVLW      8
	XORWF      PORTC+0, 1
;receiver.c,78 :: 		if(PORTC.F3==1){
	BTFSS      PORTC+0, 3
	GOTO       L_lookup28
;receiver.c,79 :: 		transmitSignal(encodeSignal(11));
	MOVLW      11
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,80 :: 		}
L_lookup28:
;receiver.c,81 :: 		break;
	GOTO       L_lookup1
;receiver.c,82 :: 		case 12: PORTC.F4^=1;
L_lookup29:
	MOVLW      16
	XORWF      PORTC+0, 1
;receiver.c,83 :: 		if(PORTC.F4==1){
	BTFSS      PORTC+0, 4
	GOTO       L_lookup30
;receiver.c,84 :: 		transmitSignal(encodeSignal(12));
	MOVLW      12
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,85 :: 		}
L_lookup30:
;receiver.c,86 :: 		break;
	GOTO       L_lookup1
;receiver.c,87 :: 		case 13: PORTC.F5^=1;
L_lookup31:
	MOVLW      32
	XORWF      PORTC+0, 1
;receiver.c,88 :: 		if(PORTC.F5==1){
	BTFSS      PORTC+0, 5
	GOTO       L_lookup32
;receiver.c,89 :: 		transmitSignal(encodeSignal(13));
	MOVLW      13
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,90 :: 		}
L_lookup32:
;receiver.c,91 :: 		break;
	GOTO       L_lookup1
;receiver.c,92 :: 		case 14: PORTC.F6^=1;
L_lookup33:
	MOVLW      64
	XORWF      PORTC+0, 1
;receiver.c,93 :: 		if(PORTC.F6==1){
	BTFSS      PORTC+0, 6
	GOTO       L_lookup34
;receiver.c,94 :: 		transmitSignal(encodeSignal(14));
	MOVLW      14
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,95 :: 		}
L_lookup34:
;receiver.c,96 :: 		break;
	GOTO       L_lookup1
;receiver.c,97 :: 		case 15: PORTC.F7^=1;
L_lookup35:
	MOVLW      128
	XORWF      PORTC+0, 1
;receiver.c,98 :: 		if(PORTC.F7==1){
	BTFSS      PORTC+0, 7
	GOTO       L_lookup36
;receiver.c,99 :: 		transmitSignal(encodeSignal(15));
	MOVLW      15
	MOVWF      FARG_encodeSignal_k+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_k+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_m+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_m+1
	CALL       _transmitSignal+0
;receiver.c,100 :: 		}
L_lookup36:
;receiver.c,101 :: 		break;
	GOTO       L_lookup1
;receiver.c,102 :: 		}
L_lookup0:
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup85
	MOVLW      0
	XORWF      FARG_lookup_channel+0, 0
L__lookup85:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup2
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup86
	MOVLW      1
	XORWF      FARG_lookup_channel+0, 0
L__lookup86:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup5
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup87
	MOVLW      2
	XORWF      FARG_lookup_channel+0, 0
L__lookup87:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup8
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup88
	MOVLW      3
	XORWF      FARG_lookup_channel+0, 0
L__lookup88:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup11
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup89
	MOVLW      4
	XORWF      FARG_lookup_channel+0, 0
L__lookup89:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup13
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup90
	MOVLW      5
	XORWF      FARG_lookup_channel+0, 0
L__lookup90:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup15
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup91
	MOVLW      6
	XORWF      FARG_lookup_channel+0, 0
L__lookup91:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup17
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup92
	MOVLW      7
	XORWF      FARG_lookup_channel+0, 0
L__lookup92:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup19
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup93
	MOVLW      8
	XORWF      FARG_lookup_channel+0, 0
L__lookup93:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup21
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup94
	MOVLW      9
	XORWF      FARG_lookup_channel+0, 0
L__lookup94:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup23
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup95
	MOVLW      10
	XORWF      FARG_lookup_channel+0, 0
L__lookup95:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup25
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup96
	MOVLW      11
	XORWF      FARG_lookup_channel+0, 0
L__lookup96:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup27
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup97
	MOVLW      12
	XORWF      FARG_lookup_channel+0, 0
L__lookup97:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup29
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup98
	MOVLW      13
	XORWF      FARG_lookup_channel+0, 0
L__lookup98:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup31
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup99
	MOVLW      14
	XORWF      FARG_lookup_channel+0, 0
L__lookup99:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup33
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup100
	MOVLW      15
	XORWF      FARG_lookup_channel+0, 0
L__lookup100:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup35
L_lookup1:
;receiver.c,103 :: 		delay3ms();
	CALL       _delay3ms+0
;receiver.c,104 :: 		}
L_end_lookup:
	RETURN
; end of _lookup

_bitRead:

;receiver.c,106 :: 		int bitRead(int signal,int bitPosition){
;receiver.c,107 :: 		bitManipulate=0x01;
	MOVLW      1
	MOVWF      _bitManipulate+0
	MOVLW      0
	MOVWF      _bitManipulate+1
;receiver.c,108 :: 		bitManipulate<<=bitPosition;
	MOVF       FARG_bitRead_bitPosition+0, 0
	MOVWF      R2+0
	MOVF       _bitManipulate+0, 0
	MOVWF      R0+0
	MOVF       _bitManipulate+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bitRead102:
	BTFSC      STATUS+0, 2
	GOTO       L__bitRead103
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bitRead102
L__bitRead103:
	MOVF       R0+0, 0
	MOVWF      _bitManipulate+0
	MOVF       R0+1, 0
	MOVWF      _bitManipulate+1
;receiver.c,109 :: 		return (signal&bitManipulate);
	MOVF       FARG_bitRead_signal+0, 0
	ANDWF      R0+0, 1
	MOVF       FARG_bitRead_signal+1, 0
	ANDWF      R0+1, 1
;receiver.c,110 :: 		}
L_end_bitRead:
	RETURN
; end of _bitRead

_bitWrite:

;receiver.c,112 :: 		void bitWrite(int position,int shifts){
;receiver.c,113 :: 		shifts<<=position;
	MOVF       FARG_bitWrite_position+0, 0
	MOVWF      R2+0
	MOVF       FARG_bitWrite_shifts+0, 0
	MOVWF      R0+0
	MOVF       FARG_bitWrite_shifts+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bitWrite105:
	BTFSC      STATUS+0, 2
	GOTO       L__bitWrite106
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bitWrite105
L__bitWrite106:
	MOVF       R0+0, 0
	MOVWF      FARG_bitWrite_shifts+0
	MOVF       R0+1, 0
	MOVWF      FARG_bitWrite_shifts+1
;receiver.c,114 :: 		encodedSignal^=shifts;
	MOVF       R0+0, 0
	XORWF      _encodedSignal+0, 1
	MOVF       R0+1, 0
	XORWF      _encodedSignal+1, 1
;receiver.c,115 :: 		}
L_end_bitWrite:
	RETURN
; end of _bitWrite

_delay3ms:

;receiver.c,117 :: 		void delay3ms(){
;receiver.c,118 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,119 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,120 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,121 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,122 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,123 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,124 :: 		while(1){
L_delay3ms37:
;receiver.c,125 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay3ms39
;receiver.c,126 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,127 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,128 :: 		}
L_delay3ms39:
;receiver.c,129 :: 		if(counter==93)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay3ms108
	MOVLW      93
	XORWF      _counter+0, 0
L__delay3ms108:
	BTFSS      STATUS+0, 2
	GOTO       L_delay3ms40
	GOTO       L_delay3ms38
L_delay3ms40:
;receiver.c,130 :: 		}
	GOTO       L_delay3ms37
L_delay3ms38:
;receiver.c,133 :: 		}
L_end_delay3ms:
	RETURN
; end of _delay3ms

_delay500us:

;receiver.c,135 :: 		void delay500us(){
;receiver.c,136 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,137 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,138 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,139 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,140 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,141 :: 		while(1){
L_delay500us41:
;receiver.c,142 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay500us43
;receiver.c,143 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,144 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,145 :: 		}
L_delay500us43:
;receiver.c,146 :: 		if(counter==15)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay500us110
	MOVLW      15
	XORWF      _counter+0, 0
L__delay500us110:
	BTFSS      STATUS+0, 2
	GOTO       L_delay500us44
	GOTO       L_delay500us42
L_delay500us44:
;receiver.c,147 :: 		}
	GOTO       L_delay500us41
L_delay500us42:
;receiver.c,150 :: 		}
L_end_delay500us:
	RETURN
; end of _delay500us

_delay725us:

;receiver.c,152 :: 		void delay725us(){
;receiver.c,153 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,154 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,155 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,156 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,157 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,158 :: 		while(1){
L_delay725us45:
;receiver.c,159 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay725us47
;receiver.c,160 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,161 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,162 :: 		}
L_delay725us47:
;receiver.c,163 :: 		if(counter==23)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay725us112
	MOVLW      23
	XORWF      _counter+0, 0
L__delay725us112:
	BTFSS      STATUS+0, 2
	GOTO       L_delay725us48
	GOTO       L_delay725us46
L_delay725us48:
;receiver.c,164 :: 		}
	GOTO       L_delay725us45
L_delay725us46:
;receiver.c,167 :: 		}
L_end_delay725us:
	RETURN
; end of _delay725us

_delay20us:

;receiver.c,169 :: 		void delay20us(){
;receiver.c,170 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,171 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,172 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,173 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,174 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,175 :: 		while(1){
L_delay20us49:
;receiver.c,176 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay20us51
;receiver.c,177 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,178 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,179 :: 		}
L_delay20us51:
;receiver.c,180 :: 		if(counter==6)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay20us114
	MOVLW      6
	XORWF      _counter+0, 0
L__delay20us114:
	BTFSS      STATUS+0, 2
	GOTO       L_delay20us52
	GOTO       L_delay20us50
L_delay20us52:
;receiver.c,181 :: 		}
	GOTO       L_delay20us49
L_delay20us50:
;receiver.c,184 :: 		}
L_end_delay20us:
	RETURN
; end of _delay20us

_reception:

;receiver.c,186 :: 		void reception(){
;receiver.c,188 :: 		int decoded_signal=0;
	CLRF       reception_decoded_signal_L0+0
	CLRF       reception_decoded_signal_L0+1
;receiver.c,189 :: 		for(i=0; i<10; i++){
	CLRF       reception_i_L0+0
	CLRF       reception_i_L0+1
L_reception53:
	MOVLW      128
	XORWF      reception_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception116
	MOVLW      10
	SUBWF      reception_i_L0+0, 0
L__reception116:
	BTFSC      STATUS+0, 0
	GOTO       L_reception54
;receiver.c,190 :: 		delay20us();
	CALL       _delay20us+0
;receiver.c,191 :: 		good=1;
	MOVLW      1
	MOVWF      _good+0
	MOVLW      0
	MOVWF      _good+1
;receiver.c,192 :: 		if(PORTB.F0==0){
	BTFSC      PORTB+0, 0
	GOTO       L_reception56
;receiver.c,193 :: 		good=0;
	CLRF       _good+0
	CLRF       _good+1
;receiver.c,194 :: 		i=100;
	MOVLW      100
	MOVWF      reception_i_L0+0
	MOVLW      0
	MOVWF      reception_i_L0+1
;receiver.c,195 :: 		}
L_reception56:
;receiver.c,189 :: 		for(i=0; i<10; i++){
	INCF       reception_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       reception_i_L0+1, 1
;receiver.c,196 :: 		}
	GOTO       L_reception53
L_reception54:
;receiver.c,198 :: 		if(good==1){
	MOVLW      0
	XORWF      _good+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception117
	MOVLW      1
	XORWF      _good+0, 0
L__reception117:
	BTFSS      STATUS+0, 2
	GOTO       L_reception57
;receiver.c,199 :: 		while(1){
L_reception58:
;receiver.c,200 :: 		if(PORTB.F0==0){
	BTFSC      PORTB+0, 0
	GOTO       L_reception60
;receiver.c,201 :: 		delay725us();
	CALL       _delay725us+0
;receiver.c,203 :: 		for(i=0; i<8; i++){
	CLRF       reception_i_L0+0
	CLRF       reception_i_L0+1
L_reception61:
	MOVLW      128
	XORWF      reception_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception118
	MOVLW      8
	SUBWF      reception_i_L0+0, 0
L__reception118:
	BTFSC      STATUS+0, 0
	GOTO       L_reception62
;receiver.c,204 :: 		test=i%2;
	MOVLW      2
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       reception_i_L0+0, 0
	MOVWF      R0+0
	MOVF       reception_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _test+0
	MOVF       R0+1, 0
	MOVWF      _test+1
;receiver.c,206 :: 		if(PORTB.F0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_reception64
;receiver.c,207 :: 		if(test==0){
	MOVLW      0
	XORWF      _test+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception119
	MOVLW      0
	XORWF      _test+0, 0
L__reception119:
	BTFSS      STATUS+0, 2
	GOTO       L_reception65
;receiver.c,208 :: 		decoded_signal^=0x01;
	MOVLW      1
	XORWF      reception_decoded_signal_L0+0, 1
	MOVLW      0
	XORWF      reception_decoded_signal_L0+1, 1
;receiver.c,209 :: 		decoded_signal<<=1;
	RLF        reception_decoded_signal_L0+0, 1
	RLF        reception_decoded_signal_L0+1, 1
	BCF        reception_decoded_signal_L0+0, 0
;receiver.c,211 :: 		}
L_reception65:
;receiver.c,212 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;receiver.c,213 :: 		}else{
	GOTO       L_reception66
L_reception64:
;receiver.c,214 :: 		if(test==0){
	MOVLW      0
	XORWF      _test+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception120
	MOVLW      0
	XORWF      _test+0, 0
L__reception120:
	BTFSS      STATUS+0, 2
	GOTO       L_reception67
;receiver.c,215 :: 		decoded_signal^=0x00;
;receiver.c,216 :: 		decoded_signal<<=1;
	RLF        reception_decoded_signal_L0+0, 1
	RLF        reception_decoded_signal_L0+1, 1
	BCF        reception_decoded_signal_L0+0, 0
;receiver.c,218 :: 		}
L_reception67:
;receiver.c,219 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;receiver.c,220 :: 		}
L_reception66:
;receiver.c,222 :: 		delay500us();
	CALL       _delay500us+0
;receiver.c,203 :: 		for(i=0; i<8; i++){
	INCF       reception_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       reception_i_L0+1, 1
;receiver.c,224 :: 		}
	GOTO       L_reception61
L_reception62:
;receiver.c,225 :: 		break;
	GOTO       L_reception59
;receiver.c,226 :: 		}
L_reception60:
;receiver.c,227 :: 		}
	GOTO       L_reception58
L_reception59:
;receiver.c,229 :: 		decoded_signal>>=1;
	MOVF       reception_decoded_signal_L0+0, 0
	MOVWF      R0+0
	MOVF       reception_decoded_signal_L0+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
	MOVF       R0+0, 0
	MOVWF      reception_decoded_signal_L0+0
	MOVF       R0+1, 0
	MOVWF      reception_decoded_signal_L0+1
;receiver.c,232 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;receiver.c,234 :: 		lookup(decoded_signal);
	MOVF       R0+0, 0
	MOVWF      FARG_lookup_channel+0
	MOVF       R0+1, 0
	MOVWF      FARG_lookup_channel+1
	CALL       _lookup+0
;receiver.c,235 :: 		}
L_reception57:
;receiver.c,237 :: 		}
L_end_reception:
	RETURN
; end of _reception

_preamble:

;receiver.c,239 :: 		void preamble(){
;receiver.c,241 :: 		for(i=0; i<20; i++){
	CLRF       preamble_i_L0+0
	CLRF       preamble_i_L0+1
L_preamble68:
	MOVLW      128
	XORWF      preamble_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__preamble122
	MOVLW      20
	SUBWF      preamble_i_L0+0, 0
L__preamble122:
	BTFSC      STATUS+0, 0
	GOTO       L_preamble69
;receiver.c,242 :: 		PORTB.F2=1;
	BSF        PORTB+0, 2
;receiver.c,243 :: 		delay500us();
	CALL       _delay500us+0
;receiver.c,244 :: 		PORTB.F2=0;
	BCF        PORTB+0, 2
;receiver.c,245 :: 		delay500us();
	CALL       _delay500us+0
;receiver.c,241 :: 		for(i=0; i<20; i++){
	INCF       preamble_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       preamble_i_L0+1, 1
;receiver.c,246 :: 		}
	GOTO       L_preamble68
L_preamble69:
;receiver.c,247 :: 		}
L_end_preamble:
	RETURN
; end of _preamble

_transmitSignal:

;receiver.c,249 :: 		void transmitSignal(int signal){
;receiver.c,252 :: 		delay3ms();
	CALL       _delay3ms+0
;receiver.c,253 :: 		preamble();
	CALL       _preamble+0
;receiver.c,254 :: 		PORTB.F2=1;
	BSF        PORTB+0, 2
;receiver.c,255 :: 		delay3ms();
	CALL       _delay3ms+0
;receiver.c,256 :: 		PORTB.F2=0;
	BCF        PORTB+0, 2
;receiver.c,257 :: 		delay500us();
	CALL       _delay500us+0
;receiver.c,258 :: 		for(j=7; j>=0; j--){
	MOVLW      7
	MOVWF      transmitSignal_j_L0+0
	MOVLW      0
	MOVWF      transmitSignal_j_L0+1
L_transmitSignal71:
	MOVLW      128
	XORWF      transmitSignal_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal124
	MOVLW      0
	SUBWF      transmitSignal_j_L0+0, 0
L__transmitSignal124:
	BTFSS      STATUS+0, 0
	GOTO       L_transmitSignal72
;receiver.c,259 :: 		if(bitRead(signal,j)!=0){
	MOVF       FARG_transmitSignal_signal+0, 0
	MOVWF      FARG_bitRead_signal+0
	MOVF       FARG_transmitSignal_signal+1, 0
	MOVWF      FARG_bitRead_signal+1
	MOVF       transmitSignal_j_L0+0, 0
	MOVWF      FARG_bitRead_bitPosition+0
	MOVF       transmitSignal_j_L0+1, 0
	MOVWF      FARG_bitRead_bitPosition+1
	CALL       _bitRead+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal125
	MOVLW      0
	XORWF      R0+0, 0
L__transmitSignal125:
	BTFSC      STATUS+0, 2
	GOTO       L_transmitSignal74
;receiver.c,260 :: 		PORTB.F2=1;
	BSF        PORTB+0, 2
;receiver.c,261 :: 		}else{
	GOTO       L_transmitSignal75
L_transmitSignal74:
;receiver.c,262 :: 		PORTB.F2=0;
	BCF        PORTB+0, 2
;receiver.c,263 :: 		}
L_transmitSignal75:
;receiver.c,264 :: 		delay500us();
	CALL       _delay500us+0
;receiver.c,258 :: 		for(j=7; j>=0; j--){
	MOVLW      1
	SUBWF      transmitSignal_j_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       transmitSignal_j_L0+1, 1
;receiver.c,265 :: 		}
	GOTO       L_transmitSignal71
L_transmitSignal72:
;receiver.c,266 :: 		PORTB.F2=0;
	BCF        PORTB+0, 2
;receiver.c,268 :: 		}
L_end_transmitSignal:
	RETURN
; end of _transmitSignal

_main:

;receiver.c,270 :: 		void main() {
;receiver.c,271 :: 		TRISD=0x00;
	CLRF       TRISD+0
;receiver.c,272 :: 		TRISB=0x01;
	MOVLW      1
	MOVWF      TRISB+0
;receiver.c,273 :: 		TRISC=0;
	CLRF       TRISC+0
;receiver.c,274 :: 		PORTC=0;
	CLRF       PORTC+0
;receiver.c,275 :: 		PORTB=0;
	CLRF       PORTB+0
;receiver.c,276 :: 		PORTD=0;
	CLRF       PORTD+0
;receiver.c,277 :: 		while(1){
L_main76:
;receiver.c,278 :: 		PORTB=0;
	CLRF       PORTB+0
;receiver.c,279 :: 		if(PORTB.F0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_main78
;receiver.c,280 :: 		encodedSignal=0;
	CLRF       _encodedSignal+0
	CLRF       _encodedSignal+1
;receiver.c,281 :: 		reception();
	CALL       _reception+0
;receiver.c,283 :: 		}
L_main78:
;receiver.c,284 :: 		}
	GOTO       L_main76
;receiver.c,285 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_encodeSignal:

;receiver.c,291 :: 		int encodeSignal(int rawSignal){
;receiver.c,293 :: 		int encodedSignal=0x00;
	CLRF       encodeSignal_encodedSignal_L0+0
	CLRF       encodeSignal_encodedSignal_L0+1
;receiver.c,294 :: 		for(i=0; i<4; i++){
	CLRF       R3+0
	CLRF       R3+1
L_encodeSignal79:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encodeSignal128
	MOVLW      4
	SUBWF      R3+0, 0
L__encodeSignal128:
	BTFSC      STATUS+0, 0
	GOTO       L_encodeSignal80
;receiver.c,295 :: 		if((rawSignal&0x08)==0x08){
	MOVLW      8
	ANDWF      FARG_encodeSignal_rawSignal+0, 0
	MOVWF      R1+0
	MOVF       FARG_encodeSignal_rawSignal+1, 0
	MOVWF      R1+1
	MOVLW      0
	ANDWF      R1+1, 1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encodeSignal129
	MOVLW      8
	XORWF      R1+0, 0
L__encodeSignal129:
	BTFSS      STATUS+0, 2
	GOTO       L_encodeSignal82
;receiver.c,296 :: 		encodedSignal^=0x02;
	MOVLW      2
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;receiver.c,297 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;receiver.c,298 :: 		}else{
	GOTO       L_encodeSignal83
L_encodeSignal82:
;receiver.c,299 :: 		encodedSignal^=0x01;
	MOVLW      1
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;receiver.c,300 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;receiver.c,301 :: 		}
L_encodeSignal83:
;receiver.c,303 :: 		rawSignal=rawSignal<<1;
	RLF        FARG_encodeSignal_rawSignal+0, 1
	RLF        FARG_encodeSignal_rawSignal+1, 1
	BCF        FARG_encodeSignal_rawSignal+0, 0
;receiver.c,294 :: 		for(i=0; i<4; i++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;receiver.c,304 :: 		}
	GOTO       L_encodeSignal79
L_encodeSignal80:
;receiver.c,305 :: 		return encodedSignal>>2;
	MOVF       encodeSignal_encodedSignal_L0+0, 0
	MOVWF      R0+0
	MOVF       encodeSignal_encodedSignal_L0+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
;receiver.c,306 :: 		}
L_end_encodeSignal:
	RETURN
; end of _encodeSignal
