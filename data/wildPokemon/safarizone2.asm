ZoneMons2:
	db $1E
	IF DEF(_YELLOW)
		db 36,NIDORAN_M
		db 14,NIDORAN_F
		db 20,EXEGGCUTE
		db 25,RHYHORN
		db 23,NIDORINA
		db 28,TAUROS
		db 16,CUBONE
		db 33,KANGASKHAN
		db 25,SCYTHER
		db 15,PINSIR
	ELSE
		IF DEF(_RED) || (DEF(_JAPAN) && DEF(_BLUE))
			db 22,NIDORAN_M
		ENDC
		IF DEF(_GREEN) || (!DEF(_JAPAN) && DEF(_BLUE))
			db 22,NIDORAN_F
		ENDC
		db 26,RHYHORN
		db 23,PARAS
		db 25,EXEGGCUTE
		IF DEF(_RED) || (DEF(_JAPAN) && DEF(_BLUE))
			db 30,NIDORINO
		ENDC
		IF DEF(_GREEN) || (!DEF(_JAPAN) && DEF(_BLUE))
			db 30,NIDORINA
		ENDC
		db 27,EXEGGCUTE
		IF DEF(_RED) || (DEF(_JAPAN) && DEF(_BLUE))
			db 30,NIDORINA
		ENDC
		IF DEF(_GREEN) || (!DEF(_JAPAN) && DEF(_BLUE))
			db 30,NIDORINO
		ENDC
		db 32,VENOMOTH
		db 26,CHANSEY
		IF DEF(_RED) || DEF(_GREEN) || (!DEF(_JAPAN) && DEF(_BLUE))
			db 28,TAUROS
		ENDC
		IF (DEF(_JAPAN) && DEF(_BLUE))
			db 28,PINSIR
		ENDC
	ENDC

	db $00

