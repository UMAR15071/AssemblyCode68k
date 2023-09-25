*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    LEA         text1,A1
    MOVE.B      #14,D0
    TRAP        #15
    MOVE.B      #04,D0
    TRAP        #15
    LEA         text2,A1
    MOVE.B      #14,D0
    TRAP        #15
    MOVE.B      #03,D0
    TRAP        #15
    
* Put program code here

    SIMHALT             ; halt simulator
text1    dc         'what was your gamming point'
text2    dc.b       'your point was: ',0
* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
