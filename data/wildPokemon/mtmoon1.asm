MoonMons1:
	db $0A
	IF DEF(_YELLOW)
		db 8,ZUBAT
		db 9,ZUBAT
		db 10,GEODUDE
		db 6,ZUBAT
		db 7,ZUBAT
		db 10,ZUBAT
		db 10,GEODUDE
		db 11,ZUBAT
		db 12,SANDSHREW
		db 11,CLEFAIRY
	ELSE
		db 8,ZUBAT
		db 7,ZUBAT
		db 9,PARAS
		db 8,GEODUDE
		db 6,SANDSHREW
		db 10,JIGGLYPUFF
		db 10,GEODUDE
		db 8,PARAS
		db 11,VULPIX
		db 8,CLEFAIRY
	ENDC
	db $00

