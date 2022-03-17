DATA SEGMENT
    
    TUSHAR DB "ENTER A NUMBER BETWEEN 1-4: $"
    NEWL DB 10,13, "$"

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
    
    CMP AL,1
    JE ODD
    CMP AL,3
    JE ODD
    
    CMP AL,2
    JE EVEN
    CMP AL,4
    JE EVEN
    
    ODD:
        
        LEA DX,NEWL
        MOV AH,9
        INT 21H 
        
        MOV DL,'O'
        JMP DISPLAY
    
    EVEN:
        
        LEA DX,NEWL
        MOV AH,9
        INT 21H
        
        MOV DL,'E'
        JMP DISPLAY
        
    DISPLAY:
        
        MOV AH,2
        INT 21H
    
    MOV AH,4CH
    INT 21H
        
    END START
    
ENDS