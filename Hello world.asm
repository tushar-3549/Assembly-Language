

DATA SEGMENT
     MESSAGE DB "HELLO WORLD!!!$"
ENDS

CODE SEGMENT  
    ASSUME DS:DATA CS:CODE

START:
      MOV AX,DATA  ; a= data
      MOV DS,AX
      LEA DX,MESSAGE  
           
      MOV AH,9
      INT 21H
      
      MOV AH,4CH
      INT 21H      
ENDS
END START
