*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

        MOVE.B      #9,D1       ;move 9 to data register D1
        LEA         text,A1     ;move text to Address register A1
        MOVE        #14,D0      ;move value 14 to D0
        TRAP        #15         ;Checks for the value in D0 and perform instructions accordingly
        
        MOVE        #3,D0       ;move value to D0
        TRAP        #15         ;again trap 15

* Put program code here

    SIMHALT             ; halt simulator
    
    

* Put variables and constants here
text    dc.b   'Data Register: ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
