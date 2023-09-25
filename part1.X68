*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    
    MOVE.B  #9,D1       ;move a byte 9 in D1
    MOVE.B  D1,D2       ;move whatever is in D1 to D2
    MOVE.B  D1,$1100    ;move whatever in data register D1 to memory location 1100
    MOVE.B  $1100,D2    ;move the value from memory location 9 to the data register D2
    MOVE.B  $1100,$100  ;move from memory location 1100 to memory location 100
    
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
