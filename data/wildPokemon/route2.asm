Route2Mons:
	db $19

	IF DEF(_YELLOW)
		db 3,RATTATA
		db 3,PIDGEY
		db 4,RATTATA
		db 4,NIDORAN_M
		db 4,NIDORAN_F
		db 5,PIDGEY
		db 6,NIDORAN_M
		db 6,NIDORAN_F
		db 7,PIDGEY
		db 7,PIDGEY
	ELSE
		db 5,PIDGEY
		db 5,RATTATA
		db 5,SPEAROW
		db 5,NIDORAN_F
		db 5,NIDORAN_M
		if DEF(_RED)
			db 5,PIKACHU
		ENDC
		if DEF(_BLUE)
			db 3,CATERPIE
		ENDC
		db 2,RATTATA
		db 5,RATTATA
		if DEF(_RED)
			db 4,WEEDLE
			db 5,WEEDLE
		ENDC
		if DEF(_BLUE)
			db 4,CATERPIE
			db 5,CATERPIE
		ENDC
	ENDC
	db $00

