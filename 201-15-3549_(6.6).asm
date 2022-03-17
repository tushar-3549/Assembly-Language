DATA SEGMENT
    
    CHAR DB "ENTER ANY UPPERCASE LETTER: $"
    NEWL DB 10,13, "$"
    
ENDS

CODE SEGMENT
            
    ASSUME DS:DATA CS:CODE
    
    START:
    
    MOV AX,DATA
    MOV DS,AX
    
    LEA DX,CHAR
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,"A"  
    JNGE END_IF
    CMP AL,"Z"   
    JNLE END_IF
   
    JMP DISPLAY
  
    DISPLAY:
        
        MOV AH,2
        MOV DL,AL
        INT 21H 
    
    END_IF:
    
        MOV AH,4CH
        INT 21H
        
    END START
    
ENDS