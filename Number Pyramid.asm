.MODEL SMALL
.STACK 100H
.DATA
VAR DW ?
.CODE
MAIN PROC
     MOV CX,3
     MOV BX,1
     MOV VAR,1
     ADD VAR,48
    L1:
     PUSH CX
    L3:
     MOV AH,2
     MOV DL,32
     INT 21H
     LOOP L3
    
     
     MOV CX,BX
     
    L2:
     MOV AH,2 
     MOV DX,VAR
     INT 21H
     INC VAR
     LOOP L2
     
     MOV AH,2
     MOV DL,10
     INT 21H
     MOV DL,13
     INT 21H
     
     INC BX
     
     POP CX
     LOOP L1
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
