;Convert upper case character to lower case using AND operation

.MODEL SMALL
.STACK 100H

.DATA
INPUT_MESSAGE db "ENTER A CHARACTER: $"

.CODE
MAIN PROC FAR
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, INPUT_MESSAGE
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    AND BL, 0DFH
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN