
_init:

;MP1Compiler.c,58 :: 		void init() {
;MP1Compiler.c,59 :: 		TRISA = 0;      // Set PORTA as output
	CLRF       TRISA+0
;MP1Compiler.c,60 :: 		TRISB = 0;      // Set PORTB as output
	CLRF       TRISB+0
;MP1Compiler.c,61 :: 		TRISC = 0;      // Set PORTC as output
	CLRF       TRISC+0
;MP1Compiler.c,62 :: 		TRISD = 0;      // Set PORTD as output
	CLRF       TRISD+0
;MP1Compiler.c,63 :: 		ADCON1.F1 = 1;
	BSF        ADCON1+0, 1
;MP1Compiler.c,64 :: 		ADCON1.F2 = 1;
	BSF        ADCON1+0, 2
;MP1Compiler.c,65 :: 		ADCON1.F3 = 0;
	BCF        ADCON1+0, 3
;MP1Compiler.c,66 :: 		}
L_end_init:
	RETURN
; end of _init

_display_digit:

;MP1Compiler.c,69 :: 		void display_digit(int digit, int display_num) {
;MP1Compiler.c,72 :: 		switch (digit) {
	GOTO       L_display_digit0
;MP1Compiler.c,73 :: 		case 0:
L_display_digit2:
;MP1Compiler.c,74 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,75 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,76 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,77 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,78 :: 		segE = 1;
	MOVLW      1
	MOVWF      R9+0
	MOVLW      0
	MOVWF      R9+1
;MP1Compiler.c,79 :: 		segF = 1;
	MOVLW      1
	MOVWF      R11+0
	MOVLW      0
	MOVWF      R11+1
;MP1Compiler.c,80 :: 		segG = 0;
	CLRF       R13+0
	CLRF       R13+1
;MP1Compiler.c,81 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,82 :: 		case 1:
L_display_digit3:
;MP1Compiler.c,83 :: 		segA = 0;
	CLRF       R1+0
	CLRF       R1+1
;MP1Compiler.c,84 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,85 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,86 :: 		segD = 0;
	CLRF       R7+0
	CLRF       R7+1
;MP1Compiler.c,87 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,88 :: 		segF = 0;
	CLRF       R11+0
	CLRF       R11+1
;MP1Compiler.c,89 :: 		segG = 0;
	CLRF       R13+0
	CLRF       R13+1
;MP1Compiler.c,90 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,91 :: 		case 2:
L_display_digit4:
;MP1Compiler.c,92 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,93 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,94 :: 		segC = 0;
	CLRF       R5+0
	CLRF       R5+1
;MP1Compiler.c,95 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,96 :: 		segE = 1;
	MOVLW      1
	MOVWF      R9+0
	MOVLW      0
	MOVWF      R9+1
;MP1Compiler.c,97 :: 		segF = 0;
	CLRF       R11+0
	CLRF       R11+1
;MP1Compiler.c,98 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,99 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,100 :: 		case 3:
L_display_digit5:
;MP1Compiler.c,101 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,102 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,103 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,104 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,105 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,106 :: 		segF = 0;
	CLRF       R11+0
	CLRF       R11+1
;MP1Compiler.c,107 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,108 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,109 :: 		case 4:
L_display_digit6:
;MP1Compiler.c,110 :: 		segA = 0;
	CLRF       R1+0
	CLRF       R1+1
;MP1Compiler.c,111 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,112 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,113 :: 		segD = 0;
	CLRF       R7+0
	CLRF       R7+1
;MP1Compiler.c,114 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,115 :: 		segF = 1;
	MOVLW      1
	MOVWF      R11+0
	MOVLW      0
	MOVWF      R11+1
;MP1Compiler.c,116 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,117 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,118 :: 		case 5:
L_display_digit7:
;MP1Compiler.c,119 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,120 :: 		segB = 0;
	CLRF       R3+0
	CLRF       R3+1
;MP1Compiler.c,121 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,122 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,123 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,124 :: 		segF = 1;
	MOVLW      1
	MOVWF      R11+0
	MOVLW      0
	MOVWF      R11+1
;MP1Compiler.c,125 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,126 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,127 :: 		case 6:
L_display_digit8:
;MP1Compiler.c,128 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,129 :: 		segB = 0;
	CLRF       R3+0
	CLRF       R3+1
;MP1Compiler.c,130 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,131 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,132 :: 		segE = 1;
	MOVLW      1
	MOVWF      R9+0
	MOVLW      0
	MOVWF      R9+1
;MP1Compiler.c,133 :: 		segF = 1;
	MOVLW      1
	MOVWF      R11+0
	MOVLW      0
	MOVWF      R11+1
;MP1Compiler.c,134 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,135 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,136 :: 		case 7:
L_display_digit9:
;MP1Compiler.c,137 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,138 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,139 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,140 :: 		segD = 0;
	CLRF       R7+0
	CLRF       R7+1
;MP1Compiler.c,141 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,142 :: 		segF = 0;
	CLRF       R11+0
	CLRF       R11+1
;MP1Compiler.c,143 :: 		segG = 0;
	CLRF       R13+0
	CLRF       R13+1
;MP1Compiler.c,144 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,145 :: 		case 8:
L_display_digit10:
;MP1Compiler.c,146 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,147 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,148 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,149 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,150 :: 		segE = 1;
	MOVLW      1
	MOVWF      R9+0
	MOVLW      0
	MOVWF      R9+1
;MP1Compiler.c,151 :: 		segF = 1;
	MOVLW      1
	MOVWF      R11+0
	MOVLW      0
	MOVWF      R11+1
;MP1Compiler.c,152 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,153 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,154 :: 		case 9:
L_display_digit11:
;MP1Compiler.c,155 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
;MP1Compiler.c,156 :: 		segB = 1;
	MOVLW      1
	MOVWF      R3+0
	MOVLW      0
	MOVWF      R3+1
;MP1Compiler.c,157 :: 		segC = 1;
	MOVLW      1
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;MP1Compiler.c,158 :: 		segD = 1;
	MOVLW      1
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;MP1Compiler.c,159 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,160 :: 		segF = 1;
	MOVLW      1
	MOVWF      R11+0
	MOVLW      0
	MOVWF      R11+1
;MP1Compiler.c,161 :: 		segG = 1;
	MOVLW      1
	MOVWF      R13+0
	MOVLW      0
	MOVWF      R13+1
;MP1Compiler.c,162 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,163 :: 		default:
L_display_digit12:
;MP1Compiler.c,164 :: 		segA = 0;
	CLRF       R1+0
	CLRF       R1+1
;MP1Compiler.c,165 :: 		segB = 0;
	CLRF       R3+0
	CLRF       R3+1
;MP1Compiler.c,166 :: 		segC = 0;
	CLRF       R5+0
	CLRF       R5+1
;MP1Compiler.c,167 :: 		segD = 0;
	CLRF       R7+0
	CLRF       R7+1
;MP1Compiler.c,168 :: 		segE = 0;
	CLRF       R9+0
	CLRF       R9+1
;MP1Compiler.c,169 :: 		segF = 0;
	CLRF       R11+0
	CLRF       R11+1
;MP1Compiler.c,170 :: 		segG = 0;
	CLRF       R13+0
	CLRF       R13+1
;MP1Compiler.c,171 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,172 :: 		}
L_display_digit0:
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit36
	MOVLW      0
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit36:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit2
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit37
	MOVLW      1
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit37:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit3
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit38
	MOVLW      2
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit38:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit4
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit39
	MOVLW      3
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit39:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit5
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit40
	MOVLW      4
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit40:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit6
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit41
	MOVLW      5
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit41:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit7
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit42
	MOVLW      6
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit42:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit8
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit43
	MOVLW      7
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit43:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit9
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit44
	MOVLW      8
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit44:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit10
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit45
	MOVLW      9
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit45:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit11
	GOTO       L_display_digit12
L_display_digit1:
;MP1Compiler.c,174 :: 		switch(display_num) {
	GOTO       L_display_digit13
;MP1Compiler.c,175 :: 		case 1:
L_display_digit15:
;MP1Compiler.c,176 :: 		PORTD.F2 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit46
	BCF        PORTD+0, 2
	GOTO       L__display_digit47
L__display_digit46:
	BSF        PORTD+0, 2
L__display_digit47:
;MP1Compiler.c,177 :: 		PORTC.F1 = segB;
	BTFSC      R3+0, 0
	GOTO       L__display_digit48
	BCF        PORTC+0, 1
	GOTO       L__display_digit49
L__display_digit48:
	BSF        PORTC+0, 1
L__display_digit49:
;MP1Compiler.c,178 :: 		PORTD.F7 = segC;
	BTFSC      R5+0, 0
	GOTO       L__display_digit50
	BCF        PORTD+0, 7
	GOTO       L__display_digit51
L__display_digit50:
	BSF        PORTD+0, 7
L__display_digit51:
;MP1Compiler.c,179 :: 		PORTA.F0 = segD;
	BTFSC      R7+0, 0
	GOTO       L__display_digit52
	BCF        PORTA+0, 0
	GOTO       L__display_digit53
L__display_digit52:
	BSF        PORTA+0, 0
L__display_digit53:
;MP1Compiler.c,180 :: 		PORTB.F2 = segE;
	BTFSC      R9+0, 0
	GOTO       L__display_digit54
	BCF        PORTB+0, 2
	GOTO       L__display_digit55
L__display_digit54:
	BSF        PORTB+0, 2
L__display_digit55:
;MP1Compiler.c,181 :: 		PORTC.F4 = segF;
	BTFSC      R11+0, 0
	GOTO       L__display_digit56
	BCF        PORTC+0, 4
	GOTO       L__display_digit57
L__display_digit56:
	BSF        PORTC+0, 4
L__display_digit57:
;MP1Compiler.c,182 :: 		PORTB.F7 = segG;
	BTFSC      R13+0, 0
	GOTO       L__display_digit58
	BCF        PORTB+0, 7
	GOTO       L__display_digit59
L__display_digit58:
	BSF        PORTB+0, 7
L__display_digit59:
;MP1Compiler.c,183 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,184 :: 		case 2:
L_display_digit16:
;MP1Compiler.c,185 :: 		PORTD.F3 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit60
	BCF        PORTD+0, 3
	GOTO       L__display_digit61
L__display_digit60:
	BSF        PORTD+0, 3
L__display_digit61:
;MP1Compiler.c,186 :: 		PORTB.F1 = segB;
	BTFSC      R3+0, 0
	GOTO       L__display_digit62
	BCF        PORTB+0, 1
	GOTO       L__display_digit63
L__display_digit62:
	BSF        PORTB+0, 1
L__display_digit63:
;MP1Compiler.c,187 :: 		PORTC.F0 = segC;
	BTFSC      R5+0, 0
	GOTO       L__display_digit64
	BCF        PORTC+0, 0
	GOTO       L__display_digit65
L__display_digit64:
	BSF        PORTC+0, 0
L__display_digit65:
;MP1Compiler.c,188 :: 		PORTA.F3 = segD;
	BTFSC      R7+0, 0
	GOTO       L__display_digit66
	BCF        PORTA+0, 3
	GOTO       L__display_digit67
L__display_digit66:
	BSF        PORTA+0, 3
L__display_digit67:
;MP1Compiler.c,189 :: 		PORTD.F6 = segE;
	BTFSC      R9+0, 0
	GOTO       L__display_digit68
	BCF        PORTD+0, 6
	GOTO       L__display_digit69
L__display_digit68:
	BSF        PORTD+0, 6
L__display_digit69:
;MP1Compiler.c,190 :: 		PORTB.F0 = segF;
	BTFSC      R11+0, 0
	GOTO       L__display_digit70
	BCF        PORTB+0, 0
	GOTO       L__display_digit71
L__display_digit70:
	BSF        PORTB+0, 0
L__display_digit71:
;MP1Compiler.c,191 :: 		PORTC.F5 = segG;
	BTFSC      R13+0, 0
	GOTO       L__display_digit72
	BCF        PORTC+0, 5
	GOTO       L__display_digit73
L__display_digit72:
	BSF        PORTC+0, 5
L__display_digit73:
;MP1Compiler.c,192 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,193 :: 		case 3:
L_display_digit17:
;MP1Compiler.c,194 :: 		PORTC.F2 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit74
	BCF        PORTC+0, 2
	GOTO       L__display_digit75
L__display_digit74:
	BSF        PORTC+0, 2
L__display_digit75:
;MP1Compiler.c,195 :: 		PORTD.F0 = segB;
	BTFSC      R3+0, 0
	GOTO       L__display_digit76
	BCF        PORTD+0, 0
	GOTO       L__display_digit77
L__display_digit76:
	BSF        PORTD+0, 0
L__display_digit77:
;MP1Compiler.c,196 :: 		PORTA.F1 = segC;
	BTFSC      R5+0, 0
	GOTO       L__display_digit78
	BCF        PORTA+0, 1
	GOTO       L__display_digit79
L__display_digit78:
	BSF        PORTA+0, 1
L__display_digit79:
;MP1Compiler.c,197 :: 		PORTB.F4 = segD;
	BTFSC      R7+0, 0
	GOTO       L__display_digit80
	BCF        PORTB+0, 4
	GOTO       L__display_digit81
L__display_digit80:
	BSF        PORTB+0, 4
L__display_digit81:
;MP1Compiler.c,198 :: 		PORTC.F6 = segE;
	BTFSC      R9+0, 0
	GOTO       L__display_digit82
	BCF        PORTC+0, 6
	GOTO       L__display_digit83
L__display_digit82:
	BSF        PORTC+0, 6
L__display_digit83:
;MP1Compiler.c,199 :: 		PORTD.F4 = segF;
	BTFSC      R11+0, 0
	GOTO       L__display_digit84
	BCF        PORTD+0, 4
	GOTO       L__display_digit85
L__display_digit84:
	BSF        PORTD+0, 4
L__display_digit85:
;MP1Compiler.c,200 :: 		PORTB.F5 = segG;
	BTFSC      R13+0, 0
	GOTO       L__display_digit86
	BCF        PORTB+0, 5
	GOTO       L__display_digit87
L__display_digit86:
	BSF        PORTB+0, 5
L__display_digit87:
;MP1Compiler.c,201 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,202 :: 		case 4:
L_display_digit18:
;MP1Compiler.c,203 :: 		PORTC.F7 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit88
	BCF        PORTC+0, 7
	GOTO       L__display_digit89
L__display_digit88:
	BSF        PORTC+0, 7
L__display_digit89:
;MP1Compiler.c,204 :: 		PORTD.F1 = segB;
	BTFSC      R3+0, 0
	GOTO       L__display_digit90
	BCF        PORTD+0, 1
	GOTO       L__display_digit91
L__display_digit90:
	BSF        PORTD+0, 1
L__display_digit91:
;MP1Compiler.c,205 :: 		PORTB.F6 = segC;
	BTFSC      R5+0, 0
	GOTO       L__display_digit92
	BCF        PORTB+0, 6
	GOTO       L__display_digit93
L__display_digit92:
	BSF        PORTB+0, 6
L__display_digit93:
;MP1Compiler.c,206 :: 		PORTA.F2 = segD;
	BTFSC      R7+0, 0
	GOTO       L__display_digit94
	BCF        PORTA+0, 2
	GOTO       L__display_digit95
L__display_digit94:
	BSF        PORTA+0, 2
L__display_digit95:
;MP1Compiler.c,207 :: 		PORTD.F5 = segE;
	BTFSC      R9+0, 0
	GOTO       L__display_digit96
	BCF        PORTD+0, 5
	GOTO       L__display_digit97
L__display_digit96:
	BSF        PORTD+0, 5
L__display_digit97:
;MP1Compiler.c,208 :: 		PORTC.F3 = segF;
	BTFSC      R11+0, 0
	GOTO       L__display_digit98
	BCF        PORTC+0, 3
	GOTO       L__display_digit99
L__display_digit98:
	BSF        PORTC+0, 3
L__display_digit99:
;MP1Compiler.c,209 :: 		PORTB.F3 = segG;
	BTFSC      R13+0, 0
	GOTO       L__display_digit100
	BCF        PORTB+0, 3
	GOTO       L__display_digit101
L__display_digit100:
	BSF        PORTB+0, 3
L__display_digit101:
;MP1Compiler.c,210 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,211 :: 		}
L_display_digit13:
	MOVLW      0
	XORWF      FARG_display_digit_display_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit102
	MOVLW      1
	XORWF      FARG_display_digit_display_num+0, 0
L__display_digit102:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit15
	MOVLW      0
	XORWF      FARG_display_digit_display_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit103
	MOVLW      2
	XORWF      FARG_display_digit_display_num+0, 0
L__display_digit103:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit16
	MOVLW      0
	XORWF      FARG_display_digit_display_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit104
	MOVLW      3
	XORWF      FARG_display_digit_display_num+0, 0
L__display_digit104:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit17
	MOVLW      0
	XORWF      FARG_display_digit_display_num+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit105
	MOVLW      4
	XORWF      FARG_display_digit_display_num+0, 0
L__display_digit105:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit18
L_display_digit14:
;MP1Compiler.c,212 :: 		}
L_end_display_digit:
	RETURN
; end of _display_digit

_display_time:

;MP1Compiler.c,215 :: 		void display_time(int minutes, int seconds) {
;MP1Compiler.c,217 :: 		display_digit(minutes / 10, 1);             // Display tens digit of minutes
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_display_time_minutes+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_time_minutes+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_display_digit_digit+0
	MOVF       R0+1, 0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      1
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,218 :: 		display_digit(minutes % 10, 2);             // Display ones digit of minutes
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_display_time_minutes+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_time_minutes+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_display_digit_digit+0
	MOVF       R0+1, 0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      2
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,220 :: 		display_digit(seconds / 10, 3);             // Display tens digit of seconds
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_display_time_seconds+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_time_seconds+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_display_digit_digit+0
	MOVF       R0+1, 0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      3
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,221 :: 		display_digit(seconds % 10, 4);             // Display ones digit of seconds
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_display_time_seconds+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_time_seconds+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_display_digit_digit+0
	MOVF       R0+1, 0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      4
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,222 :: 		}
L_end_display_time:
	RETURN
; end of _display_time

_decrement_time:

;MP1Compiler.c,225 :: 		void decrement_time() {
;MP1Compiler.c,227 :: 		if (seconds > 0) {
	MOVF       _seconds+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__decrement_time108
	MOVF       _seconds+0, 0
	SUBLW      0
L__decrement_time108:
	BTFSC      STATUS+0, 0
	GOTO       L_decrement_time19
;MP1Compiler.c,228 :: 		seconds --;
	MOVLW      1
	SUBWF      _seconds+0, 1
	BTFSS      STATUS+0, 0
	DECF       _seconds+1, 1
;MP1Compiler.c,230 :: 		} else {
	GOTO       L_decrement_time20
L_decrement_time19:
;MP1Compiler.c,231 :: 		if(minutes > 0) {
	MOVF       _minutes+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__decrement_time109
	MOVF       _minutes+0, 0
	SUBLW      0
L__decrement_time109:
	BTFSC      STATUS+0, 0
	GOTO       L_decrement_time21
;MP1Compiler.c,232 :: 		minutes --;
	MOVLW      1
	SUBWF      _minutes+0, 1
	BTFSS      STATUS+0, 0
	DECF       _minutes+1, 1
;MP1Compiler.c,233 :: 		seconds = 59;
	MOVLW      59
	MOVWF      _seconds+0
	MOVLW      0
	MOVWF      _seconds+1
;MP1Compiler.c,234 :: 		}
L_decrement_time21:
;MP1Compiler.c,235 :: 		}
L_decrement_time20:
;MP1Compiler.c,236 :: 		}
L_end_decrement_time:
	RETURN
; end of _decrement_time

_main:

;MP1Compiler.c,239 :: 		void main() {
;MP1Compiler.c,240 :: 		init();                                     // Initialize ports
	CALL       _init+0
;MP1Compiler.c,241 :: 		display_time(minutes, seconds);             // Display initial time
	MOVF       _minutes+0, 0
	MOVWF      FARG_display_time_minutes+0
	MOVF       _minutes+1, 0
	MOVWF      FARG_display_time_minutes+1
	MOVF       _seconds+0, 0
	MOVWF      FARG_display_time_seconds+0
	MOVF       _seconds+1, 0
	MOVWF      FARG_display_time_seconds+1
	CALL       _display_time+0
;MP1Compiler.c,242 :: 		while (1) {                                 // Infinite loop
L_main22:
;MP1Compiler.c,243 :: 		delay_ms(1000);                         // Decrement by 1 second
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
;MP1Compiler.c,244 :: 		decrement_time();                       // Decrement time
	CALL       _decrement_time+0
;MP1Compiler.c,245 :: 		display_time(minutes, seconds);         // Display updated time
	MOVF       _minutes+0, 0
	MOVWF      FARG_display_time_minutes+0
	MOVF       _minutes+1, 0
	MOVWF      FARG_display_time_minutes+1
	MOVF       _seconds+0, 0
	MOVWF      FARG_display_time_seconds+0
	MOVF       _seconds+1, 0
	MOVWF      FARG_display_time_seconds+1
	CALL       _display_time+0
;MP1Compiler.c,246 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
;MP1Compiler.c,248 :: 		if (minutes == 0 && seconds ==0) {
	MOVLW      0
	XORWF      _minutes+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main111
	MOVLW      0
	XORWF      _minutes+0, 0
L__main111:
	BTFSS      STATUS+0, 2
	GOTO       L_main28
	MOVLW      0
	XORWF      _seconds+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main112
	MOVLW      0
	XORWF      _seconds+0, 0
L__main112:
	BTFSS      STATUS+0, 2
	GOTO       L_main28
L__main33:
;MP1Compiler.c,249 :: 		while (1) {                         // Infinite loop
L_main29:
;MP1Compiler.c,250 :: 		display_digit(10, 1);           // Turn off tens digit of minutes
	MOVLW      10
	MOVWF      FARG_display_digit_digit+0
	MOVLW      0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      1
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,251 :: 		display_digit(10, 2);           // Turn off ones digit of minutes
	MOVLW      10
	MOVWF      FARG_display_digit_digit+0
	MOVLW      0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      2
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,252 :: 		display_digit(10, 3);           // Turn off tens digit of seconds
	MOVLW      10
	MOVWF      FARG_display_digit_digit+0
	MOVLW      0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      3
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,253 :: 		display_digit(10, 4);           // Turn off ones digit of seconds
	MOVLW      10
	MOVWF      FARG_display_digit_digit+0
	MOVLW      0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      4
	MOVWF      FARG_display_digit_display_num+0
	MOVLW      0
	MOVWF      FARG_display_digit_display_num+1
	CALL       _display_digit+0
;MP1Compiler.c,254 :: 		delay_ms(500);                  // Delay 500 ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
;MP1Compiler.c,255 :: 		display_time(0, 0);             // Display 00:00
	CLRF       FARG_display_time_minutes+0
	CLRF       FARG_display_time_minutes+1
	CLRF       FARG_display_time_seconds+0
	CLRF       FARG_display_time_seconds+1
	CALL       _display_time+0
;MP1Compiler.c,256 :: 		delay_ms(500);                  // Delay 500 ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
;MP1Compiler.c,257 :: 		}
	GOTO       L_main29
;MP1Compiler.c,258 :: 		}
L_main28:
;MP1Compiler.c,259 :: 		}
	GOTO       L_main22
;MP1Compiler.c,260 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
