Route16Mons:
	db $19
	IF DEF(_YELLOW)
		db 22,SPEAROW
		db 22,DODUO
		db 23,RATTATA
		db 24,DODUO
		db 24,RATTATA
		db 26,DODUO
		db 23,SPEAROW
		db 24,FEAROW
		db 25,RATICATE
		db 26,RATICATE
	ELSE
		db 20,SPEAROW
		db 22,PIDGEOTTO
		db 18,RATTATA
		db 20,DODUO
		db 20,RATTATA
		db 18,PERSIAN
		db 22,DODRIO
		db 24,FEAROW
		db 25,RATICATE
		db 25,EEVEE
	ENDC

	db $00

