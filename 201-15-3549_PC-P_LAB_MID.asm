DATA SEGMENT
  MESSAGE DB "NAME : MD. TUSHAR AHMED$"
  tushar DB 10,13,"ID : 201-15-3549$"   
  M1 DB 10,13,'ENTER THE CHARACTER: $'
  M2 DB 10,13,'IN UPPER CASE: $'
  M3 DB 10,13,'IN LOWER CASE: $'
  M4 DB 10,13,'INVALID ENTRY $'  

ENDS 

CODE SEGMENT
    ASSUME DS:DATA CODE: CS
START:
    MOV AX,DATA
    MOV DS,AX
    
    LEA DX,MESSAGE
    MOV AH,9
    INT 21H    
    
    LEA DX,tushar
    MOV AH,9
    INT 21H
    
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
   
    
    CMP BL,'a'
    JGE LOWER
    
    
    
    CMP BL,'Z'
    JLE UPPER 
            
    LOWER:
    CMP BL,'z'
    JNLE L5
    
   L1:
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
    SUB BL,20H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP EXIT
             
   UPPER:
    CMP BL,'A'
    JNGE L5
    
   L2:
     
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    ADD BL,20H
        
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP EXIT
        
   L5:
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    JMP EXIT
        
    EXIT:
    MOV AH,4CH
    INT 21H
END START
ENDS





