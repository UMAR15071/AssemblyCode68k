*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA         Health,A2
    
    LEA         Points,A1   
    MOVE.B      (A1),D0     ;indirect addressing
    ADD         #5,D0
    SUB         #5,D0
    MULS        #2,D0
    DIVS        #2,D0
* Put program code here

    SIMHALT             ; halt simulator

Health  dc.b    $10
Points  dc.b    15

* Put variables and constants here

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
