IslandMonsB4:
	db $0A
	IF DEF(_RED)
		db 31,HORSEA
		db 31,SHELLDER
		db 33,KRABBY
		db 33,KINGLER
		db 29,SLOWPOKE
		db 31,SEEL
		db 31,PSYDUCK
		db 29,DEWGONG
		db 39,STARMIE
		db 32,JYNX
	ENDC

	IF DEF(_GREEN) || !DEF(_JAPAN) && DEF(_BLUE)
		db 31,KRABBY
		db 31,STARYU
		db 33,KRABBY
		db 33,STARYU
		db 29,PSYDUCK
		db 31,SEEL
		db 31,PSYDUCK
		db 29,SEEL
		db 39,GOLDUCK
		db 32,GOLBAT
	ENDC

	IF DEF(_JAPAN) && DEF(_BLUE)
		db 31,KRABBY
		db 31,STARYU
		db 33,KRABBY
		db 33,STARYU
		db 29,HORSEA
		db 31,SEEL
		db 31,HORSEA
		db 29,SEEL
		db 39,JYNX
		db 32,GOLBAT
	ENDC

	IF DEF(_YELLOW)
		db 36,GOLBAT
		db 36,ZUBAT
		db 30,KRABBY
		db 32,KINGLER
		db 28,SEEL
		db 32,SEEL
		db 27,GOLBAT
		db 45,ZUBAT
		db 30,DEWGONG
		db 34,DEWGONG

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

