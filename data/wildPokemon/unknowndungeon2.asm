DungeonMons2:
	db $0F
	IF DEF(_YELLOW)
		db 52,GOLBAT
		db 57,GOLBAT
		db 50,GRAVELER
		db 56,SANDSLASH
		db 50,RHYHORN
		db 60,DITTO
		db 58,GLOOM
		db 58,WEEPINBELL
		db 60,RHYDON
		db 58,RHYDON
	ELSE
		db 51,DODRIO
		db 51,VENOMOTH
		db 51,KADABRA
		db 52,RHYDON
		IF DEF(_RED) || DEF(_GREEN) || (DEF(_BLUE) && !DEF(_JAPAN))
			db 52,MAROWAK
		ENDC
		IF (DEF(_BLUE) && DEF(_JAPAN))
			db 52,MAROWAK
		ENDC
		db 52,ELECTRODE
		db 56,KADABRA
		db 54,WIGGLYTUFF
		db 55,DITTO
		db 60,DITTO
	ENDC

	db $00

