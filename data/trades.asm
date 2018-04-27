TradeMons: ; 71b7b (1c:5b7b)
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
IF DEF(_YELLOW)
	db LICKITUNG, DUGTRIO,   0,"GURIO@@@@@@"
	db CLEFAIRY,  MR_MIME,   0,"MILES@@@@@@"
	db BUTTERFREE,BEEDRILL,  2,"STINGER@@@@"
	db KANGASKHAN,MUK,       0,"STICKY@@@@@"
	db MEW,       MEW,       2,"BART@@@@@@@"
	db TANGELA,   PARASECT,  0,"SPIKE@@@@@@"
	db PIDGEOT,   PIDGEOT,   1,"MARTY@@@@@@"
	db GOLDUCK,   RHYDON,    1,"BUFFY@@@@@@"
	db GROWLITHE, DEWGONG,   2,"CEZANNE@@@@"
	db CUBONE,    MACHOKE,   2,"RICKY@@@@@@"
ELSE
	db VULPIX,    CHARMANDER,0,"BLAZE@@@@@@" ; Route 11 - Only place (if not starter)
	db ABRA,      MR_MIME,   0,"KRUSTY@@@@@" ; Route 2 - Only place to find
	db PIKACHU,   MARILL,    2,"MICKEY@@@@@" ; Pewter Museum - Only place to find
	db PONYTA,    HITMONLEE, 0,"BRUCE@@@@@@" ; Cinnabar Island - Only place to find
	db FEAROW,    FARFETCH_D,2,"OLIVER@@@@@" ; Vermillion City - Only place to find
	db TANGELA,   CHANSEY,   0,"EGGO@@@@@@@" ; Route 18 - Only place to find
	db NIDORINA,  SQUIRTLE,  1,"HYDRO@@@@@@" ; Cerulean City - Only place (if not starter)
	db GROWLITHE, HITMONCHAN,1,"JACKIE@@@@@" ; Cinnabar Island - Only place to find
	db VENONAT,   SPINARAK,  2,"SPIDEY@@@@@" ; Cinnabar Island - Only place to find
	db BELLSPROUT, BULBASAUR,2,"SPLIFF@@@@@" ; Route 5 - Only place (if not starter)
ENDC
