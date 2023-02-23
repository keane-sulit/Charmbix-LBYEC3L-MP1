
_init:

;MP1Compiler.c,57 :: 		void init() {
;MP1Compiler.c,58 :: 		TRISA = 0;
	CLRF       TRISA+0
;MP1Compiler.c,59 :: 		TRISB = 0;
	CLRF       TRISB+0
;MP1Compiler.c,60 :: 		TRISC = 0;
	CLRF       TRISC+0
;MP1Compiler.c,61 :: 		TRISD = 0;
	CLRF       TRISD+0
;MP1Compiler.c,62 :: 		ADCON1.F1 = 1;
	BSF        ADCON1+0, 1
;MP1Compiler.c,63 :: 		ADCON1.F2 = 1;
	BSF        ADCON1+0, 2
;MP1Compiler.c,64 :: 		ADCON1.F3 = 0;
	BCF        ADCON1+0, 3
;MP1Compiler.c,65 :: 		}
L_end_init:
	RETURN
; end of _init

_display_digit:

;MP1Compiler.c,68 :: 		void display_digit(int digit, char display_num) {
;MP1Compiler.c,71 :: 		switch (digit) {
	GOTO       L_display_digit0
;MP1Compiler.c,72 :: 		case 0:
L_display_digit2:
;MP1Compiler.c,73 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,74 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,75 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,76 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,77 :: 		segE = 1;
	MOVLW      1
	MOVWF      R5+0
;MP1Compiler.c,78 :: 		segF = 1;
	MOVLW      1
	MOVWF      R6+0
;MP1Compiler.c,79 :: 		segG = 0;
	CLRF       R7+0
;MP1Compiler.c,80 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,81 :: 		case 1:
L_display_digit3:
;MP1Compiler.c,82 :: 		segA = 0;
	CLRF       R1+0
;MP1Compiler.c,83 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,84 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,85 :: 		segD = 0;
	CLRF       R4+0
;MP1Compiler.c,86 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,87 :: 		segF = 0;
	CLRF       R6+0
;MP1Compiler.c,88 :: 		segG = 0;
	CLRF       R7+0
;MP1Compiler.c,89 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,90 :: 		case 2:
L_display_digit4:
;MP1Compiler.c,91 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,92 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,93 :: 		segC = 0;
	CLRF       R3+0
;MP1Compiler.c,94 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,95 :: 		segE = 1;
	MOVLW      1
	MOVWF      R5+0
;MP1Compiler.c,96 :: 		segF = 0;
	CLRF       R6+0
;MP1Compiler.c,97 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,98 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,99 :: 		case 3:
L_display_digit5:
;MP1Compiler.c,100 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,101 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,102 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,103 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,104 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,105 :: 		segF = 0;
	CLRF       R6+0
;MP1Compiler.c,106 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,107 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,108 :: 		case 4:
L_display_digit6:
;MP1Compiler.c,109 :: 		segA = 0;
	CLRF       R1+0
;MP1Compiler.c,110 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,111 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,112 :: 		segD = 0;
	CLRF       R4+0
;MP1Compiler.c,113 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,114 :: 		segF = 1;
	MOVLW      1
	MOVWF      R6+0
;MP1Compiler.c,115 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,116 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,117 :: 		case 5:
L_display_digit7:
;MP1Compiler.c,118 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,119 :: 		segB = 0;
	CLRF       R2+0
;MP1Compiler.c,120 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,121 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,122 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,123 :: 		segF = 1;
	MOVLW      1
	MOVWF      R6+0
;MP1Compiler.c,124 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,125 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,126 :: 		case 6:
L_display_digit8:
;MP1Compiler.c,127 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,128 :: 		segB = 0;
	CLRF       R2+0
;MP1Compiler.c,129 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,130 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,131 :: 		segE = 1;
	MOVLW      1
	MOVWF      R5+0
;MP1Compiler.c,132 :: 		segF = 1;
	MOVLW      1
	MOVWF      R6+0
;MP1Compiler.c,133 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,134 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,135 :: 		case 7:
L_display_digit9:
;MP1Compiler.c,136 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,137 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,138 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,139 :: 		segD = 0;
	CLRF       R4+0
;MP1Compiler.c,140 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,141 :: 		segF = 0;
	CLRF       R6+0
;MP1Compiler.c,142 :: 		segG = 0;
	CLRF       R7+0
;MP1Compiler.c,143 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,144 :: 		case 8:
L_display_digit10:
;MP1Compiler.c,145 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,146 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,147 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,148 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,149 :: 		segE = 1;
	MOVLW      1
	MOVWF      R5+0
;MP1Compiler.c,150 :: 		segF = 1;
	MOVLW      1
	MOVWF      R6+0
;MP1Compiler.c,151 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,152 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,153 :: 		case 9:
L_display_digit11:
;MP1Compiler.c,154 :: 		segA = 1;
	MOVLW      1
	MOVWF      R1+0
;MP1Compiler.c,155 :: 		segB = 1;
	MOVLW      1
	MOVWF      R2+0
;MP1Compiler.c,156 :: 		segC = 1;
	MOVLW      1
	MOVWF      R3+0
;MP1Compiler.c,157 :: 		segD = 1;
	MOVLW      1
	MOVWF      R4+0
;MP1Compiler.c,158 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,159 :: 		segF = 1;
	MOVLW      1
	MOVWF      R6+0
;MP1Compiler.c,160 :: 		segG = 1;
	MOVLW      1
	MOVWF      R7+0
;MP1Compiler.c,161 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,162 :: 		default:
L_display_digit12:
;MP1Compiler.c,163 :: 		segA = 0;
	CLRF       R1+0
;MP1Compiler.c,164 :: 		segB = 0;
	CLRF       R2+0
;MP1Compiler.c,165 :: 		segC = 0;
	CLRF       R3+0
;MP1Compiler.c,166 :: 		segD = 0;
	CLRF       R4+0
;MP1Compiler.c,167 :: 		segE = 0;
	CLRF       R5+0
;MP1Compiler.c,168 :: 		segF = 0;
	CLRF       R6+0
;MP1Compiler.c,169 :: 		segG = 0;
	CLRF       R7+0
;MP1Compiler.c,170 :: 		break;
	GOTO       L_display_digit1
;MP1Compiler.c,171 :: 		}
L_display_digit0:
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit26
	MOVLW      0
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit26:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit2
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit27
	MOVLW      1
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit27:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit3
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit28
	MOVLW      2
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit28:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit4
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit29
	MOVLW      3
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit29:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit5
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit30
	MOVLW      4
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit30:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit6
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit31
	MOVLW      5
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit31:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit7
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit32
	MOVLW      6
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit32:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit8
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit33
	MOVLW      7
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit33:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit9
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit34
	MOVLW      8
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit34:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit10
	MOVLW      0
	XORWF      FARG_display_digit_digit+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display_digit35
	MOVLW      9
	XORWF      FARG_display_digit_digit+0, 0
L__display_digit35:
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit11
	GOTO       L_display_digit12
L_display_digit1:
;MP1Compiler.c,173 :: 		switch(display_num) {
	GOTO       L_display_digit13
;MP1Compiler.c,174 :: 		case 1:
L_display_digit15:
;MP1Compiler.c,175 :: 		PORTD.F2 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit36
	BCF        PORTD+0, 2
	GOTO       L__display_digit37
L__display_digit36:
	BSF        PORTD+0, 2
L__display_digit37:
;MP1Compiler.c,176 :: 		PORTC.F1 = segB;
	BTFSC      R2+0, 0
	GOTO       L__display_digit38
	BCF        PORTC+0, 1
	GOTO       L__display_digit39
L__display_digit38:
	BSF        PORTC+0, 1
L__display_digit39:
;MP1Compiler.c,177 :: 		PORTD.F7 = segC;
	BTFSC      R3+0, 0
	GOTO       L__display_digit40
	BCF        PORTD+0, 7
	GOTO       L__display_digit41
L__display_digit40:
	BSF        PORTD+0, 7
L__display_digit41:
;MP1Compiler.c,178 :: 		PORTA.F0 = segD;
	BTFSC      R4+0, 0
	GOTO       L__display_digit42
	BCF        PORTA+0, 0
	GOTO       L__display_digit43
L__display_digit42:
	BSF        PORTA+0, 0
L__display_digit43:
;MP1Compiler.c,179 :: 		PORTB.F2 = segE;
	BTFSC      R5+0, 0
	GOTO       L__display_digit44
	BCF        PORTB+0, 2
	GOTO       L__display_digit45
L__display_digit44:
	BSF        PORTB+0, 2
L__display_digit45:
;MP1Compiler.c,180 :: 		PORTC.F4 = segF;
	BTFSC      R6+0, 0
	GOTO       L__display_digit46
	BCF        PORTC+0, 4
	GOTO       L__display_digit47
L__display_digit46:
	BSF        PORTC+0, 4
L__display_digit47:
;MP1Compiler.c,181 :: 		PORTB.F7 = segG;
	BTFSC      R7+0, 0
	GOTO       L__display_digit48
	BCF        PORTB+0, 7
	GOTO       L__display_digit49
L__display_digit48:
	BSF        PORTB+0, 7
L__display_digit49:
;MP1Compiler.c,182 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,183 :: 		case 2:
L_display_digit16:
;MP1Compiler.c,184 :: 		PORTD.F3 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit50
	BCF        PORTD+0, 3
	GOTO       L__display_digit51
L__display_digit50:
	BSF        PORTD+0, 3
L__display_digit51:
;MP1Compiler.c,185 :: 		PORTB.F1 = segB;
	BTFSC      R2+0, 0
	GOTO       L__display_digit52
	BCF        PORTB+0, 1
	GOTO       L__display_digit53
L__display_digit52:
	BSF        PORTB+0, 1
L__display_digit53:
;MP1Compiler.c,186 :: 		PORTC.F0 = segC;
	BTFSC      R3+0, 0
	GOTO       L__display_digit54
	BCF        PORTC+0, 0
	GOTO       L__display_digit55
L__display_digit54:
	BSF        PORTC+0, 0
L__display_digit55:
;MP1Compiler.c,187 :: 		PORTA.F3 = segD;
	BTFSC      R4+0, 0
	GOTO       L__display_digit56
	BCF        PORTA+0, 3
	GOTO       L__display_digit57
L__display_digit56:
	BSF        PORTA+0, 3
L__display_digit57:
;MP1Compiler.c,188 :: 		PORTD.F6 = segE;
	BTFSC      R5+0, 0
	GOTO       L__display_digit58
	BCF        PORTD+0, 6
	GOTO       L__display_digit59
L__display_digit58:
	BSF        PORTD+0, 6
L__display_digit59:
;MP1Compiler.c,189 :: 		PORTB.F0 = segF;
	BTFSC      R6+0, 0
	GOTO       L__display_digit60
	BCF        PORTB+0, 0
	GOTO       L__display_digit61
L__display_digit60:
	BSF        PORTB+0, 0
L__display_digit61:
;MP1Compiler.c,190 :: 		PORTC.F5 = segG;
	BTFSC      R7+0, 0
	GOTO       L__display_digit62
	BCF        PORTC+0, 5
	GOTO       L__display_digit63
L__display_digit62:
	BSF        PORTC+0, 5
L__display_digit63:
;MP1Compiler.c,191 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,192 :: 		case 3:
L_display_digit17:
;MP1Compiler.c,193 :: 		PORTC.F2 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit64
	BCF        PORTC+0, 2
	GOTO       L__display_digit65
L__display_digit64:
	BSF        PORTC+0, 2
L__display_digit65:
;MP1Compiler.c,194 :: 		PORTD.F0 = segB;
	BTFSC      R2+0, 0
	GOTO       L__display_digit66
	BCF        PORTD+0, 0
	GOTO       L__display_digit67
L__display_digit66:
	BSF        PORTD+0, 0
L__display_digit67:
;MP1Compiler.c,195 :: 		PORTA.F1 = segC;
	BTFSC      R3+0, 0
	GOTO       L__display_digit68
	BCF        PORTA+0, 1
	GOTO       L__display_digit69
L__display_digit68:
	BSF        PORTA+0, 1
L__display_digit69:
;MP1Compiler.c,196 :: 		PORTB.F4 = segD;
	BTFSC      R4+0, 0
	GOTO       L__display_digit70
	BCF        PORTB+0, 4
	GOTO       L__display_digit71
L__display_digit70:
	BSF        PORTB+0, 4
L__display_digit71:
;MP1Compiler.c,197 :: 		PORTC.F6 = segE;
	BTFSC      R5+0, 0
	GOTO       L__display_digit72
	BCF        PORTC+0, 6
	GOTO       L__display_digit73
L__display_digit72:
	BSF        PORTC+0, 6
L__display_digit73:
;MP1Compiler.c,198 :: 		PORTD.F4 = segF;
	BTFSC      R6+0, 0
	GOTO       L__display_digit74
	BCF        PORTD+0, 4
	GOTO       L__display_digit75
L__display_digit74:
	BSF        PORTD+0, 4
L__display_digit75:
;MP1Compiler.c,199 :: 		PORTB.F5 = segG;
	BTFSC      R7+0, 0
	GOTO       L__display_digit76
	BCF        PORTB+0, 5
	GOTO       L__display_digit77
L__display_digit76:
	BSF        PORTB+0, 5
L__display_digit77:
;MP1Compiler.c,200 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,201 :: 		case 4:
L_display_digit18:
;MP1Compiler.c,202 :: 		PORTC.F7 = segA;
	BTFSC      R1+0, 0
	GOTO       L__display_digit78
	BCF        PORTC+0, 7
	GOTO       L__display_digit79
L__display_digit78:
	BSF        PORTC+0, 7
L__display_digit79:
;MP1Compiler.c,203 :: 		PORTD.F1 = segB;
	BTFSC      R2+0, 0
	GOTO       L__display_digit80
	BCF        PORTD+0, 1
	GOTO       L__display_digit81
L__display_digit80:
	BSF        PORTD+0, 1
L__display_digit81:
;MP1Compiler.c,204 :: 		PORTB.F6 = segC;
	BTFSC      R3+0, 0
	GOTO       L__display_digit82
	BCF        PORTB+0, 6
	GOTO       L__display_digit83
L__display_digit82:
	BSF        PORTB+0, 6
L__display_digit83:
;MP1Compiler.c,205 :: 		PORTA.F2 = segD;
	BTFSC      R4+0, 0
	GOTO       L__display_digit84
	BCF        PORTA+0, 2
	GOTO       L__display_digit85
L__display_digit84:
	BSF        PORTA+0, 2
L__display_digit85:
;MP1Compiler.c,206 :: 		PORTD.F5 = segE;
	BTFSC      R5+0, 0
	GOTO       L__display_digit86
	BCF        PORTD+0, 5
	GOTO       L__display_digit87
L__display_digit86:
	BSF        PORTD+0, 5
L__display_digit87:
;MP1Compiler.c,207 :: 		PORTC.F3 = segF;
	BTFSC      R6+0, 0
	GOTO       L__display_digit88
	BCF        PORTC+0, 3
	GOTO       L__display_digit89
L__display_digit88:
	BSF        PORTC+0, 3
L__display_digit89:
;MP1Compiler.c,208 :: 		PORTB.F3 = segG;
	BTFSC      R7+0, 0
	GOTO       L__display_digit90
	BCF        PORTB+0, 3
	GOTO       L__display_digit91
L__display_digit90:
	BSF        PORTB+0, 3
L__display_digit91:
;MP1Compiler.c,209 :: 		break;
	GOTO       L_display_digit14
;MP1Compiler.c,211 :: 		}
L_display_digit13:
	MOVF       FARG_display_digit_display_num+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit15
	MOVF       FARG_display_digit_display_num+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit16
	MOVF       FARG_display_digit_display_num+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit17
	MOVF       FARG_display_digit_display_num+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_display_digit18
L_display_digit14:
;MP1Compiler.c,214 :: 		}
L_end_display_digit:
	RETURN
; end of _display_digit

_display_time:

;MP1Compiler.c,217 :: 		void display_time(int hours, int minutes) {
;MP1Compiler.c,219 :: 		display_digit(hours / 10, 1);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_display_time_hours+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_time_hours+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_display_digit_digit+0
	MOVF       R0+1, 0
	MOVWF      FARG_display_digit_digit+1
	MOVLW      1
	MOVWF      FARG_display_digit_display_num+0
	CALL       _display_digit+0
;MP1Compiler.c,220 :: 		display_digit(hours % 10, 2);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_display_time_hours+0, 0
	MOVWF      R0+0
	MOVF       FARG_display_time_hours+1, 0
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
	CALL       _display_digit+0
;MP1Compiler.c,222 :: 		display_digit(minutes / 10, 3);
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
	MOVLW      3
	MOVWF      FARG_display_digit_display_num+0
	CALL       _display_digit+0
;MP1Compiler.c,223 :: 		display_digit(minutes % 10, 4);
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
	MOVLW      4
	MOVWF      FARG_display_digit_display_num+0
	CALL       _display_digit+0
;MP1Compiler.c,224 :: 		}
L_end_display_time:
	RETURN
; end of _display_time

_main:

;MP1Compiler.c,227 :: 		void main() {
;MP1Compiler.c,228 :: 		init(); // Initialize ports
	CALL       _init+0
;MP1Compiler.c,229 :: 		display_time(hours, minutes);   // Display initial time
	MOVF       _hours+0, 0
	MOVWF      FARG_display_time_hours+0
	MOVF       _hours+1, 0
	MOVWF      FARG_display_time_hours+1
	MOVF       _minutes+0, 0
	MOVWF      FARG_display_time_minutes+0
	MOVF       _minutes+1, 0
	MOVWF      FARG_display_time_minutes+1
	CALL       _display_time+0
;MP1Compiler.c,230 :: 		while (1) { // Infinite loop
L_main19:
;MP1Compiler.c,231 :: 		delay_ms(60000);   // Increment minutes every minute
	MOVLW      6
	MOVWF      R10+0
	MOVLW      242
	MOVWF      R11+0
	MOVLW      231
	MOVWF      R12+0
	MOVLW      105
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	DECFSZ     R10+0, 1
	GOTO       L_main21
;MP1Compiler.c,232 :: 		minutes++;  // Increment time
	INCF       _minutes+0, 1
	BTFSC      STATUS+0, 2
	INCF       _minutes+1, 1
;MP1Compiler.c,233 :: 		if (minutes == 60) { // Check if minutes is 60
	MOVLW      0
	XORWF      _minutes+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	MOVLW      60
	XORWF      _minutes+0, 0
L__main94:
	BTFSS      STATUS+0, 2
	GOTO       L_main22
;MP1Compiler.c,234 :: 		minutes = 0;    // Reset minutes if 60
	CLRF       _minutes+0
	CLRF       _minutes+1
;MP1Compiler.c,235 :: 		hours++;        // Increment hours
	INCF       _hours+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hours+1, 1
;MP1Compiler.c,236 :: 		if (hours == 24) {  // Check if hours is 24
	MOVLW      0
	XORWF      _hours+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main95
	MOVLW      24
	XORWF      _hours+0, 0
L__main95:
	BTFSS      STATUS+0, 2
	GOTO       L_main23
;MP1Compiler.c,237 :: 		hours = 0;  // Reset hours to 0 if 24
	CLRF       _hours+0
	CLRF       _hours+1
;MP1Compiler.c,238 :: 		}
L_main23:
;MP1Compiler.c,239 :: 		}
L_main22:
;MP1Compiler.c,240 :: 		display_time(hours, minutes);
	MOVF       _hours+0, 0
	MOVWF      FARG_display_time_hours+0
	MOVF       _hours+1, 0
	MOVWF      FARG_display_time_hours+1
	MOVF       _minutes+0, 0
	MOVWF      FARG_display_time_minutes+0
	MOVF       _minutes+1, 0
	MOVWF      FARG_display_time_minutes+1
	CALL       _display_time+0
;MP1Compiler.c,241 :: 		}
	GOTO       L_main19
;MP1Compiler.c,242 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
