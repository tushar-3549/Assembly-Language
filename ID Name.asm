
DATA SEGMENT   
   NUM1 DB ?
   NUM2 DB ?
   RESULT DB ?
   MESSAGE DB "NAME:MD.TUSHAR AHMED$"
   TUSHAR DB 10,13,"ID:201-15-3549$"
   MSG1 DB 10,13,10,13,"ENTER SECOND LAST DIGIT:$"
   MSG2 DB 10,13,"ENTER LAST DIGIT:$"
   MSG3 DB 10,13,"Summation of last 2digit is:$"

ENDS

CODE SEGMENT  
    ASSUME DS:DATA CS:CODE

START:
      MOV AX,DATA  
      MOV DS,AX         ;initialize DS
       
      LEA DX,MESSAGE    ;load & display the MESSAGE 
      MOV AH,9 
      INT 21H    
       
      MOV AX,DATA   
      MOV DS,AX          
       
      LEA DX,TUSHAR       ;load & display SHOAB
      MOV AH,9    
      INT 21H      
   
      MOV AX,DATA  
      MOV DS,AX    

      LEA DX,MSG1        ;load & display MSG1
      MOV AH,9
      INT 21H 

      MOV AH,1          ;TAKING INPUT OF NUM1
      INT 21H
      SUB AL,30H
      MOV NUM1,AL

      LEA DX,MSG2       ;load & display MSG2
      MOV AH,9
      INT 21H  

      MOV AH,1           ;TAKING INPUT OF NUM2
      INT 21H
      SUB AL,30H
      MOV NUM2,AL 
      
      ADD AL,NUM1          ;ADDING NUM1 & NUM2
      MOV RESULT,AL
      MOV AH,0   

      AAA                 ;coverting two integer value to character value
      ADD AH,30H
      ADD AL,30H
      MOV BX,AX  

      LEA DX,MSG3        ;load & display MSG3
      MOV AH,9
      INT 21H 

      MOV AH,2
      MOV DL,BH
      INT 21H  
                     ;showing result
      MOV AH,2
      MOV DL,BL
      INT 21H    

     MOV AH,4CH         ;return 0
     INT 21H
 
END START 
ENDS
