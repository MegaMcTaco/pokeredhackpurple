Route22Mons:
	db $19
	IF DEF(_RED) || (DEF(_JAPAN) && DEF(_BLUE))
		db 3,RATTATA
		db 3,NIDORAN_M
		db 4,RATTATA
		db 4,NIDORAN_M
		db 2,RATTATA
		db 2,NIDORAN_M
		db 3,SPEAROW
		db 5,PIKACHU
		db 3,NIDORAN_F
		db 4,NIDORAN_F
	ENDC
	IF DEF(_GREEN) || (!DEF(_JAPAN) && DEF(_BLUE))
		db 3,RATTATA
		db 3,NIDORAN_F
		db 4,RATTATA
		db 4,NIDORAN_F
		db 2,RATTATA
		db 2,NIDORAN_F
		db 3,SPEAROW
		db 5,SPEAROW
		db 3,NIDORAN_M
		db 4,NIDORAN_M
	ENDC
	IF DEF(_YELLOW)
		db 2,NIDORAN_M
		db 2,NIDORAN_F
		db 3,MANKEY
		db 3,RATTATA
		db 4,NIDORAN_M
		db 4,NIDORAN_F
		db 5,MANKEY
		db 2,SPEAROW
		db 4,SPEAROW
		db 6,SPEAROW
	ENDC
	db $00

