MansionMonsB1:
	db $0A
	IF DEF(_RED)
		db 33,VULPIX
		db 31,KOFFING
		db 35,GROWLITHE
		db 32,PONYTA
		db 31,KOFFING
		db 40,WEEZING
		db 34,DITTO
		db 35,GRIMER
		db 42,WEEZING
		db 42,MUK
	ENDC

	IF DEF(_GREEN) || !DEF(_JAPAN) && DEF(_BLUE)
		db 33,GRIMER
		db 31,GRIMER
		db 35,VULPIX
		db 32,PONYTA
		db 31,GRIMER
		db 40,MUK
		db 34,PONYTA
		db 35,KOFFING
		db 38,MAGMAR
		db 42,WEEZING
	ENDC

	IF DEF(_JAPAN) && DEF(_BLUE)
		db 33,GRIMER
		db 31,GRIMER
		db 35,GROWLITHE
		db 32,PONYTA
		db 31,GRIMER
		db 40,MUK
		db 34,PONYTA
		db 35,KOFFING
		db 38,MUK
		db 42,WEEZING
	ENDC

	IF DEF(_YELLOW)
		db 35,GRIMER
		db 38,GRIMER
		db 37,RATICATE
		db 40,RATICATE
		db 41,MUK
		db 43,RATICATE
		db 24,DITTO
		db 46,RATICATE
		db 18,DITTO
		db 12,DITTO
	ENDC

	db $00
