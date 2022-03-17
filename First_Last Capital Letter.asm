.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    
   L1:
    CMP AL,20H
    JE DISP
     
    CMP AL,'A'
    JNGE L2
    CMP AL,'Z'
    JNLE L2
     
    CMP AL,91
    JNL LAST
    MOV CL,0
    INC CL
    CMP CL,1
    JNE LAST
    MOV BL,AL
    
   
     
   
   LAST:
    CMP AL,64
    JNG L2
    MOV BH,AL  
    
   L2:
    INT 21H
    JMP L1
     
    
   
    
    
   

  DISP:
  
   MOV AH,2
   CMP BL,91
   JG EXIT
   
   MOV DL,BL
   INT 21H
   
   MOV DL,BH
   INT 21H 
   

    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
