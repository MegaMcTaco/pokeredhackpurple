MansionMons3:
	db $0A
	IF DEF(_RED)
		db 31,KOFFING
		db 33,GROWLITHE
		db 35,VULPIX
		db 32,PONYTA
		db 34,MAGMAR
		db 40,WEEZING
		db 34,GRIMER
		db 38,PONYTA
		db 36,GROWLITHE
		db 42,RAPIDASH
	ENDC

	IF DEF(_GREEN) || !DEF(_JAPAN) && DEF(_BLUE)
		db 31,GRIMER
		db 33,VULPIX
		db 35,GRIMER
		db 32,PONYTA
		db 34,MAGMAR
		db 40,MUK
		db 34,KOFFING
		db 38,MUK
		db 36,PONYTA
		db 42,WEEZING
	ENDC

	IF DEF(_JAPAN) && DEF(_BLUE)
		db 31,GRIMER
		db 33,GROWLITHE
		db 35,GRIMER
		db 32,PONYTA
		db 34,PONYTA
		db 40,MUK
		db 34,KOFFING
		db 38,MUK
		db 36,PONYTA
		db 42,WEEZING
	ENDC

	IF DEF(_YELLOW)
		db 40,RATTATA
		db 40,RATICATE
		db 32,GRIMER
		db 35,GRIMER
		db 43,RATTATA
		db 43,RATICATE
		db 38,GRIMER
		db 38,GRIMER
		db 38,MUK
		db 41,MUK
	ENDC

	db $00

