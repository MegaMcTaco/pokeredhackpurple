ForestMons:
	IF DEF(_YELLOW)
		db $19
		db 3,CATERPIE
		db 4,METAPOD
		db 4,CATERPIE
		db 5,CATERPIE
		db 4,PIDGEY
		db 6,PIDGEY
		db 6,CATERPIE
		db 6,METAPOD
		db 8,PIDGEY
		db 9,PIDGEOTTO
	ELSE
		db $08
		IF DEF(_RED)
			db 5,WEEDLE
			db 5,CATERPIE
			db 7,KAKUNA
			db 7,METAPOD
			db 6,ODDISH
			db 6,VENONAT
			db 6,PIKACHU
			db 10,BEEDRILL
		ENDC
		IF DEF(_BLUE) || DEF(_GREEN)
			db 4,CATERPIE
			db 5,METAPOD
			db 3,CATERPIE
			db 5,CATERPIE
			db 4,METAPOD
			db 6,METAPOD
			db 4,KAKUNA
			db 3,WEEDLE
		ENDC

		db 3,PIKACHU
		db 5,PIKACHU
	ENDC


	db $00

