Route17Mons:
	db $19

	IF DEF(_YELLOW)
		db 26,DODUO
		db 27,FEAROW
		db 27,DODUO
		db 28,DODUO
		db 28,PONYTA
		db 30,PONYTA
		db 29,FEAROW
		db 28,DODUO
		db 32,PONYTA
		db 29,DODRIO
	ELSE
		db 20,SPEAROW
		db 22,PIDGEOTTO
		db 25,RATICATE
		db 24,DODUO
		db 27,RATICATE
		db 26,PONYTA
		db 28,DODRIO
		db 29,PERSIAN
		db 25,DITTO
		db 27,FEAROW
	ENDC

	db $00

