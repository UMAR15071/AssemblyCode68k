  ORG    $1000
START:    
    BSR RANDOM_NUMBER  

    MOVE.B #3, D0 #Display Number
    TRAP #15
    BRA END_PROG


RANDOM_NUMBER:     
    MOVE.B #8, D0 #Loads D1 with Time in 100's of Seconds since midnight (6 Bits)

    TRAP #15  #Place time in D1
   
    AND.L #$0000FFFF, D1 # AND 6 Bits to prevent any overflow

    DIVU #3, D1 #Divide by 10, 100, 1000, 10000 depending on Number range required
    
    SWAP D1 #SWAP Higher Order Word and Lower Order Word in D1

    ADDQ.W #1, D1 #Add 1 to D1.W so number is at least 1

    MOVE.W D1, D2 #Extract the number from D1.W

    CLR.L D1 # Clear contents of D1

    MOVE.W D2, D1 #Move the generated number to D1
    RTS

END_PROG:

    SIMHALT            
    END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
