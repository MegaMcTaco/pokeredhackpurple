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
	db POLIWAG,   CHARMANDER,0,"BLAZE@@@@@@" ; Route 11 - Only place (if not starter)
	db ABRA,      MR_MIME,   0,"MARCEL@@@@@" ; Route 2 - Only place to find
	db TANGELA,   OMANYTE,   2,"BONES@@@@@@" ; Pewter Museum - Only place (if not fossil)
	db PONYTA,    HITMONLEE, 0,"BRUCE@@@@@@" ; Cinnabar Island - Only place to find
	db FEAROW,    SKARMORY,  2,"TALON@@@@@@" ; Vermillion City - Only place to find
	db SLOWBRO,   LICKITUNG, 0,"GENE@@@@@@@" ; Route 18 - Only place to find
	db ODDISH,    SQUIRTLE,  1,"HYDRO@@@@@@" ; Cerulean City - Only place (if not starter)
	db GROWLITHE, HITMONCHAN,1,"JACKIE@@@@@" ; Cinnabar Island - Only place to find
	db VENONAT,   KABUTO,    2,"CHOPS@@@@@@" ; Cinnabar Island - Only place (if not fossil)
	db NIDORAN_M, BULBASAUR, 2,"MOW@@@@@@@@" ; Route 5 - Only place (if not starter)
ENDC
