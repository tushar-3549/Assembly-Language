DATA SEGMENT
    
    TUSHAR DB "ENTER THE NUMBER: $"

CODE SEGMENT
    
    ASSUME DS:DATA CS:CODE
    
    START:
    
    MOV AX,DATA
    MOV DS,AX
    
    LEA DX,TUSHAR
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    
    CMP AL,0
    JL NEGATIVE
    JE ZERO
    JG POSITIVE
    
    NEGATIVE:
        
        MOV BL,-1
        JMP DISPLAY
    
    ZERO:
    
        MOV BL,0
        JMP DISPLAY
    
    POSITIVE:
    
        MOV BL,1
        JMP DISPLAY
    
    DISPLAY:
    
        MOV AH,2
        
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
        
        ADD BL,30H
        MOV DL,BL
        INT 21H
        
    MOV AH,4CH
    INT 21H
    
    END START
    
ENDS