#line 1 "C:/Users/FRANKCHUKY/Desktop/final year project/transmitter.c"
sbit LCD_RS at RC7_bit;
sbit LCD_EN at RC6_bit;
sbit LCD_D4 at RD2_bit;
sbit LCD_D5 at RD3_bit;
sbit LCD_D6 at RC4_bit;
sbit LCD_D7 at RC5_bit;

sbit LCD_RS_Direction at TRISC7_bit;
sbit LCD_EN_Direction at TRISC6_bit;
sbit LCD_D4_Direction at TRISD2_bit;
sbit LCD_D5_Direction at TRISD3_bit;
sbit LCD_D6_Direction at TRISC4_bit;
sbit LCD_D7_Direction at TRISC5_bit;
void reception();
char msg1[]=" CHANNEL ";
char msg2[]=" TRANSMITTING...";
char msg3[]=" IS ";
char msg4[]=" PRESS ANY KEY " ;
char msg5[]="  TO TRANSMIT ";
int counter;
int good;
int bitManipulate;
int test;

void delay725us(){
 counter=0;
 TMR0=0;
 OPTION_REG=0xd2;
 INTCON=0x00;
 TMR0IE_bit=1;
 while(1){
 if(TMR0IF_bit){
 counter++;
 TMR0IF_bit=0;
 }
 if(counter==23)break;
 }


}


void delay20us(){
 counter=0;
 TMR0=0;
 OPTION_REG=0xd2;
 INTCON=0x00;
 TMR0IE_bit=1;
 while(1){
 if(TMR0IF_bit){
 counter++;
 TMR0IF_bit=0;
 }
 if(counter==6)break;
 }


}


void initial(){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,msg4);
 Lcd_Out(2,1,msg5);
}

void show(char value[]){
 Lcd_Out(1,1,msg1);
 Lcd_Out(1,10,value);
 Lcd_Out(1,12,msg3);
 Lcd_Out(2,1,msg2);
}

void scan();
int bitRead(int signal,int bitPosition){
 bitManipulate=0x01;
 bitManipulate<<=bitPosition;
 return (signal&bitManipulate);
}

void delay3ms(){
 counter=0;
 TMR0=0;
 OPTION_REG=0xd2;
 INTCON=0x00;
 TMR0IE_bit=1;
 TMR0IF_bit=0;
 while(1){
 if(TMR0IF_bit){
 counter++;
 TMR0IF_bit=0;
 }
 if(counter==93)break;
 }


}

void delay500us(){
 counter=0;
 TMR0=0;
 OPTION_REG=0xd2;
 INTCON=0x00;
 TMR0IE_bit=1;
 while(1){
 if(TMR0IF_bit){
 counter++;
 TMR0IF_bit=0;
 }
 if(counter==15)break;
 }


}

void preamble(){
 int i;
 for(i=0; i<20; i++){
 PORTC.F0=1;
 delay500us();
 PORTC.F0=0;
 delay500us();
 }
}



void transmitSignal(int signal){
 int j;
 preamble();
 PORTC.F0=1;
 delay3ms();
 PORTC.F0=0;
 delay500us();
 for(j=7; j>=0; j--){
 if(bitRead(signal,j)!=0){
 PORTC.F0=1;
 }else{
 PORTC.F0=0;
 }
 delay500us();
 }
 PORTC.F0=0;
 initial();
}



int encodeSignal(int rawSignal){
int i;
int encodedSignal=0x00;
 for(i=0; i<4; i++){
 if((rawSignal&0x08)==0x08){
 encodedSignal^=0x02;
 encodedSignal<<=2;
 }else{
 encodedSignal^=0x01;
 encodedSignal<<=2;
 }

 rawSignal=rawSignal<<1;
 }
return encodedSignal>>2;
}



void main() {
 TRISB=0xF0;
 TRISC=0x00;
 TRISD=0x10;
 PORTC=0x00;
 PORTB=0x00;
 PORTD=0x00;
 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 initial();
 delay_ms(20);
 while(1){
 scan();
 }
 }

void scan(){
 int i;
 PORTB=0x01;
 for(i=0; i<4; i++){
 if(RB0_bit){
 if(RB4_bit){
 show("00");
 transmitSignal(encodeSignal(0));
 }
 if(RB5_bit){
 show("01");
 transmitSignal(encodeSignal(1));
 }
 if(RB6_bit){
 show("02");
 transmitSignal(encodeSignal(2));
 }
 if(RB7_bit){
 show("03");
 transmitSignal(encodeSignal(3));
 }
 }

 if(RB1_bit){
 if(RB4_bit){
 show("04");
 transmitSignal(encodeSignal(4));
 }
 if(RB5_bit){
 show("05");
 transmitSignal(encodeSignal(5));
 }
 if(RB6_bit){
 show("06");
 transmitSignal(encodeSignal(6));
 }
 if(RB7_bit){
 show("07");
 transmitSignal(encodeSignal(7));
 }
 }

 if(RB2_bit){
 if(RB4_bit){
 show("08");
 transmitSignal(encodeSignal(8));
 }
 if(RB5_bit){
 show("09");
 transmitSignal(encodeSignal(9));
 }
 if(RB6_bit){
 show("10");
 transmitSignal(encodeSignal(10));
 }
 if(RB7_bit){
 show("11");
 transmitSignal(encodeSignal(11));
 }
 }

 if(RB3_bit){
 if(RB4_bit){
 show("12");
 transmitSignal(encodeSignal(12));
 }
 if(RB5_bit){
 show("13");
 transmitSignal(encodeSignal(13));
 }
 if(RB6_bit){
 show("14");
 transmitSignal(encodeSignal(14));
 }
 if(RB7_bit){
 show("15");
 transmitSignal(encodeSignal(15));
 }
 }
 delay_ms(20);

 PORTB<<=1;
 }
 }
