.MODEL SMALL

DATA SEGMENT
    
    MSG1 DB " PLEASE ENTER THE 1st CHARACTER: $"
    MSG2 DB 10,13, "PLEASE ENTER THE 2nd CHARACTER: $"
    MSG3 DB 10,13, "AFTER COMPARING: $"
    
ENDS

CODE SEGMENT
   
    ASSUME DS:DATA CS:DATA
    
    START: 
    
    MOV AX,DATA
    MOV DS,AX
    
    LEA DX,MSG1     ;PRINTING MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;TAKING FIRST INPUT
    INT 21H
    SUB AL,30H
    MOV BL,AL
    
    LEA DX,MSG2     ;PRINTING MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;TAKING SECOND INPUT                 
    INT 21H
    SUB AL,30H
    MOV BH,AL
    
    LEA DX,MSG3     ;PRINTING MSG3
    MOV AH,9
    INT 21H
    
    CMP BL,BH       ;COMPARING IF BL <= BH, PRINT BL
    
    JNBE ELSE_      ;IF NOT BL <= BH, PRINT BH 
    
    ADD BL,30H
    MOV DL,BL
    JMP DISPLAY
    
    ELSE_:          ;CONDITION BRANCE
    
      ADD BH,30H   
      MOV DL,BH

    DISPLAY:        ;DISPLAY BRANCE

      MOV AH,2
      INT 21H
    
    MOV AH,4CH
    INT 21H
    
    END START
    
ENDS    