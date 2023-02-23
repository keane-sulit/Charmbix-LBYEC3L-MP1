#line 1 "//Mac/Home/Documents/GitHub/Charmbix-LBYEC3L-MP1/mikroC/MP1Compiler.c"
#line 53 "//Mac/Home/Documents/GitHub/Charmbix-LBYEC3L-MP1/mikroC/MP1Compiler.c"
unsigned int hours = 13;
unsigned int minutes = 30;


void init() {
 TRISA = 0;
 TRISB = 0;
 TRISC = 0;
 TRISD = 0;
 ADCON1.F1 = 1;
 ADCON1.F2 = 1;
 ADCON1.F3 = 0;
}


void display_digit(int digit, char display_num) {
 char segA, segB, segC, segD, segE, segF, segG;

 switch (digit) {
 case 0:
 segA = 1;
 segB = 1;
 segC = 1;
 segD = 1;
 segE = 1;
 segF = 1;
 segG = 0;
 break;
 case 1:
 segA = 0;
 segB = 1;
 segC = 1;
 segD = 0;
 segE = 0;
 segF = 0;
 segG = 0;
 break;
 case 2:
 segA = 1;
 segB = 1;
 segC = 0;
 segD = 1;
 segE = 1;
 segF = 0;
 segG = 1;
 break;
 case 3:
 segA = 1;
 segB = 1;
 segC = 1;
 segD = 1;
 segE = 0;
 segF = 0;
 segG = 1;
 break;
 case 4:
 segA = 0;
 segB = 1;
 segC = 1;
 segD = 0;
 segE = 0;
 segF = 1;
 segG = 1;
 break;
 case 5:
 segA = 1;
 segB = 0;
 segC = 1;
 segD = 1;
 segE = 0;
 segF = 1;
 segG = 1;
 break;
 case 6:
 segA = 1;
 segB = 0;
 segC = 1;
 segD = 1;
 segE = 1;
 segF = 1;
 segG = 1;
 break;
 case 7:
 segA = 1;
 segB = 1;
 segC = 1;
 segD = 0;
 segE = 0;
 segF = 0;
 segG = 0;
 break;
 case 8:
 segA = 1;
 segB = 1;
 segC = 1;
 segD = 1;
 segE = 1;
 segF = 1;
 segG = 1;
 break;
 case 9:
 segA = 1;
 segB = 1;
 segC = 1;
 segD = 1;
 segE = 0;
 segF = 1;
 segG = 1;
 break;
 default:
 segA = 0;
 segB = 0;
 segC = 0;
 segD = 0;
 segE = 0;
 segF = 0;
 segG = 0;
 break;
 }

 switch(display_num) {
 case 1:
 PORTD.F2 = segA;
 PORTC.F1 = segB;
 PORTD.F7 = segC;
 PORTA.F0 = segD;
 PORTB.F2 = segE;
 PORTC.F4 = segF;
 PORTB.F7 = segG;
 break;
 case 2:
 PORTD.F3 = segA;
 PORTB.F1 = segB;
 PORTC.F0 = segC;
 PORTA.F3 = segD;
 PORTD.F6 = segE;
 PORTB.F0 = segF;
 PORTC.F5 = segG;
 break;
 case 3:
 PORTC.F2 = segA;
 PORTD.F0 = segB;
 PORTA.F1 = segC;
 PORTB.F4 = segD;
 PORTC.F6 = segE;
 PORTD.F4 = segF;
 PORTB.F5 = segG;
 break;
 case 4:
 PORTC.F7 = segA;
 PORTD.F1 = segB;
 PORTB.F6 = segC;
 PORTA.F2 = segD;
 PORTD.F5 = segE;
 PORTC.F3 = segF;
 PORTB.F3 = segG;
 break;

 }


}


void display_time(int hours, int minutes) {

 display_digit(hours / 10, 1);
 display_digit(hours % 10, 2);

 display_digit(minutes / 10, 3);
 display_digit(minutes % 10, 4);
}


void main() {
 init();
 display_time(hours, minutes);
 while (1) {
 delay_ms(60000);
 minutes++;
 if (minutes == 60) {
 minutes = 0;
 hours++;
 if (hours == 24) {
 hours = 0;
 }
 }
 display_time(hours, minutes);
 }
}
