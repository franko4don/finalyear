
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
;receiver.c,16 :: 		}
L_lookup3:
;receiver.c,17 :: 		break;
	GOTO       L_lookup1
;receiver.c,19 :: 		case 1: PORTD.F1^=1;
L_lookup4:
	MOVLW      2
	XORWF      PORTD+0, 1
;receiver.c,20 :: 		if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_lookup5
;receiver.c,22 :: 		}
L_lookup5:
;receiver.c,23 :: 		break;
	GOTO       L_lookup1
;receiver.c,24 :: 		case 2: PORTD.F2^=1;
L_lookup6:
	MOVLW      4
	XORWF      PORTD+0, 1
;receiver.c,25 :: 		if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_lookup7
;receiver.c,27 :: 		}
L_lookup7:
;receiver.c,28 :: 		break;
	GOTO       L_lookup1
;receiver.c,29 :: 		case 3: PORTD.F3^=1;
L_lookup8:
	MOVLW      8
	XORWF      PORTD+0, 1
;receiver.c,30 :: 		if(PORTD.F3==1){
	BTFSS      PORTD+0, 3
	GOTO       L_lookup9
;receiver.c,32 :: 		}
L_lookup9:
;receiver.c,33 :: 		break;
	GOTO       L_lookup1
;receiver.c,34 :: 		case 4: PORTD.F4^=1;
L_lookup10:
	MOVLW      16
	XORWF      PORTD+0, 1
;receiver.c,35 :: 		if(PORTD.F4==1){
	BTFSS      PORTD+0, 4
	GOTO       L_lookup11
;receiver.c,37 :: 		}
L_lookup11:
;receiver.c,38 :: 		break;
	GOTO       L_lookup1
;receiver.c,39 :: 		case 5: PORTD.F5^=1;
L_lookup12:
	MOVLW      32
	XORWF      PORTD+0, 1
;receiver.c,40 :: 		if(PORTD.F5==1){
	BTFSS      PORTD+0, 5
	GOTO       L_lookup13
;receiver.c,42 :: 		}
L_lookup13:
;receiver.c,43 :: 		break;
	GOTO       L_lookup1
;receiver.c,44 :: 		case 6: PORTD.F6^=1;
L_lookup14:
	MOVLW      64
	XORWF      PORTD+0, 1
;receiver.c,45 :: 		if(PORTD.F6==1){
	BTFSS      PORTD+0, 6
	GOTO       L_lookup15
;receiver.c,47 :: 		}
L_lookup15:
;receiver.c,48 :: 		break;
	GOTO       L_lookup1
;receiver.c,49 :: 		case 7: PORTD.F7^=1;
L_lookup16:
	MOVLW      128
	XORWF      PORTD+0, 1
;receiver.c,50 :: 		if(PORTD.F7==1){
	BTFSS      PORTD+0, 7
	GOTO       L_lookup17
;receiver.c,52 :: 		}
L_lookup17:
;receiver.c,53 :: 		break;
	GOTO       L_lookup1
;receiver.c,54 :: 		case 8: PORTC.F0^=1;
L_lookup18:
	MOVLW      1
	XORWF      PORTC+0, 1
;receiver.c,55 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_lookup19
;receiver.c,57 :: 		}
L_lookup19:
;receiver.c,58 :: 		break;
	GOTO       L_lookup1
;receiver.c,59 :: 		case 9: PORTC.F1^=1;
L_lookup20:
	MOVLW      2
	XORWF      PORTC+0, 1
;receiver.c,60 :: 		if(PORTC.F1==1){
	BTFSS      PORTC+0, 1
	GOTO       L_lookup21
;receiver.c,62 :: 		}
L_lookup21:
;receiver.c,63 :: 		break;
	GOTO       L_lookup1
;receiver.c,64 :: 		case 10: PORTC.F2^=1;
L_lookup22:
	MOVLW      4
	XORWF      PORTC+0, 1
;receiver.c,65 :: 		if(PORTC.F2==1){
	BTFSS      PORTC+0, 2
	GOTO       L_lookup23
;receiver.c,67 :: 		}
L_lookup23:
;receiver.c,68 :: 		break;
	GOTO       L_lookup1
;receiver.c,69 :: 		case 11: PORTC.F3^=1;
L_lookup24:
	MOVLW      8
	XORWF      PORTC+0, 1
;receiver.c,70 :: 		if(PORTC.F3==1){
	BTFSS      PORTC+0, 3
	GOTO       L_lookup25
;receiver.c,72 :: 		}
L_lookup25:
;receiver.c,73 :: 		break;
	GOTO       L_lookup1
;receiver.c,74 :: 		case 12: PORTC.F4^=1;
L_lookup26:
	MOVLW      16
	XORWF      PORTC+0, 1
;receiver.c,75 :: 		if(PORTC.F4==1){
	BTFSS      PORTC+0, 4
	GOTO       L_lookup27
;receiver.c,77 :: 		}
L_lookup27:
;receiver.c,78 :: 		break;
	GOTO       L_lookup1
;receiver.c,79 :: 		case 13: PORTC.F5^=1;
L_lookup28:
	MOVLW      32
	XORWF      PORTC+0, 1
;receiver.c,80 :: 		if(PORTC.F5==1){
	BTFSS      PORTC+0, 5
	GOTO       L_lookup29
;receiver.c,82 :: 		}
L_lookup29:
;receiver.c,83 :: 		break;
	GOTO       L_lookup1
;receiver.c,84 :: 		case 14: PORTC.F6^=1;
L_lookup30:
	MOVLW      64
	XORWF      PORTC+0, 1
;receiver.c,85 :: 		if(PORTC.F6==1){
	BTFSS      PORTC+0, 6
	GOTO       L_lookup31
;receiver.c,87 :: 		}
L_lookup31:
;receiver.c,88 :: 		break;
	GOTO       L_lookup1
;receiver.c,89 :: 		case 15: PORTC.F7^=1;
L_lookup32:
	MOVLW      128
	XORWF      PORTC+0, 1
;receiver.c,90 :: 		if(PORTC.F7==1){
	BTFSS      PORTC+0, 7
	GOTO       L_lookup33
;receiver.c,92 :: 		}
L_lookup33:
;receiver.c,93 :: 		break;
	GOTO       L_lookup1
;receiver.c,94 :: 		}
L_lookup0:
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup74
	MOVLW      0
	XORWF      FARG_lookup_channel+0, 0
L__lookup74:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup2
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup75
	MOVLW      1
	XORWF      FARG_lookup_channel+0, 0
L__lookup75:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup4
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup76
	MOVLW      2
	XORWF      FARG_lookup_channel+0, 0
L__lookup76:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup6
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup77
	MOVLW      3
	XORWF      FARG_lookup_channel+0, 0
L__lookup77:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup8
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup78
	MOVLW      4
	XORWF      FARG_lookup_channel+0, 0
L__lookup78:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup10
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup79
	MOVLW      5
	XORWF      FARG_lookup_channel+0, 0
L__lookup79:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup12
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup80
	MOVLW      6
	XORWF      FARG_lookup_channel+0, 0
L__lookup80:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup14
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup81
	MOVLW      7
	XORWF      FARG_lookup_channel+0, 0
L__lookup81:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup16
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup82
	MOVLW      8
	XORWF      FARG_lookup_channel+0, 0
L__lookup82:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup18
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup83
	MOVLW      9
	XORWF      FARG_lookup_channel+0, 0
L__lookup83:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup20
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup84
	MOVLW      10
	XORWF      FARG_lookup_channel+0, 0
L__lookup84:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup22
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup85
	MOVLW      11
	XORWF      FARG_lookup_channel+0, 0
L__lookup85:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup24
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup86
	MOVLW      12
	XORWF      FARG_lookup_channel+0, 0
L__lookup86:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup26
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup87
	MOVLW      13
	XORWF      FARG_lookup_channel+0, 0
L__lookup87:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup28
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup88
	MOVLW      14
	XORWF      FARG_lookup_channel+0, 0
L__lookup88:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup30
	MOVLW      0
	XORWF      FARG_lookup_channel+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lookup89
	MOVLW      15
	XORWF      FARG_lookup_channel+0, 0
L__lookup89:
	BTFSC      STATUS+0, 2
	GOTO       L_lookup32
L_lookup1:
;receiver.c,95 :: 		delay3ms();
	CALL       _delay3ms+0
;receiver.c,96 :: 		}
L_end_lookup:
	RETURN
; end of _lookup

_bitRead:

;receiver.c,98 :: 		int bitRead(int signal,int bitPosition){
;receiver.c,99 :: 		bitManipulate=0x01;
	MOVLW      1
	MOVWF      _bitManipulate+0
	MOVLW      0
	MOVWF      _bitManipulate+1
;receiver.c,100 :: 		bitManipulate<<=bitPosition;
	MOVF       FARG_bitRead_bitPosition+0, 0
	MOVWF      R2+0
	MOVF       _bitManipulate+0, 0
	MOVWF      R0+0
	MOVF       _bitManipulate+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bitRead91:
	BTFSC      STATUS+0, 2
	GOTO       L__bitRead92
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bitRead91
L__bitRead92:
	MOVF       R0+0, 0
	MOVWF      _bitManipulate+0
	MOVF       R0+1, 0
	MOVWF      _bitManipulate+1
;receiver.c,101 :: 		return (signal&bitManipulate);
	MOVF       FARG_bitRead_signal+0, 0
	ANDWF      R0+0, 1
	MOVF       FARG_bitRead_signal+1, 0
	ANDWF      R0+1, 1
;receiver.c,102 :: 		}
L_end_bitRead:
	RETURN
; end of _bitRead

_bitWrite:

;receiver.c,104 :: 		void bitWrite(int position,int shifts){
;receiver.c,105 :: 		shifts<<=position;
	MOVF       FARG_bitWrite_position+0, 0
	MOVWF      R2+0
	MOVF       FARG_bitWrite_shifts+0, 0
	MOVWF      R0+0
	MOVF       FARG_bitWrite_shifts+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bitWrite94:
	BTFSC      STATUS+0, 2
	GOTO       L__bitWrite95
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bitWrite94
L__bitWrite95:
	MOVF       R0+0, 0
	MOVWF      FARG_bitWrite_shifts+0
	MOVF       R0+1, 0
	MOVWF      FARG_bitWrite_shifts+1
;receiver.c,106 :: 		encodedSignal^=shifts;
	MOVF       R0+0, 0
	XORWF      _encodedSignal+0, 1
	MOVF       R0+1, 0
	XORWF      _encodedSignal+1, 1
;receiver.c,107 :: 		}
L_end_bitWrite:
	RETURN
; end of _bitWrite

_delay3ms:

;receiver.c,109 :: 		void delay3ms(){
;receiver.c,110 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,111 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,112 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,113 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,114 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,115 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,116 :: 		while(1){
L_delay3ms34:
;receiver.c,117 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay3ms36
;receiver.c,118 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,119 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,120 :: 		}
L_delay3ms36:
;receiver.c,121 :: 		if(counter==93)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay3ms97
	MOVLW      93
	XORWF      _counter+0, 0
L__delay3ms97:
	BTFSS      STATUS+0, 2
	GOTO       L_delay3ms37
	GOTO       L_delay3ms35
L_delay3ms37:
;receiver.c,122 :: 		}
	GOTO       L_delay3ms34
L_delay3ms35:
;receiver.c,125 :: 		}
L_end_delay3ms:
	RETURN
; end of _delay3ms

_delay500us:

;receiver.c,127 :: 		void delay500us(){
;receiver.c,128 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,129 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,130 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,131 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,132 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,133 :: 		while(1){
L_delay500us38:
;receiver.c,134 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay500us40
;receiver.c,135 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,136 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,137 :: 		}
L_delay500us40:
;receiver.c,138 :: 		if(counter==15)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay500us99
	MOVLW      15
	XORWF      _counter+0, 0
L__delay500us99:
	BTFSS      STATUS+0, 2
	GOTO       L_delay500us41
	GOTO       L_delay500us39
L_delay500us41:
;receiver.c,139 :: 		}
	GOTO       L_delay500us38
L_delay500us39:
;receiver.c,142 :: 		}
L_end_delay500us:
	RETURN
; end of _delay500us

_delay725us:

;receiver.c,144 :: 		void delay725us(){
;receiver.c,145 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,146 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,147 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,148 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,149 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,150 :: 		while(1){
L_delay725us42:
;receiver.c,151 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay725us44
;receiver.c,152 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,153 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,154 :: 		}
L_delay725us44:
;receiver.c,155 :: 		if(counter==23)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay725us101
	MOVLW      23
	XORWF      _counter+0, 0
L__delay725us101:
	BTFSS      STATUS+0, 2
	GOTO       L_delay725us45
	GOTO       L_delay725us43
L_delay725us45:
;receiver.c,156 :: 		}
	GOTO       L_delay725us42
L_delay725us43:
;receiver.c,159 :: 		}
L_end_delay725us:
	RETURN
; end of _delay725us

_delay20us:

;receiver.c,161 :: 		void delay20us(){
;receiver.c,162 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;receiver.c,163 :: 		TMR0=0;
	CLRF       TMR0+0
;receiver.c,164 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;receiver.c,165 :: 		INTCON=0x00;
	CLRF       INTCON+0
;receiver.c,166 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;receiver.c,167 :: 		while(1){
L_delay20us46:
;receiver.c,168 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay20us48
;receiver.c,169 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;receiver.c,170 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;receiver.c,171 :: 		}
L_delay20us48:
;receiver.c,172 :: 		if(counter==6)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay20us103
	MOVLW      6
	XORWF      _counter+0, 0
L__delay20us103:
	BTFSS      STATUS+0, 2
	GOTO       L_delay20us49
	GOTO       L_delay20us47
L_delay20us49:
;receiver.c,173 :: 		}
	GOTO       L_delay20us46
L_delay20us47:
;receiver.c,176 :: 		}
L_end_delay20us:
	RETURN
; end of _delay20us

_reception:

;receiver.c,178 :: 		void reception(){
;receiver.c,180 :: 		int decoded_signal=0;
	CLRF       reception_decoded_signal_L0+0
	CLRF       reception_decoded_signal_L0+1
;receiver.c,181 :: 		for(i=0; i<10; i++){
	CLRF       reception_i_L0+0
	CLRF       reception_i_L0+1
L_reception50:
	MOVLW      128
	XORWF      reception_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception105
	MOVLW      10
	SUBWF      reception_i_L0+0, 0
L__reception105:
	BTFSC      STATUS+0, 0
	GOTO       L_reception51
;receiver.c,182 :: 		delay20us();
	CALL       _delay20us+0
;receiver.c,183 :: 		good=1;
	MOVLW      1
	MOVWF      _good+0
	MOVLW      0
	MOVWF      _good+1
;receiver.c,184 :: 		if(PORTB.F0==0){
	BTFSC      PORTB+0, 0
	GOTO       L_reception53
;receiver.c,185 :: 		good=0;
	CLRF       _good+0
	CLRF       _good+1
;receiver.c,186 :: 		i=100;
	MOVLW      100
	MOVWF      reception_i_L0+0
	MOVLW      0
	MOVWF      reception_i_L0+1
;receiver.c,187 :: 		}
L_reception53:
;receiver.c,181 :: 		for(i=0; i<10; i++){
	INCF       reception_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       reception_i_L0+1, 1
;receiver.c,188 :: 		}
	GOTO       L_reception50
L_reception51:
;receiver.c,190 :: 		if(good==1){
	MOVLW      0
	XORWF      _good+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception106
	MOVLW      1
	XORWF      _good+0, 0
L__reception106:
	BTFSS      STATUS+0, 2
	GOTO       L_reception54
;receiver.c,191 :: 		while(1){
L_reception55:
;receiver.c,192 :: 		if(PORTB.F0==0){
	BTFSC      PORTB+0, 0
	GOTO       L_reception57
;receiver.c,193 :: 		delay725us();
	CALL       _delay725us+0
;receiver.c,195 :: 		for(i=0; i<8; i++){
	CLRF       reception_i_L0+0
	CLRF       reception_i_L0+1
L_reception58:
	MOVLW      128
	XORWF      reception_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception107
	MOVLW      8
	SUBWF      reception_i_L0+0, 0
L__reception107:
	BTFSC      STATUS+0, 0
	GOTO       L_reception59
;receiver.c,196 :: 		test=i%2;
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
;receiver.c,198 :: 		if(PORTB.F0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_reception61
;receiver.c,199 :: 		if(test==0){
	MOVLW      0
	XORWF      _test+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception108
	MOVLW      0
	XORWF      _test+0, 0
L__reception108:
	BTFSS      STATUS+0, 2
	GOTO       L_reception62
;receiver.c,200 :: 		decoded_signal^=0x01;
	MOVLW      1
	XORWF      reception_decoded_signal_L0+0, 1
	MOVLW      0
	XORWF      reception_decoded_signal_L0+1, 1
;receiver.c,201 :: 		decoded_signal<<=1;
	RLF        reception_decoded_signal_L0+0, 1
	RLF        reception_decoded_signal_L0+1, 1
	BCF        reception_decoded_signal_L0+0, 0
;receiver.c,203 :: 		}
L_reception62:
;receiver.c,204 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;receiver.c,205 :: 		}else{
	GOTO       L_reception63
L_reception61:
;receiver.c,206 :: 		if(test==0){
	MOVLW      0
	XORWF      _test+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception109
	MOVLW      0
	XORWF      _test+0, 0
L__reception109:
	BTFSS      STATUS+0, 2
	GOTO       L_reception64
;receiver.c,207 :: 		decoded_signal^=0x00;
;receiver.c,208 :: 		decoded_signal<<=1;
	RLF        reception_decoded_signal_L0+0, 1
	RLF        reception_decoded_signal_L0+1, 1
	BCF        reception_decoded_signal_L0+0, 0
;receiver.c,210 :: 		}
L_reception64:
;receiver.c,211 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;receiver.c,212 :: 		}
L_reception63:
;receiver.c,214 :: 		delay500us();
	CALL       _delay500us+0
;receiver.c,195 :: 		for(i=0; i<8; i++){
	INCF       reception_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       reception_i_L0+1, 1
;receiver.c,216 :: 		}
	GOTO       L_reception58
L_reception59:
;receiver.c,217 :: 		break;
	GOTO       L_reception56
;receiver.c,218 :: 		}
L_reception57:
;receiver.c,219 :: 		}
	GOTO       L_reception55
L_reception56:
;receiver.c,221 :: 		decoded_signal>>=1;
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
;receiver.c,224 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;receiver.c,226 :: 		lookup(decoded_signal);
	MOVF       R0+0, 0
	MOVWF      FARG_lookup_channel+0
	MOVF       R0+1, 0
	MOVWF      FARG_lookup_channel+1
	CALL       _lookup+0
;receiver.c,227 :: 		}
L_reception54:
;receiver.c,229 :: 		}
L_end_reception:
	RETURN
; end of _reception

_main:

;receiver.c,231 :: 		void main() {
;receiver.c,232 :: 		TRISD=0x00;
	CLRF       TRISD+0
;receiver.c,233 :: 		TRISB=0x01;
	MOVLW      1
	MOVWF      TRISB+0
;receiver.c,234 :: 		TRISC=0;
	CLRF       TRISC+0
;receiver.c,235 :: 		PORTC=0;
	CLRF       PORTC+0
;receiver.c,236 :: 		PORTB=0;
	CLRF       PORTB+0
;receiver.c,237 :: 		PORTD=0;
	CLRF       PORTD+0
;receiver.c,238 :: 		while(1){
L_main65:
;receiver.c,239 :: 		PORTB=0;
	CLRF       PORTB+0
;receiver.c,240 :: 		if(PORTB.F0==1){
	BTFSS      PORTB+0, 0
	GOTO       L_main67
;receiver.c,241 :: 		encodedSignal=0;
	CLRF       _encodedSignal+0
	CLRF       _encodedSignal+1
;receiver.c,242 :: 		reception();
	CALL       _reception+0
;receiver.c,244 :: 		}
L_main67:
;receiver.c,245 :: 		}
	GOTO       L_main65
;receiver.c,246 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_encodeSignal:

;receiver.c,252 :: 		int encodeSignal(int rawSignal){
;receiver.c,254 :: 		int encodedSignal=0x00;
	CLRF       encodeSignal_encodedSignal_L0+0
	CLRF       encodeSignal_encodedSignal_L0+1
;receiver.c,255 :: 		for(i=0; i<4; i++){
	CLRF       R3+0
	CLRF       R3+1
L_encodeSignal68:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encodeSignal112
	MOVLW      4
	SUBWF      R3+0, 0
L__encodeSignal112:
	BTFSC      STATUS+0, 0
	GOTO       L_encodeSignal69
;receiver.c,256 :: 		if((rawSignal&0x08)==0x08){
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
	GOTO       L__encodeSignal113
	MOVLW      8
	XORWF      R1+0, 0
L__encodeSignal113:
	BTFSS      STATUS+0, 2
	GOTO       L_encodeSignal71
;receiver.c,257 :: 		encodedSignal^=0x02;
	MOVLW      2
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;receiver.c,258 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;receiver.c,259 :: 		}else{
	GOTO       L_encodeSignal72
L_encodeSignal71:
;receiver.c,260 :: 		encodedSignal^=0x01;
	MOVLW      1
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;receiver.c,261 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;receiver.c,262 :: 		}
L_encodeSignal72:
;receiver.c,264 :: 		rawSignal=rawSignal<<1;
	RLF        FARG_encodeSignal_rawSignal+0, 1
	RLF        FARG_encodeSignal_rawSignal+1, 1
	BCF        FARG_encodeSignal_rawSignal+0, 0
;receiver.c,255 :: 		for(i=0; i<4; i++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;receiver.c,265 :: 		}
	GOTO       L_encodeSignal68
L_encodeSignal69:
;receiver.c,266 :: 		return encodedSignal>>2;
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
;receiver.c,267 :: 		}
L_end_encodeSignal:
	RETURN
; end of _encodeSignal
