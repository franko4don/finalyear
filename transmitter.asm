
_delay725us:

;transmitter.c,25 :: 		void delay725us(){
;transmitter.c,26 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,27 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,28 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,29 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,30 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,31 :: 		while(1){
L_delay725us0:
;transmitter.c,32 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay725us2
;transmitter.c,33 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,34 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,35 :: 		}
L_delay725us2:
;transmitter.c,36 :: 		if(counter==23)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay725us57
	MOVLW      23
	XORWF      _counter+0, 0
L__delay725us57:
	BTFSS      STATUS+0, 2
	GOTO       L_delay725us3
	GOTO       L_delay725us1
L_delay725us3:
;transmitter.c,37 :: 		}
	GOTO       L_delay725us0
L_delay725us1:
;transmitter.c,40 :: 		}
L_end_delay725us:
	RETURN
; end of _delay725us

_delay20us:

;transmitter.c,43 :: 		void delay20us(){
;transmitter.c,44 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,45 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,46 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,47 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,48 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,49 :: 		while(1){
L_delay20us4:
;transmitter.c,50 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay20us6
;transmitter.c,51 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,52 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,53 :: 		}
L_delay20us6:
;transmitter.c,54 :: 		if(counter==6)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay20us59
	MOVLW      6
	XORWF      _counter+0, 0
L__delay20us59:
	BTFSS      STATUS+0, 2
	GOTO       L_delay20us7
	GOTO       L_delay20us5
L_delay20us7:
;transmitter.c,55 :: 		}
	GOTO       L_delay20us4
L_delay20us5:
;transmitter.c,58 :: 		}
L_end_delay20us:
	RETURN
; end of _delay20us

_initial:

;transmitter.c,61 :: 		void initial(){
;transmitter.c,62 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;transmitter.c,63 :: 		Lcd_Out(1,1,msg4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,64 :: 		Lcd_Out(2,1,msg5);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,65 :: 		}
L_end_initial:
	RETURN
; end of _initial

_show:

;transmitter.c,67 :: 		void show(char value[]){
;transmitter.c,68 :: 		Lcd_Out(1,1,msg1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,69 :: 		Lcd_Out(1,10,value);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       FARG_show_value+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,70 :: 		Lcd_Out(1,12,msg3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,71 :: 		Lcd_Out(2,1,msg2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,72 :: 		}
L_end_show:
	RETURN
; end of _show

_bitRead:

;transmitter.c,75 :: 		int bitRead(int signal,int bitPosition){
;transmitter.c,76 :: 		bitManipulate=0x01;
	MOVLW      1
	MOVWF      _bitManipulate+0
	MOVLW      0
	MOVWF      _bitManipulate+1
;transmitter.c,77 :: 		bitManipulate<<=bitPosition;
	MOVF       FARG_bitRead_bitPosition+0, 0
	MOVWF      R2+0
	MOVF       _bitManipulate+0, 0
	MOVWF      R0+0
	MOVF       _bitManipulate+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bitRead63:
	BTFSC      STATUS+0, 2
	GOTO       L__bitRead64
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bitRead63
L__bitRead64:
	MOVF       R0+0, 0
	MOVWF      _bitManipulate+0
	MOVF       R0+1, 0
	MOVWF      _bitManipulate+1
;transmitter.c,78 :: 		return (signal&bitManipulate);
	MOVF       FARG_bitRead_signal+0, 0
	ANDWF      R0+0, 1
	MOVF       FARG_bitRead_signal+1, 0
	ANDWF      R0+1, 1
;transmitter.c,79 :: 		}
L_end_bitRead:
	RETURN
; end of _bitRead

_delay3ms:

;transmitter.c,81 :: 		void delay3ms(){
;transmitter.c,82 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,83 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,84 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,85 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,86 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,87 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,88 :: 		while(1){
L_delay3ms8:
;transmitter.c,89 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay3ms10
;transmitter.c,90 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,91 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,92 :: 		}
L_delay3ms10:
;transmitter.c,93 :: 		if(counter==93)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay3ms66
	MOVLW      93
	XORWF      _counter+0, 0
L__delay3ms66:
	BTFSS      STATUS+0, 2
	GOTO       L_delay3ms11
	GOTO       L_delay3ms9
L_delay3ms11:
;transmitter.c,94 :: 		}
	GOTO       L_delay3ms8
L_delay3ms9:
;transmitter.c,97 :: 		}
L_end_delay3ms:
	RETURN
; end of _delay3ms

_delay500us:

;transmitter.c,99 :: 		void delay500us(){
;transmitter.c,100 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,101 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,102 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,103 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,104 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,105 :: 		while(1){
L_delay500us12:
;transmitter.c,106 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay500us14
;transmitter.c,107 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,108 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,109 :: 		}
L_delay500us14:
;transmitter.c,110 :: 		if(counter==15)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay500us68
	MOVLW      15
	XORWF      _counter+0, 0
L__delay500us68:
	BTFSS      STATUS+0, 2
	GOTO       L_delay500us15
	GOTO       L_delay500us13
L_delay500us15:
;transmitter.c,111 :: 		}
	GOTO       L_delay500us12
L_delay500us13:
;transmitter.c,114 :: 		}
L_end_delay500us:
	RETURN
; end of _delay500us

_preamble:

;transmitter.c,116 :: 		void preamble(){
;transmitter.c,118 :: 		for(i=0; i<20; i++){
	CLRF       preamble_i_L0+0
	CLRF       preamble_i_L0+1
L_preamble16:
	MOVLW      128
	XORWF      preamble_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__preamble70
	MOVLW      20
	SUBWF      preamble_i_L0+0, 0
L__preamble70:
	BTFSC      STATUS+0, 0
	GOTO       L_preamble17
;transmitter.c,119 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;transmitter.c,120 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,121 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,122 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,118 :: 		for(i=0; i<20; i++){
	INCF       preamble_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       preamble_i_L0+1, 1
;transmitter.c,123 :: 		}
	GOTO       L_preamble16
L_preamble17:
;transmitter.c,124 :: 		}
L_end_preamble:
	RETURN
; end of _preamble

_transmitSignal:

;transmitter.c,128 :: 		void transmitSignal(int signal){
;transmitter.c,130 :: 		preamble();
	CALL       _preamble+0
;transmitter.c,131 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;transmitter.c,132 :: 		delay3ms();
	CALL       _delay3ms+0
;transmitter.c,133 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,134 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,135 :: 		for(j=7; j>=0; j--){
	MOVLW      7
	MOVWF      transmitSignal_j_L0+0
	MOVLW      0
	MOVWF      transmitSignal_j_L0+1
L_transmitSignal19:
	MOVLW      128
	XORWF      transmitSignal_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal72
	MOVLW      0
	SUBWF      transmitSignal_j_L0+0, 0
L__transmitSignal72:
	BTFSS      STATUS+0, 0
	GOTO       L_transmitSignal20
;transmitter.c,136 :: 		if(bitRead(signal,j)!=0){
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
	GOTO       L__transmitSignal73
	MOVLW      0
	XORWF      R0+0, 0
L__transmitSignal73:
	BTFSC      STATUS+0, 2
	GOTO       L_transmitSignal22
;transmitter.c,137 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;transmitter.c,138 :: 		}else{
	GOTO       L_transmitSignal23
L_transmitSignal22:
;transmitter.c,139 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,140 :: 		}
L_transmitSignal23:
;transmitter.c,141 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,135 :: 		for(j=7; j>=0; j--){
	MOVLW      1
	SUBWF      transmitSignal_j_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       transmitSignal_j_L0+1, 1
;transmitter.c,142 :: 		}
	GOTO       L_transmitSignal19
L_transmitSignal20:
;transmitter.c,143 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,144 :: 		initial();
	CALL       _initial+0
;transmitter.c,145 :: 		}
L_end_transmitSignal:
	RETURN
; end of _transmitSignal

_encodeSignal:

;transmitter.c,149 :: 		int encodeSignal(int rawSignal){
;transmitter.c,151 :: 		int encodedSignal=0x00;
	CLRF       encodeSignal_encodedSignal_L0+0
	CLRF       encodeSignal_encodedSignal_L0+1
;transmitter.c,152 :: 		for(i=0; i<4; i++){
	CLRF       R3+0
	CLRF       R3+1
L_encodeSignal24:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encodeSignal75
	MOVLW      4
	SUBWF      R3+0, 0
L__encodeSignal75:
	BTFSC      STATUS+0, 0
	GOTO       L_encodeSignal25
;transmitter.c,153 :: 		if((rawSignal&0x08)==0x08){
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
	GOTO       L__encodeSignal76
	MOVLW      8
	XORWF      R1+0, 0
L__encodeSignal76:
	BTFSS      STATUS+0, 2
	GOTO       L_encodeSignal27
;transmitter.c,154 :: 		encodedSignal^=0x02;
	MOVLW      2
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;transmitter.c,155 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;transmitter.c,156 :: 		}else{
	GOTO       L_encodeSignal28
L_encodeSignal27:
;transmitter.c,157 :: 		encodedSignal^=0x01;
	MOVLW      1
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;transmitter.c,158 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;transmitter.c,159 :: 		}
L_encodeSignal28:
;transmitter.c,161 :: 		rawSignal=rawSignal<<1;
	RLF        FARG_encodeSignal_rawSignal+0, 1
	RLF        FARG_encodeSignal_rawSignal+1, 1
	BCF        FARG_encodeSignal_rawSignal+0, 0
;transmitter.c,152 :: 		for(i=0; i<4; i++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;transmitter.c,162 :: 		}
	GOTO       L_encodeSignal24
L_encodeSignal25:
;transmitter.c,163 :: 		return encodedSignal>>2;
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
;transmitter.c,164 :: 		}
L_end_encodeSignal:
	RETURN
; end of _encodeSignal

_main:

;transmitter.c,168 :: 		void main() {
;transmitter.c,169 :: 		TRISB=0xF0;
	MOVLW      240
	MOVWF      TRISB+0
;transmitter.c,170 :: 		TRISC=0x00;
	CLRF       TRISC+0
;transmitter.c,171 :: 		TRISD=0x10;
	MOVLW      16
	MOVWF      TRISD+0
;transmitter.c,172 :: 		PORTC=0x00;
	CLRF       PORTC+0
;transmitter.c,173 :: 		PORTB=0x00;
	CLRF       PORTB+0
;transmitter.c,174 :: 		PORTD=0x00;
	CLRF       PORTD+0
;transmitter.c,175 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;transmitter.c,176 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;transmitter.c,177 :: 		initial();
	CALL       _initial+0
;transmitter.c,178 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	NOP
	NOP
;transmitter.c,179 :: 		while(1){
L_main30:
;transmitter.c,180 :: 		scan();
	CALL       _scan+0
;transmitter.c,181 :: 		}
	GOTO       L_main30
;transmitter.c,182 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_scan:

;transmitter.c,184 :: 		void scan(){
;transmitter.c,186 :: 		PORTB=0x01;
	MOVLW      1
	MOVWF      PORTB+0
;transmitter.c,187 :: 		for(i=0; i<4; i++){
	CLRF       scan_i_L0+0
	CLRF       scan_i_L0+1
L_scan32:
	MOVLW      128
	XORWF      scan_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scan79
	MOVLW      4
	SUBWF      scan_i_L0+0, 0
L__scan79:
	BTFSC      STATUS+0, 0
	GOTO       L_scan33
;transmitter.c,188 :: 		if(RB0_bit){
	BTFSS      RB0_bit+0, 0
	GOTO       L_scan35
;transmitter.c,189 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan36
;transmitter.c,190 :: 		show("00");
	MOVLW      ?lstr1_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,191 :: 		transmitSignal(encodeSignal(0));
	CLRF       FARG_encodeSignal_rawSignal+0
	CLRF       FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,192 :: 		}
L_scan36:
;transmitter.c,193 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan37
;transmitter.c,194 :: 		show("01");
	MOVLW      ?lstr2_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,195 :: 		transmitSignal(encodeSignal(1));
	MOVLW      1
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,196 :: 		}
L_scan37:
;transmitter.c,197 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan38
;transmitter.c,198 :: 		show("02");
	MOVLW      ?lstr3_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,199 :: 		transmitSignal(encodeSignal(2));
	MOVLW      2
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,200 :: 		}
L_scan38:
;transmitter.c,201 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan39
;transmitter.c,202 :: 		show("03");
	MOVLW      ?lstr4_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,203 :: 		transmitSignal(encodeSignal(3));
	MOVLW      3
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,204 :: 		}
L_scan39:
;transmitter.c,205 :: 		}
L_scan35:
;transmitter.c,207 :: 		if(RB1_bit){
	BTFSS      RB1_bit+0, 1
	GOTO       L_scan40
;transmitter.c,208 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan41
;transmitter.c,209 :: 		show("04");
	MOVLW      ?lstr5_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,210 :: 		transmitSignal(encodeSignal(4));
	MOVLW      4
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,211 :: 		}
L_scan41:
;transmitter.c,212 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan42
;transmitter.c,213 :: 		show("05");
	MOVLW      ?lstr6_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,214 :: 		transmitSignal(encodeSignal(5));
	MOVLW      5
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,215 :: 		}
L_scan42:
;transmitter.c,216 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan43
;transmitter.c,217 :: 		show("06");
	MOVLW      ?lstr7_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,218 :: 		transmitSignal(encodeSignal(6));
	MOVLW      6
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,219 :: 		}
L_scan43:
;transmitter.c,220 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan44
;transmitter.c,221 :: 		show("07");
	MOVLW      ?lstr8_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,222 :: 		transmitSignal(encodeSignal(7));
	MOVLW      7
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,223 :: 		}
L_scan44:
;transmitter.c,224 :: 		}
L_scan40:
;transmitter.c,226 :: 		if(RB2_bit){
	BTFSS      RB2_bit+0, 2
	GOTO       L_scan45
;transmitter.c,227 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan46
;transmitter.c,228 :: 		show("08");
	MOVLW      ?lstr9_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,229 :: 		transmitSignal(encodeSignal(8));
	MOVLW      8
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,230 :: 		}
L_scan46:
;transmitter.c,231 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan47
;transmitter.c,232 :: 		show("09");
	MOVLW      ?lstr10_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,233 :: 		transmitSignal(encodeSignal(9));
	MOVLW      9
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,234 :: 		}
L_scan47:
;transmitter.c,235 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan48
;transmitter.c,236 :: 		show("10");
	MOVLW      ?lstr11_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,237 :: 		transmitSignal(encodeSignal(10));
	MOVLW      10
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,238 :: 		}
L_scan48:
;transmitter.c,239 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan49
;transmitter.c,240 :: 		show("11");
	MOVLW      ?lstr12_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,241 :: 		transmitSignal(encodeSignal(11));
	MOVLW      11
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,242 :: 		}
L_scan49:
;transmitter.c,243 :: 		}
L_scan45:
;transmitter.c,245 :: 		if(RB3_bit){
	BTFSS      RB3_bit+0, 3
	GOTO       L_scan50
;transmitter.c,246 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan51
;transmitter.c,247 :: 		show("12");
	MOVLW      ?lstr13_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,248 :: 		transmitSignal(encodeSignal(12));
	MOVLW      12
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,249 :: 		}
L_scan51:
;transmitter.c,250 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan52
;transmitter.c,251 :: 		show("13");
	MOVLW      ?lstr14_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,252 :: 		transmitSignal(encodeSignal(13));
	MOVLW      13
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,253 :: 		}
L_scan52:
;transmitter.c,254 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan53
;transmitter.c,255 :: 		show("14");
	MOVLW      ?lstr15_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,256 :: 		transmitSignal(encodeSignal(14));
	MOVLW      14
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,257 :: 		}
L_scan53:
;transmitter.c,258 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan54
;transmitter.c,259 :: 		show("15");
	MOVLW      ?lstr16_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,260 :: 		transmitSignal(encodeSignal(15));
	MOVLW      15
	MOVWF      FARG_encodeSignal_rawSignal+0
	MOVLW      0
	MOVWF      FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,261 :: 		}
L_scan54:
;transmitter.c,262 :: 		}
L_scan50:
;transmitter.c,263 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_scan55:
	DECFSZ     R13+0, 1
	GOTO       L_scan55
	DECFSZ     R12+0, 1
	GOTO       L_scan55
	NOP
	NOP
;transmitter.c,265 :: 		PORTB<<=1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;transmitter.c,187 :: 		for(i=0; i<4; i++){
	INCF       scan_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       scan_i_L0+1, 1
;transmitter.c,266 :: 		}
	GOTO       L_scan32
L_scan33:
;transmitter.c,267 :: 		}
L_end_scan:
	RETURN
; end of _scan
