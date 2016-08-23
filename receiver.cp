#line 1 "C:/Users/FRANKCHUKY/Desktop/final year project/receiver.c"
int good;
int test;
int counter;
int bitManipulate;
int encodedSignal=0;
void preamble();
void transmitSignal(int m);
int encodeSignal(int k);
void delay3ms();

void lookup(int channel){
 switch(channel){
 case 0: PORTD.F0^=1;
 if(PORTD.F0==1){
 transmitSignal(encodeSignal(0));
 }else{
 transmitSignal(11010101);
 }
 break;

 case 1: PORTD.F1^=1;
 if(PORTD.F1==1){
 transmitSignal(encodeSignal(1));
 }
 else{
 transmitSignal(~encodeSignal(1));
 }
 break;
 case 2: PORTD.F2^=1;
 if(PORTD.F2==1){
 transmitSignal(encodeSignal(2));
 }
 else{
 transmitSignal(~encodeSignal(2));
 }
 break;
 case 3: PORTD.F3^=1;
 if(PORTD.F3==1){
 transmitSignal(encodeSignal(3));
 }
 break;
 case 4: PORTD.F4^=1;
 if(PORTD.F4==1){
 transmitSignal(encodeSignal(4));
 }
 break;
 case 5: PORTD.F5^=1;
 if(PORTD.F5==1){
 transmitSignal(encodeSignal(5));
 }
 break;
 case 6: PORTD.F6^=1;
 if(PORTD.F6==1){
 transmitSignal(encodeSignal(6));
 }
 break;
 case 7: PORTD.F7^=1;
 if(PORTD.F7==1){
 transmitSignal(encodeSignal(7));
 }
 break;
 case 8: PORTC.F0^=1;
 if(PORTC.F0==1){
 transmitSignal(encodeSignal(8));
 }
 break;
 case 9: PORTC.F1^=1;
 if(PORTC.F1==1){
 transmitSignal(encodeSignal(9));
 }
 break;
 case 10: PORTC.F2^=1;
 if(PORTC.F2==1){
 transmitSignal(encodeSignal(10));
 }
 break;
 case 11: PORTC.F3^=1;
 if(PORTC.F3==1){
 transmitSignal(encodeSignal(11));
 }
 break;
 case 12: PORTC.F4^=1;
 if(PORTC.F4==1){
 transmitSignal(encodeSignal(12));
 }
 break;
 case 13: PORTC.F5^=1;
 if(PORTC.F5==1){
 transmitSignal(encodeSignal(13));
 }
 break;
 case 14: PORTC.F6^=1;
 if(PORTC.F6==1){
 transmitSignal(encodeSignal(14));
 }
 break;
 case 15: PORTC.F7^=1;
 if(PORTC.F7==1){
 transmitSignal(encodeSignal(15));
 }
 break;
 }
 delay3ms();
}

int bitRead(int signal,int bitPosition){
 bitManipulate=0x01;
 bitManipulate<<=bitPosition;
 return (signal&bitManipulate);
}

void bitWrite(int position,int shifts){
shifts<<=position;
encodedSignal^=shifts;
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

void reception(){
 int i;
 int decoded_signal=0;
 for(i=0; i<10; i++){
 delay20us();
 good=1;
 if(PORTB.F0==0){
 good=0;
 i=100;
 }
 }

 if(good==1){
 while(1){
 if(PORTB.F0==0){
 delay725us();

 for(i=0; i<8; i++){
 test=i%2;

 if(PORTB.F0==1){
 if(test==0){
 decoded_signal^=0x01;
 decoded_signal<<=1;

 }
 PORTB.F1=1;
 }else{
 if(test==0){
 decoded_signal^=0x00;
 decoded_signal<<=1;

 }
 PORTB.F1=0;
 }

 delay500us();

 }
 break;
 }
 }

 decoded_signal>>=1;


 PORTB.F1=0;

 lookup(decoded_signal);
 }

}

void preamble(){
 int i;
 for(i=0; i<20; i++){
 PORTB.F2=1;
 delay500us();
 PORTB.F2=0;
 delay500us();
 }
}

void transmitSignal(int signal){

 int j;
 delay3ms();
 preamble();
 PORTB.F2=1;
 delay3ms();
 PORTB.F2=0;
 delay500us();
 for(j=7; j>=0; j--){
 if(bitRead(signal,j)!=0){
 PORTB.F2=1;
 }else{
 PORTB.F2=0;
 }
 delay500us();
 }
 PORTB.F2=0;

}

void main() {
 TRISD=0x00;
 TRISB=0x01;
 TRISC=0;
 PORTC=0;
 PORTB=0;
 PORTD=0;
 while(1){
 PORTB=0;
 if(PORTB.F0==1){
 encodedSignal=0;
 reception();

 }
 }
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
