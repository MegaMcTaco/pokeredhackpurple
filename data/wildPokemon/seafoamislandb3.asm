IslandMonsB3:
	db $0A
	IF DEF(_RED)
		db 31,SLOWPOKE
		db 31,SEEL
		db 33,STARYU
		db 33,PSYDUCK
		db 29,HORSEA
		db 31,SHELLDER
		db 31,HORSEA
		db 29,GOLDUCK
		db 39,SEADRA
		db 37,DEWGONG
	ENDC

	IF DEF(_GREEN) || !DEF(_JAPAN) && DEF(_BLUE)
		db 31,PSYDUCK
		db 31,SEEL
		db 33,PSYDUCK
		db 33,SEEL
		db 29,KRABBY
		db 31,STARYU
		db 31,KRABBY
		db 29,STARYU
		db 39,KINGLER
		db 37,DEWGONG
	ENDC

	IF DEF(_JAPAN) && DEF(_BLUE)
		db 31,HORSEA
		db 31,SEEL
		db 33,HORSEA
		db 33,SEEL
		db 29,KRABBY
		db 31,STARYU
		db 31,KRABBY
		db 29,STARYU
		db 39,KINGLER
		db 37,DEWGONG
	ENDC

	IF DEF(_YELLOW)
		db 27,GOLBAT
		db 36,ZUBAT
		db 29,KRABBY
		db 27,ZUBAT
		db 30,KINGLER
		db 26,SEEL
		db 31,KRABBY
		db 30,SEEL
		db 28,DEWGONG
		db 32,DEWGONG

		db $05
		db 25,TENTACOOL
		db 30,TENTACOOL
		db 20,TENTACOOL
		db 30,STARYU
		db 35,TENTACOOL
		db 30,STARYU
		db 40,TENTACOOL
		db 30,STARYU
		db 30,STARYU
		db 30,STARYU
	ENDC

	db $00

