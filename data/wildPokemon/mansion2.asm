MansionMons2:
	db $0A
	IF DEF(_RED)
		db 32,GROWLITHE
		db 34,KOFFING
		db 34,VULPIX
		db 30,PONYTA
		db 30,MAGMAR
		db 32,PONYTA
		db 30,GRIMER
		db 28,WEEZING
		db 39,MAGMAR
		db 37,MUK
	ENDC

	IF DEF(_GREEN) || !DEF(_JAPAN) && DEF(_BLUE)
		db 32,VULPIX
		db 34,GRIMER
		db 34,GRIMER
		db 30,PONYTA
		db 30,GRIMER
		db 32,PONYTA
		db 30,KOFFING
		db 28,PONYTA
		db 39,MUK
		db 37,WEEZING
	ENDC

	IF DEF(_JAPAN) && DEF(_BLUE)
		db 32,GROWLITHE
		db 34,GRIMER
		db 34,GRIMER
		db 30,PONYTA
		db 30,GRIMER
		db 32,PONYTA
		db 30,KOFFING
		db 28,PONYTA
		db 39,MUK
		db 37,WEEZING
	ENDC

	IF DEF(_YELLOW)
		db 37,RATTATA
		db 37,RATICATE
		db 26,GRIMER
		db 29,GRIMER
		db 40,RATTATA
		db 40,RATICATE
		db 32,GRIMER
		db 35,GRIMER
		db 35,MUK
		db 38,MUK
	ENDC

	db $00

