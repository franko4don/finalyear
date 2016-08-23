
_delay725us:

;transmitter.c,36 :: 		void delay725us(){
;transmitter.c,37 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,38 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,39 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,40 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,41 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,42 :: 		while(1){
L_delay725us0:
;transmitter.c,43 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay725us2
;transmitter.c,44 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,45 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,46 :: 		}
L_delay725us2:
;transmitter.c,47 :: 		if(counter==23)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay725us81
	MOVLW      23
	XORWF      _counter+0, 0
L__delay725us81:
	BTFSS      STATUS+0, 2
	GOTO       L_delay725us3
	GOTO       L_delay725us1
L_delay725us3:
;transmitter.c,48 :: 		}
	GOTO       L_delay725us0
L_delay725us1:
;transmitter.c,51 :: 		}
L_end_delay725us:
	RETURN
; end of _delay725us

_delay20us:

;transmitter.c,54 :: 		void delay20us(){
;transmitter.c,55 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,56 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,57 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,58 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,59 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,60 :: 		while(1){
L_delay20us4:
;transmitter.c,61 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay20us6
;transmitter.c,62 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,63 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,64 :: 		}
L_delay20us6:
;transmitter.c,65 :: 		if(counter==6)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay20us83
	MOVLW      6
	XORWF      _counter+0, 0
L__delay20us83:
	BTFSS      STATUS+0, 2
	GOTO       L_delay20us7
	GOTO       L_delay20us5
L_delay20us7:
;transmitter.c,66 :: 		}
	GOTO       L_delay20us4
L_delay20us5:
;transmitter.c,69 :: 		}
L_end_delay20us:
	RETURN
; end of _delay20us

_initial:

;transmitter.c,72 :: 		void initial(){
;transmitter.c,73 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;transmitter.c,74 :: 		Lcd_Out(1,1,msg4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,75 :: 		Lcd_Out(2,1,msg5);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,76 :: 		}
L_end_initial:
	RETURN
; end of _initial

_show:

;transmitter.c,78 :: 		void show(char value[]){
;transmitter.c,79 :: 		channel=value;
	MOVF       FARG_show_value+0, 0
	MOVWF      _channel+0
;transmitter.c,80 :: 		Lcd_Out(1,1,msg1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,81 :: 		Lcd_Out(1,10,value);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       FARG_show_value+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,82 :: 		Lcd_Out(1,12,msg3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,83 :: 		Lcd_Out(2,1,msg2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,84 :: 		}
L_end_show:
	RETURN
; end of _show

_ack:

;transmitter.c,87 :: 		void ack(char value[],char state[]){
;transmitter.c,88 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;transmitter.c,89 :: 		Lcd_Out(1,1,msg1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,90 :: 		Lcd_Out(1,10,value);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       FARG_ack_value+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,91 :: 		Lcd_Out(1,12,msg3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,92 :: 		Lcd_Out(2,8,state);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       FARG_ack_state+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,93 :: 		}
L_end_ack:
	RETURN
; end of _ack

_bitRead:

;transmitter.c,96 :: 		int bitRead(int signal,int bitPosition){
;transmitter.c,97 :: 		bitManipulate=0x01;
	MOVLW      1
	MOVWF      _bitManipulate+0
	MOVLW      0
	MOVWF      _bitManipulate+1
;transmitter.c,98 :: 		bitManipulate<<=bitPosition;
	MOVF       FARG_bitRead_bitPosition+0, 0
	MOVWF      R2+0
	MOVF       _bitManipulate+0, 0
	MOVWF      R0+0
	MOVF       _bitManipulate+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__bitRead88:
	BTFSC      STATUS+0, 2
	GOTO       L__bitRead89
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bitRead88
L__bitRead89:
	MOVF       R0+0, 0
	MOVWF      _bitManipulate+0
	MOVF       R0+1, 0
	MOVWF      _bitManipulate+1
;transmitter.c,99 :: 		return (signal&bitManipulate);
	MOVF       FARG_bitRead_signal+0, 0
	ANDWF      R0+0, 1
	MOVF       FARG_bitRead_signal+1, 0
	ANDWF      R0+1, 1
;transmitter.c,100 :: 		}
L_end_bitRead:
	RETURN
; end of _bitRead

_delay3ms:

;transmitter.c,102 :: 		void delay3ms(){
;transmitter.c,103 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,104 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,105 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,106 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,107 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,108 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,109 :: 		while(1){
L_delay3ms8:
;transmitter.c,110 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay3ms10
;transmitter.c,111 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,112 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,113 :: 		}
L_delay3ms10:
;transmitter.c,114 :: 		if(counter==93)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay3ms91
	MOVLW      93
	XORWF      _counter+0, 0
L__delay3ms91:
	BTFSS      STATUS+0, 2
	GOTO       L_delay3ms11
	GOTO       L_delay3ms9
L_delay3ms11:
;transmitter.c,115 :: 		}
	GOTO       L_delay3ms8
L_delay3ms9:
;transmitter.c,118 :: 		}
L_end_delay3ms:
	RETURN
; end of _delay3ms

_delay500us:

;transmitter.c,120 :: 		void delay500us(){
;transmitter.c,121 :: 		counter=0;
	CLRF       _counter+0
	CLRF       _counter+1
;transmitter.c,122 :: 		TMR0=0;
	CLRF       TMR0+0
;transmitter.c,123 :: 		OPTION_REG=0xd2;
	MOVLW      210
	MOVWF      OPTION_REG+0
;transmitter.c,124 :: 		INTCON=0x00;
	CLRF       INTCON+0
;transmitter.c,125 :: 		TMR0IE_bit=1;
	BSF        TMR0IE_bit+0, 5
;transmitter.c,126 :: 		while(1){
L_delay500us12:
;transmitter.c,127 :: 		if(TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, 2
	GOTO       L_delay500us14
;transmitter.c,128 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;transmitter.c,129 :: 		TMR0IF_bit=0;
	BCF        TMR0IF_bit+0, 2
;transmitter.c,130 :: 		}
L_delay500us14:
;transmitter.c,131 :: 		if(counter==15)break;
	MOVLW      0
	XORWF      _counter+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__delay500us93
	MOVLW      15
	XORWF      _counter+0, 0
L__delay500us93:
	BTFSS      STATUS+0, 2
	GOTO       L_delay500us15
	GOTO       L_delay500us13
L_delay500us15:
;transmitter.c,132 :: 		}
	GOTO       L_delay500us12
L_delay500us13:
;transmitter.c,135 :: 		}
L_end_delay500us:
	RETURN
; end of _delay500us

_reception:

;transmitter.c,137 :: 		void reception(){
;transmitter.c,139 :: 		decoded_signal=0;
	CLRF       _decoded_signal+0
	CLRF       _decoded_signal+1
;transmitter.c,140 :: 		for(i=0; i<10; i++){
	CLRF       reception_i_L0+0
	CLRF       reception_i_L0+1
L_reception16:
	MOVLW      128
	XORWF      reception_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception95
	MOVLW      10
	SUBWF      reception_i_L0+0, 0
L__reception95:
	BTFSC      STATUS+0, 0
	GOTO       L_reception17
;transmitter.c,141 :: 		delay20us();
	CALL       _delay20us+0
;transmitter.c,142 :: 		good=1;
	MOVLW      1
	MOVWF      _good+0
	MOVLW      0
	MOVWF      _good+1
;transmitter.c,143 :: 		if(PORTD.F4==0){
	BTFSC      PORTD+0, 4
	GOTO       L_reception19
;transmitter.c,144 :: 		good=0;
	CLRF       _good+0
	CLRF       _good+1
;transmitter.c,145 :: 		i=100;
	MOVLW      100
	MOVWF      reception_i_L0+0
	MOVLW      0
	MOVWF      reception_i_L0+1
;transmitter.c,146 :: 		}
L_reception19:
;transmitter.c,140 :: 		for(i=0; i<10; i++){
	INCF       reception_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       reception_i_L0+1, 1
;transmitter.c,147 :: 		}
	GOTO       L_reception16
L_reception17:
;transmitter.c,149 :: 		if(good==1){
	MOVLW      0
	XORWF      _good+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception96
	MOVLW      1
	XORWF      _good+0, 0
L__reception96:
	BTFSS      STATUS+0, 2
	GOTO       L_reception20
;transmitter.c,150 :: 		int shift=1;
	MOVLW      1
	MOVWF      reception_shift_L1+0
	MOVLW      0
	MOVWF      reception_shift_L1+1
;transmitter.c,151 :: 		acksignal=0;
	CLRF       _acksignal+0
	CLRF       _acksignal+1
;transmitter.c,152 :: 		while(1){
L_reception21:
;transmitter.c,153 :: 		if(PORTD.F4==0){
	BTFSC      PORTD+0, 4
	GOTO       L_reception23
;transmitter.c,154 :: 		delay725us();
	CALL       _delay725us+0
;transmitter.c,156 :: 		for(i=0; i<8; i++){
	CLRF       reception_i_L0+0
	CLRF       reception_i_L0+1
L_reception24:
	MOVLW      128
	XORWF      reception_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception97
	MOVLW      8
	SUBWF      reception_i_L0+0, 0
L__reception97:
	BTFSC      STATUS+0, 0
	GOTO       L_reception25
;transmitter.c,157 :: 		test=i%2;
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
;transmitter.c,159 :: 		if(PORTD.F4==1){
	BTFSS      PORTD+0, 4
	GOTO       L_reception27
;transmitter.c,160 :: 		acksignal^=shift;
	MOVF       reception_shift_L1+0, 0
	XORWF      _acksignal+0, 1
	MOVF       reception_shift_L1+1, 0
	XORWF      _acksignal+1, 1
;transmitter.c,161 :: 		if(test==0){
	MOVLW      0
	XORWF      _test+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception98
	MOVLW      0
	XORWF      _test+0, 0
L__reception98:
	BTFSS      STATUS+0, 2
	GOTO       L_reception28
;transmitter.c,162 :: 		decoded_signal^=0x01;
	MOVLW      1
	XORWF      _decoded_signal+0, 1
	MOVLW      0
	XORWF      _decoded_signal+1, 1
;transmitter.c,163 :: 		decoded_signal<<=1;
	RLF        _decoded_signal+0, 1
	RLF        _decoded_signal+1, 1
	BCF        _decoded_signal+0, 0
;transmitter.c,165 :: 		}
L_reception28:
;transmitter.c,166 :: 		PORTD.F5=1;
	BSF        PORTD+0, 5
;transmitter.c,167 :: 		}else{
	GOTO       L_reception29
L_reception27:
;transmitter.c,168 :: 		if(test==0){
	MOVLW      0
	XORWF      _test+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__reception99
	MOVLW      0
	XORWF      _test+0, 0
L__reception99:
	BTFSS      STATUS+0, 2
	GOTO       L_reception30
;transmitter.c,169 :: 		decoded_signal^=0x00;
;transmitter.c,170 :: 		decoded_signal<<=1;
	RLF        _decoded_signal+0, 1
	RLF        _decoded_signal+1, 1
	BCF        _decoded_signal+0, 0
;transmitter.c,172 :: 		}
L_reception30:
;transmitter.c,173 :: 		PORTD.F5=0;
	BCF        PORTD+0, 5
;transmitter.c,174 :: 		}
L_reception29:
;transmitter.c,175 :: 		shift<<=1;
	RLF        reception_shift_L1+0, 1
	RLF        reception_shift_L1+1, 1
	BCF        reception_shift_L1+0, 0
;transmitter.c,176 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,156 :: 		for(i=0; i<8; i++){
	INCF       reception_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       reception_i_L0+1, 1
;transmitter.c,178 :: 		}
	GOTO       L_reception24
L_reception25:
;transmitter.c,179 :: 		break;
	GOTO       L_reception22
;transmitter.c,180 :: 		}
L_reception23:
;transmitter.c,181 :: 		}
	GOTO       L_reception21
L_reception22:
;transmitter.c,183 :: 		decoded_signal>>=1;
	RRF        _decoded_signal+1, 1
	RRF        _decoded_signal+0, 1
	BCF        _decoded_signal+1, 7
	BTFSC      _decoded_signal+1, 6
	BSF        _decoded_signal+1, 7
;transmitter.c,184 :: 		PORTD.F4=0;
	BCF        PORTD+0, 4
;transmitter.c,185 :: 		}
L_reception20:
;transmitter.c,187 :: 		}
L_end_reception:
	RETURN
; end of _reception

_preamble:

;transmitter.c,190 :: 		void preamble(){
;transmitter.c,192 :: 		for(i=0; i<20; i++){
	CLRF       preamble_i_L0+0
	CLRF       preamble_i_L0+1
L_preamble31:
	MOVLW      128
	XORWF      preamble_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__preamble101
	MOVLW      20
	SUBWF      preamble_i_L0+0, 0
L__preamble101:
	BTFSC      STATUS+0, 0
	GOTO       L_preamble32
;transmitter.c,193 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;transmitter.c,194 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,195 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,196 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,192 :: 		for(i=0; i<20; i++){
	INCF       preamble_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       preamble_i_L0+1, 1
;transmitter.c,197 :: 		}
	GOTO       L_preamble31
L_preamble32:
;transmitter.c,198 :: 		}
L_end_preamble:
	RETURN
; end of _preamble

_transmitSignal:

;transmitter.c,202 :: 		void transmitSignal(int signal){
;transmitter.c,204 :: 		preamble();
	CALL       _preamble+0
;transmitter.c,205 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;transmitter.c,206 :: 		delay3ms();
	CALL       _delay3ms+0
;transmitter.c,207 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,208 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,209 :: 		for(j=7; j>=0; j--){
	MOVLW      7
	MOVWF      transmitSignal_j_L0+0
	MOVLW      0
	MOVWF      transmitSignal_j_L0+1
L_transmitSignal34:
	MOVLW      128
	XORWF      transmitSignal_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal103
	MOVLW      0
	SUBWF      transmitSignal_j_L0+0, 0
L__transmitSignal103:
	BTFSS      STATUS+0, 0
	GOTO       L_transmitSignal35
;transmitter.c,210 :: 		if(bitRead(signal,j)!=0){
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
	GOTO       L__transmitSignal104
	MOVLW      0
	XORWF      R0+0, 0
L__transmitSignal104:
	BTFSC      STATUS+0, 2
	GOTO       L_transmitSignal37
;transmitter.c,211 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;transmitter.c,212 :: 		}else{
	GOTO       L_transmitSignal38
L_transmitSignal37:
;transmitter.c,213 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,214 :: 		}
L_transmitSignal38:
;transmitter.c,215 :: 		delay500us();
	CALL       _delay500us+0
;transmitter.c,209 :: 		for(j=7; j>=0; j--){
	MOVLW      1
	SUBWF      transmitSignal_j_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       transmitSignal_j_L0+1, 1
;transmitter.c,216 :: 		}
	GOTO       L_transmitSignal34
L_transmitSignal35:
;transmitter.c,217 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;transmitter.c,220 :: 		decoded_signal=17;
	MOVLW      17
	MOVWF      _decoded_signal+0
	MOVLW      0
	MOVWF      _decoded_signal+1
;transmitter.c,221 :: 		for(k=0; k<200; k++){
	CLRF       transmitSignal_k_L0+0
	CLRF       transmitSignal_k_L0+1
L_transmitSignal39:
	MOVLW      128
	XORWF      transmitSignal_k_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal105
	MOVLW      200
	SUBWF      transmitSignal_k_L0+0, 0
L__transmitSignal105:
	BTFSC      STATUS+0, 0
	GOTO       L_transmitSignal40
;transmitter.c,222 :: 		if(PORTD.F4==1){
	BTFSS      PORTD+0, 4
	GOTO       L_transmitSignal42
;transmitter.c,223 :: 		reception();
	CALL       _reception+0
;transmitter.c,224 :: 		}
L_transmitSignal42:
;transmitter.c,225 :: 		delay20us();
	CALL       _delay20us+0
;transmitter.c,221 :: 		for(k=0; k<200; k++){
	INCF       transmitSignal_k_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       transmitSignal_k_L0+1, 1
;transmitter.c,226 :: 		}
	GOTO       L_transmitSignal39
L_transmitSignal40:
;transmitter.c,228 :: 		if(decoded_signal==lastSignal){
	MOVF       _decoded_signal+1, 0
	XORWF      _lastSignal+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal106
	MOVF       _lastSignal+0, 0
	XORWF      _decoded_signal+0, 0
L__transmitSignal106:
	BTFSS      STATUS+0, 2
	GOTO       L_transmitSignal43
;transmitter.c,229 :: 		ack(channel,"ON");
	MOVF       _channel+0, 0
	MOVWF      FARG_ack_value+0
	MOVLW      ?lstr1_transmitter+0
	MOVWF      FARG_ack_state+0
	CALL       _ack+0
;transmitter.c,230 :: 		}else{
	GOTO       L_transmitSignal44
L_transmitSignal43:
;transmitter.c,231 :: 		if(acksignal==11010101){
	MOVLW      0
	BTFSC      _acksignal+1, 7
	MOVLW      255
	MOVWF      R0+0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal107
	MOVF       R0+0, 0
	XORLW      168
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal107
	MOVF       _acksignal+1, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__transmitSignal107
	MOVLW      53
	XORWF      _acksignal+0, 0
L__transmitSignal107:
	BTFSS      STATUS+0, 2
	GOTO       L_transmitSignal45
;transmitter.c,232 :: 		ack(channel,"OFF");
	MOVF       _channel+0, 0
	MOVWF      FARG_ack_value+0
	MOVLW      ?lstr2_transmitter+0
	MOVWF      FARG_ack_state+0
	CALL       _ack+0
;transmitter.c,233 :: 		}else{
	GOTO       L_transmitSignal46
L_transmitSignal45:
;transmitter.c,234 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;transmitter.c,235 :: 		Lcd_Out(1,1,msg6);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg6+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;transmitter.c,236 :: 		}
L_transmitSignal46:
;transmitter.c,237 :: 		}
L_transmitSignal44:
;transmitter.c,239 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_transmitSignal47:
	DECFSZ     R13+0, 1
	GOTO       L_transmitSignal47
	DECFSZ     R12+0, 1
	GOTO       L_transmitSignal47
	DECFSZ     R11+0, 1
	GOTO       L_transmitSignal47
	NOP
	NOP
;transmitter.c,240 :: 		initial();
	CALL       _initial+0
;transmitter.c,241 :: 		}
L_end_transmitSignal:
	RETURN
; end of _transmitSignal

_encodeSignal:

;transmitter.c,245 :: 		int encodeSignal(int rawSignal){
;transmitter.c,247 :: 		int encodedSignal=0x00;
	CLRF       encodeSignal_encodedSignal_L0+0
	CLRF       encodeSignal_encodedSignal_L0+1
;transmitter.c,248 :: 		lastSignal=rawSignal;
	MOVF       FARG_encodeSignal_rawSignal+0, 0
	MOVWF      _lastSignal+0
	MOVF       FARG_encodeSignal_rawSignal+1, 0
	MOVWF      _lastSignal+1
;transmitter.c,249 :: 		state=rawSignal;
	MOVF       FARG_encodeSignal_rawSignal+0, 0
	MOVWF      _state+0
	MOVF       FARG_encodeSignal_rawSignal+1, 0
	MOVWF      _state+1
;transmitter.c,250 :: 		for(i=0; i<4; i++){
	CLRF       R3+0
	CLRF       R3+1
L_encodeSignal48:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__encodeSignal109
	MOVLW      4
	SUBWF      R3+0, 0
L__encodeSignal109:
	BTFSC      STATUS+0, 0
	GOTO       L_encodeSignal49
;transmitter.c,251 :: 		if((rawSignal&0x08)==0x08){
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
	GOTO       L__encodeSignal110
	MOVLW      8
	XORWF      R1+0, 0
L__encodeSignal110:
	BTFSS      STATUS+0, 2
	GOTO       L_encodeSignal51
;transmitter.c,252 :: 		encodedSignal^=0x02;
	MOVLW      2
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;transmitter.c,253 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;transmitter.c,254 :: 		}else{
	GOTO       L_encodeSignal52
L_encodeSignal51:
;transmitter.c,255 :: 		encodedSignal^=0x01;
	MOVLW      1
	XORWF      encodeSignal_encodedSignal_L0+0, 1
	MOVLW      0
	XORWF      encodeSignal_encodedSignal_L0+1, 1
;transmitter.c,256 :: 		encodedSignal<<=2;
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
	RLF        encodeSignal_encodedSignal_L0+0, 1
	RLF        encodeSignal_encodedSignal_L0+1, 1
	BCF        encodeSignal_encodedSignal_L0+0, 0
;transmitter.c,257 :: 		}
L_encodeSignal52:
;transmitter.c,259 :: 		rawSignal=rawSignal<<1;
	RLF        FARG_encodeSignal_rawSignal+0, 1
	RLF        FARG_encodeSignal_rawSignal+1, 1
	BCF        FARG_encodeSignal_rawSignal+0, 0
;transmitter.c,250 :: 		for(i=0; i<4; i++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;transmitter.c,260 :: 		}
	GOTO       L_encodeSignal48
L_encodeSignal49:
;transmitter.c,261 :: 		return encodedSignal>>2;
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
;transmitter.c,262 :: 		}
L_end_encodeSignal:
	RETURN
; end of _encodeSignal

_main:

;transmitter.c,266 :: 		void main() {
;transmitter.c,267 :: 		TRISB=0xF0;
	MOVLW      240
	MOVWF      TRISB+0
;transmitter.c,268 :: 		TRISC=0x00;
	CLRF       TRISC+0
;transmitter.c,269 :: 		TRISD=0x10;
	MOVLW      16
	MOVWF      TRISD+0
;transmitter.c,270 :: 		PORTC=0x00;
	CLRF       PORTC+0
;transmitter.c,271 :: 		PORTB=0x00;
	CLRF       PORTB+0
;transmitter.c,272 :: 		PORTD=0x00;
	CLRF       PORTD+0
;transmitter.c,273 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;transmitter.c,274 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;transmitter.c,275 :: 		initial();
	CALL       _initial+0
;transmitter.c,276 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main53:
	DECFSZ     R13+0, 1
	GOTO       L_main53
	DECFSZ     R12+0, 1
	GOTO       L_main53
	NOP
	NOP
;transmitter.c,277 :: 		while(1){
L_main54:
;transmitter.c,278 :: 		scan();
	CALL       _scan+0
;transmitter.c,279 :: 		}
	GOTO       L_main54
;transmitter.c,280 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_scan:

;transmitter.c,282 :: 		void scan(){
;transmitter.c,284 :: 		PORTB=0x01;
	MOVLW      1
	MOVWF      PORTB+0
;transmitter.c,285 :: 		for(i=0; i<4; i++){
	CLRF       scan_i_L0+0
	CLRF       scan_i_L0+1
L_scan56:
	MOVLW      128
	XORWF      scan_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__scan113
	MOVLW      4
	SUBWF      scan_i_L0+0, 0
L__scan113:
	BTFSC      STATUS+0, 0
	GOTO       L_scan57
;transmitter.c,286 :: 		if(RB0_bit){
	BTFSS      RB0_bit+0, 0
	GOTO       L_scan59
;transmitter.c,287 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan60
;transmitter.c,288 :: 		show("00");
	MOVLW      ?lstr3_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,289 :: 		transmitSignal(encodeSignal(0));
	CLRF       FARG_encodeSignal_rawSignal+0
	CLRF       FARG_encodeSignal_rawSignal+1
	CALL       _encodeSignal+0
	MOVF       R0+0, 0
	MOVWF      FARG_transmitSignal_signal+0
	MOVF       R0+1, 0
	MOVWF      FARG_transmitSignal_signal+1
	CALL       _transmitSignal+0
;transmitter.c,290 :: 		}
L_scan60:
;transmitter.c,291 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan61
;transmitter.c,292 :: 		show("01");
	MOVLW      ?lstr4_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,293 :: 		transmitSignal(encodeSignal(1));
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
;transmitter.c,294 :: 		}
L_scan61:
;transmitter.c,295 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan62
;transmitter.c,296 :: 		show("02");
	MOVLW      ?lstr5_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,297 :: 		transmitSignal(encodeSignal(2));
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
;transmitter.c,298 :: 		}
L_scan62:
;transmitter.c,299 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan63
;transmitter.c,300 :: 		show("03");
	MOVLW      ?lstr6_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,301 :: 		transmitSignal(encodeSignal(3));
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
;transmitter.c,302 :: 		}
L_scan63:
;transmitter.c,303 :: 		}
L_scan59:
;transmitter.c,305 :: 		if(RB1_bit){
	BTFSS      RB1_bit+0, 1
	GOTO       L_scan64
;transmitter.c,306 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan65
;transmitter.c,307 :: 		show("04");
	MOVLW      ?lstr7_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,308 :: 		transmitSignal(encodeSignal(4));
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
;transmitter.c,309 :: 		}
L_scan65:
;transmitter.c,310 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan66
;transmitter.c,311 :: 		show("05");
	MOVLW      ?lstr8_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,312 :: 		transmitSignal(encodeSignal(5));
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
;transmitter.c,313 :: 		}
L_scan66:
;transmitter.c,314 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan67
;transmitter.c,315 :: 		show("06");
	MOVLW      ?lstr9_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,316 :: 		transmitSignal(encodeSignal(6));
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
;transmitter.c,317 :: 		}
L_scan67:
;transmitter.c,318 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan68
;transmitter.c,319 :: 		show("07");
	MOVLW      ?lstr10_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,320 :: 		transmitSignal(encodeSignal(7));
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
;transmitter.c,321 :: 		}
L_scan68:
;transmitter.c,322 :: 		}
L_scan64:
;transmitter.c,324 :: 		if(RB2_bit){
	BTFSS      RB2_bit+0, 2
	GOTO       L_scan69
;transmitter.c,325 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan70
;transmitter.c,326 :: 		show("08");
	MOVLW      ?lstr11_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,327 :: 		transmitSignal(encodeSignal(8));
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
;transmitter.c,328 :: 		}
L_scan70:
;transmitter.c,329 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan71
;transmitter.c,330 :: 		show("09");
	MOVLW      ?lstr12_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,331 :: 		transmitSignal(encodeSignal(9));
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
;transmitter.c,332 :: 		}
L_scan71:
;transmitter.c,333 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan72
;transmitter.c,334 :: 		show("10");
	MOVLW      ?lstr13_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,335 :: 		transmitSignal(encodeSignal(10));
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
;transmitter.c,336 :: 		}
L_scan72:
;transmitter.c,337 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan73
;transmitter.c,338 :: 		show("11");
	MOVLW      ?lstr14_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,339 :: 		transmitSignal(encodeSignal(11));
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
;transmitter.c,340 :: 		}
L_scan73:
;transmitter.c,341 :: 		}
L_scan69:
;transmitter.c,343 :: 		if(RB3_bit){
	BTFSS      RB3_bit+0, 3
	GOTO       L_scan74
;transmitter.c,344 :: 		if(RB4_bit){
	BTFSS      RB4_bit+0, 4
	GOTO       L_scan75
;transmitter.c,345 :: 		show("12");
	MOVLW      ?lstr15_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,346 :: 		transmitSignal(encodeSignal(12));
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
;transmitter.c,347 :: 		}
L_scan75:
;transmitter.c,348 :: 		if(RB5_bit){
	BTFSS      RB5_bit+0, 5
	GOTO       L_scan76
;transmitter.c,349 :: 		show("13");
	MOVLW      ?lstr16_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,350 :: 		transmitSignal(encodeSignal(13));
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
;transmitter.c,351 :: 		}
L_scan76:
;transmitter.c,352 :: 		if(RB6_bit){
	BTFSS      RB6_bit+0, 6
	GOTO       L_scan77
;transmitter.c,353 :: 		show("14");
	MOVLW      ?lstr17_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,354 :: 		transmitSignal(encodeSignal(14));
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
;transmitter.c,355 :: 		}
L_scan77:
;transmitter.c,356 :: 		if(RB7_bit){
	BTFSS      RB7_bit+0, 7
	GOTO       L_scan78
;transmitter.c,357 :: 		show("15");
	MOVLW      ?lstr18_transmitter+0
	MOVWF      FARG_show_value+0
	CALL       _show+0
;transmitter.c,358 :: 		transmitSignal(encodeSignal(15));
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
;transmitter.c,359 :: 		}
L_scan78:
;transmitter.c,360 :: 		}
L_scan74:
;transmitter.c,361 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_scan79:
	DECFSZ     R13+0, 1
	GOTO       L_scan79
	DECFSZ     R12+0, 1
	GOTO       L_scan79
	NOP
	NOP
;transmitter.c,363 :: 		PORTB<<=1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;transmitter.c,285 :: 		for(i=0; i<4; i++){
	INCF       scan_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       scan_i_L0+1, 1
;transmitter.c,364 :: 		}
	GOTO       L_scan56
L_scan57:
;transmitter.c,365 :: 		}
L_end_scan:
	RETURN
; end of _scan
