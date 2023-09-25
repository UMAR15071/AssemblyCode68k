*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA     text,A1
    MOVE.B  #13,D0
    TRAP    #15
    
    MOVE    #2,D0
    TRAP    #15
   
    MOVE.L  #$00009999,D1
    MOVE.B  #%0111,D2
    MOVE.B  #21,D0
    TRAP    #15 
    
    MOVE    #0,D0
    TRAP    #15
    
    LEA     text2,A1
    MOVE.B  #13,D0
    TRAP    #15
    
    MOVE    #5,D0
    TRAP    #15

    LEA     text3,A1
    MOVE.L  #$00990099,D1
    MOVE.B  #%1000,D2
    MOVE.B  #21,D0
    TRAP    #15 
    
    MOVE    #0,D0
    TRAP    #15

    
* Put program code here

    SIMHALT             ; halt simulator

text    dc.b    'Enter your name ',0
text2    dc.b    'Enter a character ',0
text3    dc.b    'character: ',0
* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
