Route10Mons:
	db $0F

	IF DEF(_RED)
		db 16,VOLTORB
		db 16,SPEAROW
		db 14,VOLTORB
		db 11,EKANS
		db 13,SPEAROW
		db 15,RATTATA
		db 17,MAGNEMITE
		db 17,SANDSHREW
		db 13,EKANS
		db 17,MACHOP
	ENDC

	IF DEF(_BLUE) || DEF(_GREEN)
		db 16,VOLTORB
		db 16,SPEAROW
		db 14,VOLTORB
		db 11,SANDSHREW
		db 13,SPEAROW
		db 15,SANDSHREW
		db 17,VOLTORB
		db 17,SPEAROW
		db 13,SANDSHREW
		db 17,SANDSHREW
	ENDC

	IF DEF(_YELLOW)
		db 16,MAGNEMITE
		db 18,RATTATA
		db 18,MAGNEMITE
		db 20,MAGNEMITE
		db 17,NIDORAN_M
		db 17,NIDORAN_F
		db 22,MAGNEMITE
		db 20,RATICATE
		db 16,MACHOP
		db 18,MACHOP
	ENDC

	db $00

