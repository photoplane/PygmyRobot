( PygmyRobotTof  )

: HI ." Bonjour tout le monde" ;

: robot CR ."           _  " CR ."        __|_|__   " CR ."       |  o o  |  " CR
."      [|   !   |]  " CR    ."     __|  <=>  |__  " CR  ."    |  ^^^^^^^^   | " CR  ."    |  | robot |  |  " CR
."    |  |_______|  |    " CR ."    |__|       |__|    " CR
;  
robot CR
HI CR

( my own return stack - ma propre pile de retour R )
VARIABLE R   
: >R  R ! ;
: R> R @ ;

( timer env. 1 sec )
: MS ( n -- n sec ) 34333 * FOR I DROP NEXT ;
: X ( - - ) 100 FOR DROP NEXT ;

( erase all text )
CODE PAGE
    print('\033c')
END-CODE
( PAGE to clear the screen )

" TofFace.fth" LOAD
" TofDW.fth" LOAD
" TofGL.fth" LOAD
" Tof.fth" LOAD
" ServoInput.fth" LOAD
" TurnG.fth" LOAD
" TurnD.fth" LOAD
" MotorAv.fth" LOAD
" MotorStop.fth" LOAD
" MotorHalt.fth" LOAD

( applications )

VARIABLE CAPF ( front position )
VARIABLE CAPG ( left position )
VARIABLE CAPD ( wrigth position )

: >CAPF CAPF ! ;
: >CAPG CAPG ! ;
: >CAPD CAPD ! ;

: CAPF> CAPF @ ;
: CAPG> CAPG @ ;
: CAPD> CAPD @ ;
: GO ( - - .S ) 10 FOR TOF  NEXT ; ( to improve value entry )

: SCAN ( - - )  TOFFACE GO TOF  290 < IF TOFDW TOF >CAPD TOFFACE   TOFGL TOF >CAPG   TOFFACE   CAPG>  CAPD>  > IF TURNG  ELSE TOFFACE TURND  THEN  THEN ;

: TOP ( - - ) 20 FOR TOF  290 < IF MOTORSTOP SCAN  ELSE MOTORAV   THEN NEXT ; 

 WORDS  CR

