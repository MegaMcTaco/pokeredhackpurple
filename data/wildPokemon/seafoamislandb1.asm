IslandMonsB1:
	db $0A
	IF DEF(_RED)
		db 30,STARYU
		db 30,HORSEA
		db 32,SHELLDER
		db 32,PSYDUCK
		db 28,SLOWPOKE
		db 30,SEEL
		db 30,SLOWBRO
		db 28,JYNX
		db 38,DEWGONG
		db 37,SEADRA
	ENDC

	IF DEF(_GREEN) || !DEF(_JAPAN) && DEF(_BLUE)
		db 30,SHELLDER
		db 30,KRABBY
		db 32,STARYU
		db 32,KRABBY
		db 28,PSYDUCK
		db 30,SEEL
		db 30,PSYDUCK
		db 28,SEEL
		db 38,DEWGONG
		db 37,KINGLER
	ENDC

	IF DEF(_JAPAN) && DEF(_BLUE)
		db 30,SHELLDER
		db 30,KRABBY
		db 32,STARYU
		db 32,KRABBY
		db 28,HORSEA
		db 30,SEEL
		db 30,HORSEA
		db 28,SEEL
		db 38,DEWGONG
		db 37,KINGLER
	ENDC

	IF DEF(_YELLOW)
		db 27,ZUBAT
		db 26,KRABBY
		db 36,ZUBAT
		db 28,KRABBY
		db 27,GOLBAT
		db 29,SLOWPOKE
		db 18,ZUBAT
		db 28,KINGLER
		db 22,SEEL
		db 26,SEEL
	ENDC

	db $00

