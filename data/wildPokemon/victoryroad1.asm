PlateauMons1:
	db $0F

	IF DEF(_YELLOW)
		db 26,GEODUDE
		db 31,GEODUDE
		db 36,GEODUDE
		db 39,ZUBAT
		db 44,ZUBAT
		db 41,GEODUDE
		db 43,ONIX
		db 45,ONIX
		db 41,GRAVELER
		db 47,GRAVELER
	ELSE
		db 24,MACHOP
		db 26,GEODUDE
		db 22,ZUBAT
		db 36,ONIX
		db 39,SANDSLASH
		db 42,RHYHORN
		db 41,GRAVELER
		db 41,ELECTABUZZ
		db 42,MACHOKE
		db 43,MAROWAK
	ENDC

	db $00

