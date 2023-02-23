/* [LBYEC3L] Machine Problem 1 - 12-hour Clock
* ===========================
* Authors: Dayrit, Bettina Gaille H., BS-ECE2
*          Guevarra, Gia Kyla S., BS-ECE2
*          Rodriguez, Mariah Venice A., BS-ECE2
*          Sulit, Keane Dwight A., BS-ECE2
* ===========================
* Description:
* This program is a firmware for a 12-hour clock circuit HHMM that 
* has an initial time of 01:30. Seven-segment displays are used to 
* display the time in hours and minutes. Seven-segment 1 and 2 are 
* used to display the hours, while seven-segment 3 and 4 are used 
* to display the minutes. The microcontroller is PIC16F877A. The 
* compiler used is mikroC PRO for PIC. The simulation software 
* used is Proteus 8 Professional.
* ===========================
* The port pins used are:
*   - Seven-segment A1: RD2
*   - Seven-segment B1: RC1
*   - Seven-segment C1: RD7
*   - Seven-segment D1: RA0
*   - Seven-segment E1: RB2
*   - Seven-segment F1: RC4
*   - Seven-segment G1: RB7
*
*   - Seven-segment A2: RD3
*   - Seven-segment B2: RB1
*   - Seven-segment C2: RC0
*   - Seven-segment D2: RA3
*   - Seven-segment E2: RD6
*   - Seven-segment F2: RB0
*   - Seven-segment G2: RC5
*
*   - Seven-segment A3: RC2
*   - Seven-segment B3: RD0
*   - Seven-segment C3: RA1
*   - Seven-segment D3: RB4
*   - Seven-segment E3: RC6
*   - Seven-segment F3: RD4
*   - Seven-segment G3: RB5
*
*   - Seven-segment A4: RC7
*   - Seven-segment B4: RD1
*   - Seven-segment C4: RB6
*   - Seven-segment D4: RA2
*   - Seven-segment E4: RD5
*   - Seven-segment F4: RC3
*   - Seven-segment G4: RB3
* ===========================
*/

// Global variables
unsigned int hours = 1;
unsigned int minutes = 30;

// Initialization function
void init() {
    TRISA = 0;
    TRISB = 0;
    TRISC = 0;
    TRISD = 0;
    ADCON1.F1 = 1;
    ADCON1.F2 = 1;
    ADCON1.F3 = 0;
}

// Display digit function
void display_digit(int digit, char display_num) {
    char segA, segB, segC, segD, segE, segF, segG;
    // Seven-segment display cases
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
    // Seven-segment display cases based on given specifications
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

// Display time function
void display_time(int hours, int minutes) {
    // Display hours
    display_digit(hours / 10, 1);
    display_digit(hours % 10, 2);
    // Display minutes
    display_digit(minutes / 10, 3);
    display_digit(minutes % 10, 4);
}

// Main function
void main() {
    init(); // Initialize ports
    display_time(hours, minutes);   // Display initial time
    while (1) { // Infinite loop
        delay_ms(60000);   // Increment minutes every minute
        minutes++;  // Increment time
        if (minutes == 60) { // Check if minutes is 60
            minutes = 0;    // Reset minutes if 60
            hours++;        // Increment hours
            if (hours == 13) {  // Check if hours is 13
                hours = 1;  // Reset hours to 1 if 13
            }
        }
        display_time(hours, minutes);
    }
}