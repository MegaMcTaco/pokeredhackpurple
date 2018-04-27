TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw CamperData
	dw PicnickerData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw CoupleData
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw SwimmerFData ; Shared with Beauty
	dw RocketFData ; Shared with male Rocket
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw AceTrainerMData
	dw AceTrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData
	dw HexManiacData
	dw PkmnTrainerData

; first is the name, followed by the first byte of the data

; if not a Special Trainer,
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; FF-terminated
; if first byte == SPECIAL_TRAINER, then
	; each Pokemon entry is Level, Species, Moveset
	; FF-terminated
; if first byte == SPECIAL_TRAINER2, then
	; second byte is custom sprite number
	; third byte is custom AI number
	; each Pokemon entry is Level, Species, Moveset
	; FF-terminated
; if first byte == CUSTOM_PIC, then
	; second byte is custom sprite number
	; third byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; FF-terminated
; if first byte == SPECIAL_LEVELS, then
	; each Pokemon entry is Level, Species
	; FF-terminated

BrockData:
	db "BROCK@"
	db SPECIAL_TRAINER
	
	db 12,GEODUDE
	moveset TACKLE, DEFENSE_CURL, 0, 0
	
	db 14,ONIX
	moveset TACKLE, BIND, HARDEN, ROCK_SLIDE
	db $FF
	
MistyData:
	db "MISTY@"
	db SPECIAL_TRAINER
	
	db 18,STARYU
	moveset TACKLE, HARDEN, RECOVER, WATER_GUN
	
	db 21,STARMIE
	moveset TACKLE, SWIFT, RECOVER, BUBBLEBEAM
	db $FF
	
LtSurgeData:
	db "LT.SURGE@"
	db SPECIAL_TRAINER
	
	db 21,VOLTORB
	moveset THUNDERBOLT, TACKLE, SCREECH, SONICBOOM
	
	db 18,PIKACHU
	moveset THUNDERBOLT, THUNDER_WAVE, QUICK_ATTACK, DOUBLE_TEAM
	
	db 24,RAICHU
	moveset THUNDERBOLT, THUNDER_WAVE, QUICK_ATTACK, DOUBLE_TEAM
	db $FF
	
ErikaData:
	db "ERIKA@"
	db SPECIAL_TRAINER
	
	db 29,VICTREEBEL
	moveset STUN_SPORE, ACID, POISONPOWDER, MEGA_DRAIN
	
	db 24,TANGELA
	moveset POISONPOWDER, CONSTRICT, VINE_WHIP, MEGA_DRAIN
	
	db 29,BELLOSSOM
	moveset SLEEP_POWDER, SOLARBEAM, MEGA_DRAIN, PETAL_DANCE
	db $FF
	
KogaData:
	db "KOGA@"
	db SPECIAL_TRAINER
	
	db 37,VENOMOTH
	moveset CONFUSION, GUST, SUPERSONIC, TOXIC
	
	db 39,MUK
	moveset MINIMIZE, SLUDGE, ACID_ARMOR, TOXIC
	
	db 37,CROBAT
	moveset DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, CONFUSE_RAY
	
	db 43,WEEZING
	moveset TACKLE, SLUDGE, SMOKESCREEN, TOXIC
	db $FF
	
BlaineData:
	db "BLAINE@"
	db SPECIAL_TRAINER
	
	db 42,GROWLITHE
	moveset BITE, EMBER, TAKE_DOWN, FIRE_BLAST
	
	db 40,PONYTA
	moveset STOMP, AGILITY, FIRE_SPIN, FIRE_BLAST
	
	db 42,RAPIDASH
	moveset STOMP, AGILITY, FIRE_SPIN, FIRE_BLAST
	
	db 45,ARCANINE
	moveset BITE, EMBER, TAKE_DOWN, FIRE_BLAST
	
	db 47,MAGMAR
	moveset FIRE_PUNCH, CONFUSE_RAY, FIRE_BLAST, SMOG
	db $FF
	
SabrinaData:
	db "SABRINA@"
	db SPECIAL_TRAINER
	
	db 38,KADABRA
	moveset DISABLE, PSYBEAM, RECOVER, PSYCHIC_M
	
	db 37,MR_MIME
	moveset CONFUSION, BARRIER, LIGHT_SCREEN, DOUBLESLAP
	
	db 38,ESPEON
	moveset SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	
	db 43,ALAKAZAM
	moveset SHADOW_BALL, RECOVER, PSYWAVE, REFLECT
	db $FF
	
GiovanniData:
	; Hideout
	db "GIOVANNI@"
	db SPECIAL_TRAINER
	
	db 25,ONIX
	moveset ROCK_THROW, BIND, RAGE, HARDEN
	
	db 24,RHYHORN
	moveset STOMP, FURY_ATTACK, LEER, TAIL_WHIP
	
	db 29,KANGASKHAN
	moveset BODY_SLAM, MEGA_PUNCH, BITE, TAIL_WHIP
	db $FF
	
	
	; Silph Co
	db "GIOVANNI@"
	db SPECIAL_TRAINER
	
	db 35,ONIX
	moveset SLAM, BIND, RAGE, ROCK_THROW
	
	db 37,RHYHORN
	moveset FURY_ATTACK, LEER, STOMP, ROCK_SLIDE
	
	db 37,NIDORINO
	moveset HORN_ATTACK, POISON_STING, DOUBLE_KICK, FURY_ATTACK
	
	db 41,NIDOQUEEN
	moveset DOUBLE_KICK, TAIL_WHIP, POISON_STING, BODY_SLAM
	db $FF
	
	
	; Gym Battle
	db "GIOVANNI@"
	db SPECIAL_TRAINER
	
	db 45,RHYDON
	moveset TAKE_DOWN, ROCK_SLIDE, LEER, EARTHQUAKE
	
	db 42,STEELIX
	moveset IRON_TAIL, ROCK_SLIDE, RAGE, EARTHQUAKE
	
	db 44,NIDOQUEEN
	moveset DOUBLE_KICK, EARTHQUAKE, POISON_STING, BODY_SLAM
	
	db 45,NIDOKING
	moveset DOUBLE_KICK, EARTHQUAKE, POISON_STING, THRASH
	
	db 50,KANGASKHAN
	moveset TAKE_DOWN, MEGA_PUNCH, BODY_SLAM, EARTHQUAKE
	db $FF
	
LoreleiData:
	db "LORELEI@"
	db SPECIAL_TRAINER
	
	db 54,DEWGONG
	moveset SURF, ICE_BEAM, AURORA_BEAM, TAKE_DOWN
	
	db 53,CLOYSTER
	moveset CLAMP, SPIKE_CANNON, SUPERSONIC, AURORA_BEAM
	
	db 54,SLOWKING
	moveset WATER_GUN, AMNESIA, SURF, PSYCHIC_M
	
	db 56,JYNX
	moveset DOUBLESLAP, ICE_PUNCH, BODY_SLAM, THRASH
	
	db 56,LAPRAS
	moveset BODY_SLAM, CONFUSE_RAY, HYDRO_PUMP, ICE_BEAM
	db $FF
	
BrunoData:
	db "BRUNO@"
	db SPECIAL_TRAINER
	
	db 53,ONIX
	moveset EARTHQUAKE, ROCK_THROW, SLAM, HARDEN
	
	db 55,HITMONCHAN
	moveset MEGA_PUNCH, ICE_PUNCH, THUNDERPUNCH, FIRE_PUNCH
	
	db 55,HITMONLEE
	moveset MEGA_KICK, HI_JUMP_KICK, DOUBLE_KICK, DOUBLE_TEAM
	
	db 56,STEELIX
	moveset RAGE, IRON_TAIL, SLAM, ROCK_SLIDE
	
	db 58,MACHAMP
	moveset BODY_SLAM, ROCK_SLIDE, FISSURE, SUBMISSION
	db $FF	
	
AgathaData:
	db "AGATHA@"
	db SPECIAL_TRAINER
	
	db 56,ARBOK
	moveset GLARE, ACID, BITE, WRAP
	
	db 56,HAUNTER
	moveset CONFUSE_RAY, DREAM_EATER, NIGHT_SHADE, HYPNOSIS
	
	db 55,HOUNDOOM
	moveset FLAMETHROWER, TAKE_DOWN, QUICK_ATTACK, BITE
	
	db 58,CROBAT
	moveset SUPERSONIC, CONFUSE_RAY, WING_ATTACK, HAZE
	
	db 60,GENGAR
	moveset CONFUSE_RAY, SHADOW_BALL, TOXIC, NIGHT_SHADE
	db $FF
	
LanceData:
	db "LANCE@"
	db SPECIAL_TRAINER
	
	db 58,GYARADOS
	moveset HYDRO_PUMP, DRAGON_RAGE, HYPER_BEAM, SURF
	
	db 56,CHARIZARD
	moveset FLAMETHROWER, FIRE_BLAST, SLASH, FIRE_SPIN
	
	db 56,KINGDRA
	moveset WATER_GUN, DRAGON_RAGE, WATERFALL, FOCUS_ENERGY
	
	db 60,AERODACTYL
	moveset AERIAL_ACE, DRAGON_RAGE, HYPER_BEAM, FLY
	
	db 62,DRAGONITE
	moveset AMNESIA, SLAM, BARRIER, HYPER_BEAM
	db $FF	
	
Green1Data:
	; Oak's Lab
	db "<RIVAL>@",5,SQUIRTLE,$FF
	db "<RIVAL>@",5,BULBASAUR,$FF
	db "<RIVAL>@",5,CHARMANDER,$FF
	
	
	; Beside Viridian
	db "<RIVAL>@",9,PIDGEY,SQUIRTLE,$FF
	db "<RIVAL>@",9,PIDGEY,BULBASAUR,$FF
	db "<RIVAL>@",9,PIDGEY,CHARMANDER,$FF
	
	
	; Cerulean
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 18,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 15,ABRA
	moveset TELEPORT, 0, 0, 0
	
	db 15,RATTATA
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, 0
	
	db 17,SQUIRTLE
	moveset TACKLE, TAIL_WHIP, BUBBLE, WATER_GUN
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 18,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 15,ABRA
	moveset TELEPORT, 0, 0, 0
	
	db 15,RATTATA
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, 0
	
	db 17,BULBASAUR
	moveset SLEEP_POWDER, POISONPOWDER, LEECH_SEED, VINE_WHIP
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 18,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 15,ABRA
	moveset TELEPORT, 0, 0, 0
	
	db 15,RATTATA
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, 0
	
	db 17,CHARMANDER
	moveset SCRATCH, GROWL, EMBER, SLASH
	db $FF
	
	
	
Green2Data:
	; SS Anne
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 19,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 16,RATICATE
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	
	db 18,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 20,WARTORTLE
	moveset WITHDRAW, BITE, BUBBLE, WATER_GUN
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 19,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 16,RATICATE
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	
	db 18,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 20,IVYSAUR
	moveset TACKLE, GROWL, LEECH_SEED, VINE_WHIP
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 19,PIDGEOTTO
	moveset TACKLE, GUST, SAND_ATTACK, QUICK_ATTACK
	
	db 16,RATICATE
	moveset TACKLE, TAIL_WHIP, QUICK_ATTACK, HYPER_FANG
	
	db 18,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 20,CHARMELEON
	moveset SMOKESCREEN, GROWL, EMBER, SLASH
	db $FF
	
	
	
	; Pokemon Tower
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 25,PIDGEOTTO
	moveset GUST, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	
	db 23,GROWLITHE
	moveset BITE, ROAR, EMBER, LEER
	
	db 22,EXEGGCUTE
	moveset BARRAGE, HYPNOSIS, LEECH_SEED, 0
	
	db 20,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 25,WARTORTLE
	moveset TAIL_WHIP, BUBBLE, WATER_GUN, BITE
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 25,PIDGEOTTO
	moveset GUST, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	
	db 23,GYARADOS
	moveset THRASH, TACKLE, BITE, 0
	
	db 22,GROWLITHE
	moveset BITE, ROAR, EMBER, LEER
	
	db 20,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 25,IVYSAUR
	moveset GROWL, LEECH_SEED, VINE_WHIP, POISONPOWDER
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 25,PIDGEOTTO
	moveset GUST, SAND_ATTACK, QUICK_ATTACK, WHIRLWIND
	
	db 23,EXEGGCUTE
	moveset BARRAGE, HYPNOSIS, LEECH_SEED, 0
	
	db 22,GYARADOS
	moveset THRASH, TACKLE, BITE, 0
	
	db 20,KADABRA
	moveset TELEPORT, CONFUSION, DISABLE, KINESIS
	
	db 25,CHARMELEON
	moveset SMOKESCREEN, EMBER, LEER, RAGE
	db $FF
	
	
	
	; Silph Co
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 37,PIDGEOT
	moveset WING_ATTACK, AERIAL_ACE, QUICK_ATTACK, WHIRLWIND
	
	db 38,GROWLITHE
	moveset ROAR, EMBER, LEER, TAKE_DOWN
	
	db 35,EXEGGCUTE
	moveset REFLECT, HYPNOSIS, LEECH_SEED, STUN_SPORE
	
	db 35,ALAKAZAM
	moveset SHADOW_BALL, AMNESIA, REFLECT, RECOVER
	
	db 40,BLASTOISE
	moveset BUBBLE, WATER_GUN, BITE, WITHDRAW
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 37,PIDGEOT
	moveset WING_ATTACK, AERIAL_ACE, QUICK_ATTACK, WHIRLWIND
	
	db 38,GYARADOS
	moveset DRAGON_RAGE, TACKLE, BITE, LEER
	
	db 38,GROWLITHE
	moveset ROAR, EMBER, LEER, TAKE_DOWN
	
	db 35,ALAKAZAM
	moveset SHADOW_BALL, AMNESIA, REFLECT, RECOVER
	
	db 40,VENUSAUR
	moveset LEECH_SEED, VINE_WHIP, POISONPOWDER, RAZOR_LEAF
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 37,PIDGEOT
	moveset WING_ATTACK, AERIAL_ACE, QUICK_ATTACK, WHIRLWIND
	
	db 35,EXEGGCUTE
	moveset REFLECT, HYPNOSIS, LEECH_SEED, STUN_SPORE
	
	db 38,GYARADOS
	moveset DRAGON_RAGE, TACKLE, BITE, LEER
	
	db 35,ALAKAZAM
	moveset SHADOW_BALL, AMNESIA, REFLECT, RECOVER
	
	db 40,CHARIZARD
	moveset LEER, FLAMETHROWER, SMOKESCREEN, WING_ATTACK
	db $FF
	
	
	
	; Before Pokemon Leage
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 47,PIDGEOT
	moveset WING_ATTACK, AERIAL_ACE, QUICK_ATTACK, GUST
	
	db 45,RHYHORN
	moveset ROCK_SLIDE, TAKE_DOWN, FURY_ATTACK, HORN_DRILL
	
	db 45,GROWLITHE
	moveset FLAME_WHEEL, TAKE_DOWN, LEER, AGILITY
	
	db 47,EXEGGCUTE
	moveset SOLARBEAM, POISONPOWDER, SLEEP_POWDER, STUN_SPORE
	
	db 50,ALAKAZAM
	moveset PSYCHIC_M, AMNESIA, SHADOW_BALL, DISABLE
	
	db 53,BLASTOISE
	moveset HYDRO_PUMP, WITHDRAW, SKULL_BASH, BITE
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 47,PIDGEOT
	moveset WING_ATTACK, AERIAL_ACE, QUICK_ATTACK, GUST
	
	db 45,RHYHORN
	moveset ROCK_SLIDE, TAKE_DOWN, FURY_ATTACK, HORN_DRILL
	
	db 45,GYARADOS
	moveset THRASH, DRAGON_RAGE, HYDRO_PUMP, LEER
	
	db 47,GROWLITHE
	moveset FLAME_WHEEL, TAKE_DOWN, LEER, AGILITY
	
	db 50,ALAKAZAM
	moveset PSYCHIC_M, AMNESIA, SHADOW_BALL, DISABLE
	
	db 53,VENUSAUR
	moveset POISONPOWDER, RECOVER, RAZOR_LEAF, GROWTH
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 47,PIDGEOT
	moveset WING_ATTACK, AERIAL_ACE, QUICK_ATTACK, GUST
	
	db 45,RHYHORN
	moveset ROCK_SLIDE, TAKE_DOWN, FURY_ATTACK, HORN_DRILL
	
	db 45,EXEGGCUTE
	moveset SOLARBEAM, POISONPOWDER, SLEEP_POWDER, STUN_SPORE
	
	db 47,GYARADOS
	moveset THRASH, DRAGON_RAGE, HYDRO_PUMP, LEER
	
	db 50,ALAKAZAM
	moveset PSYCHIC_M, AMNESIA, SHADOW_BALL, DISABLE
	
	db 53,CHARIZARD
	moveset FLAMETHROWER, WING_ATTACK, SLASH, LEER
	db $FF
	
	
	
Green3Data:
	; Champion
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 61,PIDGEOT
	moveset AERIAL_ACE, FLY, SAND_ATTACK, WHIRLWIND
	
	db 59,ALAKAZAM
	moveset PSYCHIC_M, SHADOW_BALL, RECOVER, REFLECT
	
	db 61,RHYDON
	moveset TAKE_DOWN, EARTHQUAKE, ROCK_SLIDE, LEER
	
	db 61,ARCANINE
	moveset FIRE_BLAST, FLAMETHROWER, ROAR, BITE
	
	db 63,EXEGGUTOR
	moveset MEGA_DRAIN, EGG_BOMB, SLEEP_POWDER, LIGHT_SCREEN
	
	db 65,BLASTOISE
	moveset HYDRO_PUMP, WITHDRAW, SKULL_BASH, BITE
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 61,PIDGEOT
	moveset AERIAL_ACE, FLY, SAND_ATTACK, WHIRLWIND
	
	db 59,ALAKAZAM
	moveset PSYCHIC_M, SHADOW_BALL, RECOVER, REFLECT
	
	db 61,RHYDON
	moveset TAKE_DOWN, EARTHQUAKE, ROCK_SLIDE, LEER
	
	db 61,GYARADOS
	moveset HYDRO_PUMP, DRAGON_RAGE, BITE, THRASH
	
	db 63,ARCANINE
	moveset FIRE_BLAST, FLAMETHROWER, ROAR, BITE
	
	db 65,VENUSAUR
	moveset SOLARBEAM, RECOVER, MEGA_DRAIN, GROWTH
	db $FF
	
	
	
	db "<RIVAL>@"
	db SPECIAL_TRAINER
	
	db 61,PIDGEOT
	moveset AERIAL_ACE, FLY, SAND_ATTACK, WHIRLWIND
	
	db 59,ALAKAZAM
	moveset PSYCHIC_M, SHADOW_BALL, RECOVER, REFLECT
	
	db 61,RHYDON
	moveset TAKE_DOWN, EARTHQUAKE, ROCK_SLIDE, LEER
	
	db 63,EXEGGUTOR
	moveset MEGA_DRAIN, EGG_BOMB, SLEEP_POWDER, LIGHT_SCREEN
	
	db 61,GYARADOS
	moveset HYDRO_PUMP, DRAGON_RAGE, BITE, THRASH
	
	db 65,CHARIZARD
	moveset FIRE_BLAST, FLY, SLASH, FLAMETHROWER
	db $FF
	
YoungsterData:
	db "JOEY@",11,RATTATA,EKANS,$FF
	db "ARNOLD@",14,SPEAROW,$FF
	db "ANTHONY@",10,RATTATA,RATTATA,ZUBAT,$FF
	db "SAMUEL@",14,RATTATA,EKANS,ZUBAT,$FF
	db "ADAM@",15,RATTATA,SPEAROW,$FF
	db "BEN@",17,SLOWPOKE,$FF
	db "CALVIN@",14,EKANS,SANDSHREW,$FF
	db "CHAD@",21,NIDORAN_M,$FF
	db "DAN@",21,EKANS,$FF
	db "DAVE@",19,SANDSHREW,ZUBAT,$FF
	db "JOSH@",17,RATTATA,RATTATA,RATICATE,$FF
	db "TIMMY@",18,NIDORAN_M,NIDORINO,$FF
	db "NASH@",17,SPEAROW,RATTATA,RATTATA,SPEAROW,$FF
	
BugCatcherData:
	db "LUKE@",6,WEEDLE,CATERPIE,$FF
	db "FINN@",7,WEEDLE,KAKUNA,WEEDLE,$FF
	db "JAKE@",9,WEEDLE,$FF
	db "DAVID@",10,CATERPIE,WEEDLE,CATERPIE,$FF
	db "LOU@",9,WEEDLE,KAKUNA,CATERPIE,METAPOD,$FF
	db "LARRY@",11,CATERPIE,METAPOD,$FF
	db "CHUCK@",11,WEEDLE,KAKUNA,$FF
	db "ZACH@",10,CATERPIE,METAPOD,CATERPIE,$FF
	db "CHRIS@",14,CATERPIE,WEEDLE,$FF
	db "RICK@",16,WEEDLE,CATERPIE,WEEDLE,$FF
	db "BOB@",20,BUTTERFREE,$FF
	db "GRAY@",18,METAPOD,CATERPIE,VENONAT,$FF
	db "MATT@",19,BEEDRILL,BEEDRILL,$FF
	db "ED@",20,CATERPIE,WEEDLE,VENONAT,$FF
	
LassData:
	db "NICOLE@",9,PIDGEY,PIDGEY,$FF
	db "JENNIFER@",10,RATTATA,NIDORAN_M,$FF
	db "HILLARY@",14,JIGGLYPUFF,$FF
	db "RACHEL@",31,PARAS,PARAS,PARASECT,$FF
	db "CHRISTY@",11,ODDISH,BELLSPROUT,$FF
	db "JESSICA@",14,CLEFAIRY,$FF
	db "TRISH@",16,PIDGEY,NIDORAN_F,$FF
	db "MONICA@",14,PIDGEY,NIDORAN_F,$FF
	db "LULU@",15,NIDORAN_M,NIDORAN_F,$FF
	db "BROOKE@",13,ODDISH,PIDGEY,ODDISH,$FF
	db "ROSE@",18,PIDGEY,NIDORAN_F,$FF
	db "MARTHA@",18,RATTATA,PIKACHU,$FF
	db "AMANDA@",23,NIDORAN_F,NIDORINA,$FF
	db "MEADOW@",24,MEOWTH,MEOWTH,MEOWTH,$FF
	db "WHITNEY@",19,PIDGEY,RATTATA,NIDORAN_M,MEOWTH,PIKACHU,$FF
	db "SAMANTHA@",22,CLEFAIRY,CLEFAIRY,$FF
	db "KATIE@",23,BELLSPROUT,WEEPINBELL,$FF
	db "BELLA@",23,ODDISH,GLOOM,$FF
	
SailorData:
	db "JACK@",18,MACHOP,SHELLDER,$FF
	db "WILL@",17,MACHOP,TENTACOOL,$FF
	db "DAVE@",21,SHELLDER,$FF
	db "HUEY@",17,HORSEA,SHELLDER,TENTACOOL,$FF
	db "LEWIS@",18,TENTACOOL,STARYU,$FF
	db "EUGENE@",17,HORSEA,HORSEA,HORSEA,$FF
	db "FLYNN@",20,MACHOP,$FF
	db "HANS@",21,PIKACHU,PIKACHU,$FF
	
CamperData:
	db "DANIEL@",9,DIGLETT,SANDSHREW,$FF
	db "CRAIG@",14,POLIWAG,GOLDEEN,$FF
	db "HARRY@",18,MANKEY,$FF
	db "RONALD@",20,SQUIRTLE,$FF
	db "MARK@",16,SPEAROW,RATICATE,$FF
	db "MIKE@",18,DIGLETT,DIGLETT,SANDSHREW,$FF
	db "NICK@",21,GROWLITHE,CHARMANDER,$FF
	db "ROBERT@",19,RATTATA,DIGLETT,EKANS,SANDSHREW,$FF
	db "IAN@",29,NIDORAN_M,NIDORINO,$FF
	db "FLINT@",14,RATTATA,EKANS,$FF
	
PicnickerData:
	db "CINDY@",19,GOLDEEN,$FF
	db "DEBRA@",16,RATTATA,PIKACHU,$FF
	db "HEIDI@",16,PIDGEY,PIDGEY,PIDGEY,$FF
	db "BROOKE@",22,BULBASAUR,$FF
	db "LIZ@",18,ODDISH,BELLSPROUT,ODDISH,BELLSPROUT,$FF
	db "HOPE@",23,MEOWTH,$FF
	db "KIM@",20,PIKACHU,CLEFAIRY,$FF
	db "ALICE@",21,PIDGEY,PIDGEOTTO,$FF
	db "BECKY@",21,JIGGLYPUFF,PIDGEY,MEOWTH,$FF
	db "CAROL@",22,ODDISH,BULBASAUR,$FF
	db "DIANA@",24,BULBASAUR,IVYSAUR,$FF
	db "GINA@",24,PIDGEY,MEOWTH,RATTATA,PIKACHU,MEOWTH,$FF
	db "JENNY@",30,POLIWAG,POLIWAG,$FF
	db "CLARA@",27,PIDGEY,MEOWTH,PIDGEY,PIDGEOTTO,$FF
	db "KELSEY@",28,GOLDEEN,POLIWAG,HORSEA,$FF
	db "MISSY@",31,GOLDEEN,SEAKING,$FF
	db "DONNA@",22,BELLSPROUT,CLEFAIRY,$FF
	db "SUSAN@",20,MEOWTH,ODDISH,PIDGEY,$FF
	db "NANCI@",19,PIDGEY,RATTATA,RATTATA,BELLSPROUT,$FF
	db "TINA@",28,GLOOM,ODDISH,ODDISH,$FF
	db "JULIE@",29,PIKACHU,RAICHU,$FF
	db "CONNIE@",33,CLEFAIRY,$FF
	db "WENDY@",29,BELLSPROUT,ODDISH,TANGELA,$FF
	db "REI@",30,TENTACOOL,HORSEA,SEEL,$FF
	
PokemaniacData:
	db "TERRY@",30,RHYHORN,LICKITUNG,$FF
	db "BEN@",20,CUBONE,SLOWPOKE,$FF
	db "SCOTT@",20,SLOWPOKE,SLOWPOKE,SLOWPOKE,$FF
	db "JESSY@",SPECIAL_LEVELS,COSPLAY_GIRL,22,PIKACHU,CUBONE,$FF
	db "ANDY@",25,SLOWPOKE,$FF
	db "JERRY@",40,CHARMELEON,LAPRAS,LICKITUNG,$FF
	db "BRUCE@",23,CUBONE,SLOWPOKE,$FF
	
SuperNerdData:
	db "TERU@",11,VOLTORB,VOLTORB,$FF
	db "ERIC@",16,PIKACHU,EEVEE,$FF
	db "MARKUS@",20,VOLTORB,KOFFING,VOLTORB,MAGNEMITE,$FF
	db "ALAN@",22,GRIMER,MUK,GRIMER,$FF
	db "DEREK@",26,KOFFING,$FF
	db "CLIF@",22,KOFFING,MAGNEMITE,WEEZING,$FF
	db "OWEN@",20,MAGNEMITE,MAGNEMITE,KOFFING,MAGNEMITE,$FF
	db "BEN@",24,MAGNEMITE,VOLTORB,$FF
	db "RICK@",36,VULPIX,VULPIX,NINETALES,$FF
	db "MARTY@",34,PONYTA,CHARMANDER,VULPIX,GROWLITHE,$FF
	db "VINCE@",41,RAPIDASH,$FF
	db "AVERY@",37,GROWLITHE,VULPIX,$FF
	
HikerData:
	db "JEFF@",10,GEODUDE,MACHOP,ONIX,$FF
	db "DILLON@",15,MACHOP,GEODUDE,$FF
	db "RUSSEL@",13,GEODUDE,MANKEY,MACHOP,$FF
	db "MICHAEL@",17,DIGLETT,ONIX,$FF
	db "TRENT@",21,GEODUDE,ONIX,$FF
	db "CLARK@",20,GEODUDE,MACHOP,GEODUDE,$FF
	db "LENNY@",21,MACHOP,ONIX,$FF
	db "JAY@",19,ONIX,GRAVELER,$FF
	db "BRYAN@",21,GEODUDE,GEODUDE,GRAVELER,$FF
	db "LUCAS@",25,SKARMORY,$FF
	db "GEORGE@",20,MACHOP,ONIX,$FF
	db "DEVAN@",19,GEODUDE,MACHOP,GEODUDE,GEODUDE,$FF
	db "STEVE@",20,ONIX,ONIX,GEODUDE,$FF
	db "KURT@",21,GEODUDE,GRAVELER,$FF
	
BikerData:
	db "CHARLES@",28,KOFFING,GRIMER,EKANS,$FF
	db "GLENN@",29,RHYHORN,RHYHORN,$FF
	db "DWAYNE@",25,KOFFING,GRIMER,$FF
	db "JOEL@",28,GRIMER,GRIMER,$FF
	db "KYLE@",29,GRIMER,KOFFING,$FF
	db "BILLY@",33,DITTO,$FF
	db "ALEX@",26,GRIMER,GRIMER,GRIMER,GRIMER,$FF
	db "ISAAC@",28,WEEZING,KOFFING,WEEZING,$FF
	db "JACOB@",33,MUK,$FF
	db "WESLEY@",29,VOLTORB,MAGNEMITE,$FF
	db "LOGAN@",29,HOUNDOUR,HOUNDOOM,$FF
	db "JARED@",25,KOFFING,WEEZING,KOFFING,KOFFING,WEEZING,$FF
	db "RICK@",26,KOFFING,KOFFING,GRIMER,KOFFING,$FF
	db "JIMMY@",28,GRIMER,VOLTORB,KOFFING,$FF
	db "REGGIE@",29,GRIMER,MUK,$FF
	
BurglarData:
	db "ARNIE@",29,GROWLITHE,VULPIX,$FF
	db "DUSTY@",33,GROWLITHE,$FF
	db "PAUL@",28,VULPIX,CHARMANDER,PONYTA,$FF
	db "SIMON@",36,GROWLITHE,VULPIX,NINETALES,$FF
	db "DARRYL@",41,PONYTA,$FF
	db "COREY@",37,VULPIX,GROWLITHE,$FF
	db "EDDIE@",34,CHARMANDER,CHARMELEON,$FF
	db "DUNCAN@",38,NINETALES,$FF
	db "ISAIAH@",34,GROWLITHE,PONYTA,$FF
	
EngineerData:
	db "BERNIE@",21,MAGNEMITE,PIKACHU,$FF
	db "FLINT@",21,MAGNEMITE,VOLTORB,$FF
	db "JACK@",18,MAGNEMITE,PIKACHU,$FF

CoupleData: 
	db "MIKE & NAT@",SPECIAL_TRAINER,20,CUBONE,16,WEEPINBELL,$FF

FisherData:
	db "WALT@",17,GOLDEEN,TENTACOOL,GOLDEEN,$FF
	db "CHRIS@",17,TENTACOOL,STARYU,SHELLDER,$FF
	db "CRAIG@",22,GOLDEEN,POLIWAG,GOLDEEN,$FF
	db "BILL@",24,TENTACOOL,GOLDEEN,$FF
	db "HANK@",27,GOLDEEN,$FF
	db "BRAD@",21,POLIWAG,SHELLDER,GOLDEEN,HORSEA,$FF
	db "JIMMY@",28,SEAKING,GOLDEEN,SEAKING,SEAKING,$FF
	db "RALPH@",31,SHELLDER,CLOYSTER,$FF
	db "BOB@",27,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,MAGIKARP,$FF
	db "JOE@",33,SEAKING,GOLDEEN,$FF
	db "WILTON@",24,MAGIKARP,MAGIKARP,$FF
	
SwimmerData:
	db "GEORGE@",16,HORSEA,SHELLDER,$FF
	db "BRUNO@",30,TENTACOOL,SHELLDER,$FF
	db "CHARLIE@",29,GOLDEEN,HORSEA,STARYU,$FF
	db "ROBERT@",30,POLIWAG,POLIWHIRL,$FF
	db "CHRIS@",27,HORSEA,TENTACOOL,TENTACOOL,GOLDEEN,$FF
	db "RILEY@",29,GOLDEEN,SHELLDER,SEAKING,$FF
	db "JOHN@",30,HORSEA,HORSEA,$FF
	db "ABE@",27,TENTACOOL,TENTACOOL,STARYU,HORSEA,TENTACRUEL,$FF
	db "MATTHEW@",31,SHELLDER,CLOYSTER,$FF
	db "KIRK@",35,STARYU,$FF
	db "PARKER@",28,HORSEA,HORSEA,SEADRA,HORSEA,$FF
	db "ROSS@",33,SEADRA,TENTACRUEL,$FF
	db "PERRY@",37,STARMIE,$FF
	db "RYAN@",33,STARYU,WARTORTLE,$FF
	db "BEN@",32,STARYU,SEAKING,STARMIE,$FF
	db "JOSIAH@",31,TENTACOOL,TENTACOOL,TENTACRUEL,$FF
	
CueBallData:
	db "CHANCE@",28,MACHOP,MANKEY,MACHOP,$FF
	db "DAVE@",29,MANKEY,MACHOP,$FF
	db "CHAD@",33,MACHOP,$FF
	db "SCOTT@",29,MANKEY,PRIMEAPE,$FF
	db "NICK@",29,MACHOP,MACHOKE,$FF
	db "REESE@",33,MACHOKE,$FF
	db "KENNY@",26,MANKEY,MANKEY,MACHOKE,MACHOP,$FF
	db "BRUCE@",29,PRIMEAPE,MACHOKE,$FF
	
GamblerData:
	db "STAN@",18,POLIWAG,HORSEA,$FF
	db "RICH@",18,BELLSPROUT,ODDISH,$FF
	db "DIRK@",18,VOLTORB,MAGNEMITE,$FF
	db "JASPER@",18,GROWLITHE,VULPIX,$FF
	db "PHIL@",22,POLIWAG,POLIWAG,POLIWHIRL,$FF
	db "BIFF@",22,ONIX,GEODUDE,GRAVELER,$FF
	db "JOEL@",24,GROWLITHE,VULPIX,$FF
	
SwimmerFData:
BeautyData:
	db "NIKKI@",21,ODDISH,BELLSPROUT,ODDISH,BELLSPROUT,$FF
	db "BETH@",24,BELLSPROUT,BELLSPROUT,$FF
	db "SELENA@",26,EXEGGCUTE,$FF
	db "ARIANA@",27,RATTATA,PIKACHU,RATTATA,$FF
	db "CALLIE@",29,CLEFAIRY,MEOWTH,$FF
	db "MALENA@",35,SEAKING,$FF
	db "BREA@",30,SHELLDER,SHELLDER,CLOYSTER,$FF
	db "KAYLEE@",31,POLIWAG,SEAKING,$FF
	db "LYNN@",29,PIDGEOTTO,WIGGLYTUFF,$FF
	db "HOLLY@",29,BULBASAUR,IVYSAUR,$FF
	db "CARLY@",33,WEEPINBELL,BELLSPROUT,WEEPINBELL,$FF
	db "KIERA@",27,POLIWAG,GOLDEEN,SEAKING,GOLDEEN,POLIWAG,$FF
	db "MANDY@",30,GOLDEEN,SEAKING,$FF
	db "ANNA@",29,STARYU,STARYU,STARYU,$FF
	db "CAITLYN@",30,SEADRA,HORSEA,SEADRA,$FF
	db "ARIEL@",19,GOLDEEN,$FF ; Misty's Gym, Trainer # 0x10
	db "CALLIE@",30,TENTACOOL,HORSEA,SEEL,$FF ; Route 20, Trainer # 0x11
	db "MARIE@",31,GOLDEEN,SEAKING,$FF ; Route 20, Trainer # 0x12
	
PsychicData:
	db "YURI@",31,KADABRA,SLOWPOKE,MR_MIME,KADABRA,$FF
	db "TERU@",34,MR_MIME,KADABRA,$FF
	db "KIO@",33,SLOWPOKE,SLOWBRO,SLOWKING,$FF
	db "RHEN@",38,SLOWKING,$FF
	
RockerData:
	db "DEBBIE@",SPECIAL_LEVELS,ROCKER_F,20,VOLTORB,VOLTORB,VOLTORB,$FF
	db "C.C.@",29,EKANS,ARBOK,$FF
	
JugglerData:
	db "IRWIN@",29,KADABRA,MR_MIME,$FF
	db "HORTON@",41,DROWZEE,HYPNO,KADABRA,KADABRA,$FF
	db "FRITZ@",31,DROWZEE,DROWZEE,KADABRA,DROWZEE,$FF
	db "LIAM@",34,DROWZEE,HYPNO,$FF
	db "CLOYD@",48,MR_MIME,$FF
	db "DEREK@",33,HYPNO,$FF
	db "WILL@",38,HYPNO,$FF
	db "SHAWN@",34,DROWZEE,KADABRA,$FF
	
TamerData:
	db "COLE@",34,SANDSLASH,ARBOK,$FF
	db "EDGAR@",33,ARBOK,SANDSLASH,ARBOK,$FF
	db "EVAN@",43,RHYHORN,$FF
	db "JASON@",39,ARBOK,TAUROS,$FF
	db "PHIL@",44,PERSIAN,GOLDUCK,$FF
	db "VINCE@",42,RHYHORN,PRIMEAPE,ARBOK,TAUROS,$FF
	
BirdKeeperData:
	db "ROD@",29,PIDGEY,PIDGEOTTO,$FF
	db "ABE@",25,SPEAROW,PIDGEY,PIDGEY,SPEAROW,SPEAROW,$FF
	db "BOB@",26,PIDGEY,PIDGEOTTO,SPEAROW,FEAROW,$FF
	db "HANK@",33,FARFETCH_D,$FF
	db "BRET@",29,SPEAROW,FEAROW,$FF
	db "ROY@",26,PIDGEOTTO,FARFETCH_D,DODUO,PIDGEY,$FF
	db "TOBY@",28,DODRIO,DODUO,DODUO,$FF
	db "CHAD@",29,SPEAROW,FEAROW,$FF
	db "MIKE@",34,DODRIO,$FF
	db "KYLE@",26,SPEAROW,SPEAROW,FEAROW,SPEAROW,$FF
	db "WILLY@",30,FEAROW,FEAROW,PIDGEOTTO,$FF
	db "JEFF@",39,PIDGEOTTO,PIDGEOTTO,PIDGEY,PIDGEOTTO,$FF
	db "TROY@",42,FARFETCH_D,FEAROW,$FF
	db "KEVIN@",28,PIDGEY,DODUO,PIDGEOTTO,$FF
	db "JIM@",26,PIDGEY,SPEAROW,PIDGEOTTO,FEAROW,$FF
	db "ERIC@",29,PIDGEOTTO,FEAROW,$FF
	db "CHRIS@",28,SPEAROW,DODUO,FEAROW,$FF
	
BlackbeltData:
	db "KENJI@",37,HITMONLEE,HITMONCHAN,$FF
	db "LAO@",31,MANKEY,MANKEY,PRIMEAPE,$FF
	db "HUNG@",32,MACHOP,MACHOKE,$FF
	db "CHANG@",36,PRIMEAPE,$FF
	db "TORU@",31,MACHOP,MANKEY,PRIMEAPE,$FF
	db "YOSHI@",40,MACHOP,MACHOKE,$FF
	db "WANG@",43,MACHOKE,$FF
	db "NOB@",38,MACHOKE,MACHOP,MACHOKE,$FF
	db "WAI@",43,MACHOKE,MACHOP,MACHOKE,$FF
	
GentlemanData:
	db "ALFRED@",18,GROWLITHE,GROWLITHE,$FF
	db "EDWARD@",19,NIDORAN_M,NIDORAN_F,$FF
	db "PRESTON@",23,PIKACHU,$FF
	db "GREGORY@",48,PRIMEAPE,$FF
	db "HOWARD@",17,GROWLITHE,PONYTA,$FF	
	
ChannelerData:
	db "AMELIA@",22,GASTLY,$FF
	db "SELENE@",24,GASTLY,$FF
	db "KARINA@",23,GASTLY,GASTLY,$FF
	db "HOPE@",24,HAUNTER,$FF
	db "STACY@",23,GASTLY,$FF
	db "GWEN@",24,GASTLY,$FF
	db "MARY@",24,HAUNTER,$FF
	db "JANE@",22,GASTLY,$FF
	db "CARLY@",24,GASTLY,$FF
	db "TRIXIE@",23,GASTLY,HAUNTER,$FF
	db "JODIE@",24,HAUNTER,$FF
	db "FAITH@",22,GASTLY,$FF
	db "ALICE@",24,GASTLY,$FF
	db "ASHE@",23,HAUNTER,$FF
	db "HOLLY@",24,GASTLY,$FF
	db "CINDY@",22,GASTLY,$FF
	db "GRACE@",24,GASTLY,$FF
	db "REI@",22,HAUNTER,$FF
	db "LEAH@",22,GASTLY,GASTLY,GASTLY,$FF
	db "EVE@",24,GASTLY,$FF
	db "CASSIE@",24,GASTLY,$FF
	
ScientistData:
	db "SHELDON@",34,KOFFING,VOLTORB,$FF
	db "ROSS@",26,GRIMER,WEEZING,KOFFING,WEEZING,$FF
	db "MITCH@",28,MAGNEMITE,VOLTORB,MAGNETON,$FF
	db "JED@",29,ELECTRODE,WEEZING,$FF
	db "MARC@",33,ELECTRODE,$FF
	db "TAYLOR@",26,MAGNETON,KOFFING,WEEZING,MAGNEMITE,$FF
	db "NICK@",25,VOLTORB,KOFFING,MAGNETON,MAGNEMITE,KOFFING,$FF
	db "KEVIN@",29,ELECTRODE,MUK,$FF
	db "HOWIE@",29,GRIMER,ELECTRODE,$FF
	db "BRIAN@",28,VOLTORB,KOFFING,MAGNETON,$FF
	db "ALEX@",29,MAGNEMITE,KOFFING,$FF
	db "JUSTIN@",33,MAGNEMITE,MAGNETON,VOLTORB,$FF
	db "CHRIS@",34,MAGNEMITE,ELECTRODE,$FF
	
RocketFData:
RocketData:
	db "EXECUTIVE@",CUSTOM_PIC,EXECUTIVE_F,15,RATTATA,ZUBAT,$FF
	db "JAMES@",CUSTOM_PIC,JAMES,13,KOFFING,$FF
	db "JESSIE@",CUSTOM_PIC,JESSIE,13,EKANS,$FF
	db "GRUNT@",14,RATICATE,$FF
	db "GRUNT@",17,MACHOP,DROWZEE,$FF
	db "GRUNT@",CUSTOM_PIC,PI_TRAINER,15,EKANS,ZUBAT,$FF ; Nugget Bridge "Boss"
	db "GRUNT@",20,RATICATE,ZUBAT,$FF
	db "GRUNT@",21,DROWZEE,MACHOP,$FF
	db "GRUNT@",21,RATICATE,RATICATE,$FF
	db "GRUNT@",20,GRIMER,KOFFING,KOFFING,$FF
	db "GRUNT@",19,RATTATA,RATICATE,RATICATE,RATTATA,$FF
	db "GRUNT@",22,GRIMER,KOFFING,$FF
	db "GRUNT@",17,ZUBAT,KOFFING,GRIMER,ZUBAT,RATICATE,$FF
	db "GRUNT@",20,RATTATA,RATICATE,DROWZEE,$FF
	db "GRUNT@",21,MACHOP,MACHOP,$FF
	db "JAMES@",CUSTOM_PIC,JAMES,23,WEEZING,WEEPINBELL,$FF ; James in Game Corner
	db "JESSIE@",CUSTOM_PIC,JESSIE,23,ARBOK,LICKITUNG,$FF ; Jessie in Game Corner
	db "GRUNT@",21,KOFFING,ZUBAT,$FF
	db "GRUNT@",25,ZUBAT,ZUBAT,GOLBAT,$FF
	db "GRUNT@",26,KOFFING,DROWZEE,$FF
	db "EXECUTIVE@",CUSTOM_PIC,EXECUTIVE_M,23,ZUBAT,RATTATA,RATICATE,ZUBAT,$FF
	db "GRUNT@",26,DROWZEE,KOFFING,$FF
	db "GRUNT@",29,CUBONE,ZUBAT,$FF
	db "GRUNT@",25,GOLBAT,ZUBAT,ZUBAT,RATICATE,ZUBAT,$FF
	db "GRUNT@",28,RATICATE,HYPNO,RATICATE,$FF
	db "GRUNT@",29,MACHOP,DROWZEE,$FF
	db "GRUNT@",28,EKANS,ZUBAT,CUBONE,$FF
	db "GRUNT@",33,ARBOK,$FF
	db "GRUNT@",33,HYPNO,$FF
	db "GRUNT@",29,MACHOP,MACHOKE,$FF
	db "GRUNT@",28,ZUBAT,ZUBAT,GOLBAT,$FF
	db "GRUNT@",26,RATICATE,ARBOK,KOFFING,GOLBAT,$FF
	db "GRUNT@",29,CUBONE,CUBONE,$FF
	db "GRUNT@",29,SANDSHREW,SANDSLASH,$FF
	db "GRUNT@",26,RATICATE,ZUBAT,GOLBAT,RATTATA,$FF
	db "GRUNT@",28,WEEZING,GOLBAT,KOFFING,$FF
	db "GRUNT@",28,DROWZEE,GRIMER,MACHOP,$FF
	db "GRUNT@",28,GOLBAT,DROWZEE,HYPNO,$FF
	db "GRUNT@",33,MACHOKE,$FF
	db "GRUNT@",25,RATTATA,RATTATA,ZUBAT,RATTATA,EKANS,$FF
	db "EXECUTIVE@",CUSTOM_PIC,EXECUTIVE_M,34,CUBONE,DROWZEE,MAROWAK,$FF
	
AceTrainerMData:
	db "GARETH@",39,NIDORINO,NIDOKING,$FF
	db "KANE@",43,EXEGGUTOR,CLOYSTER,ARCANINE,$FF
	db "STEVE@",43,KINGLER,TENTACRUEL,BLASTOISE,$FF
	db "ANDY@",45,KINGLER,STARMIE,$FF
	db "OLLIE@",42,IVYSAUR,WARTORTLE,CHARMELEON,CHARIZARD,$FF
	db "JAMES@",44,IVYSAUR,WARTORTLE,CHARMELEON,$FF
	db "MATT@",49,NIDOKING,$FF
	db "LUKE@",44,KINGLER,CLOYSTER,$FF
	db "STU@",39,SANDSLASH,DUGTRIO,$FF
	db "SEAN@",43,RHYHORN,$FF
	
AceTrainerFData:
	db "DONNA@",24,WEEPINBELL,GLOOM,IVYSAUR,$FF
	db "CHANTAL@",43,BELLSPROUT,WEEPINBELL,VICTREEBEL,$FF
	db "RIA@",43,PARASECT,DEWGONG,CHANSEY,$FF
	db "JACINTA@",46,VILEPLUME,BUTTERFREE,$FF
	db "JESS@",44,PERSIAN,NINETALES,$FF
	db "JODIE@",45,IVYSAUR,VENUSAUR,$FF
	db "MARIA@",45,NIDORINA,NIDOQUEEN,$FF
	db "BEC@",43,PERSIAN,NINETALES,RAICHU,$FF
	
HexManiacData:
	db "ALICE@",34,GASTLY,HAUNTER,$FF
	db "LUNA@",38,HAUNTER,$FF
	db "CARRIE@",33,GASTLY,GASTLY,HAUNTER,$FF

PkmnTrainerData:
    db "FLANNERY@"
	db SPECIAL_TRAINER2
	db FLANNERY ; pic
	db AI_FULL_RESTORE ; AI
	
	db 33,VENONAT
	moveset POISONPOWDER, STUN_SPORE, TOXIC, POISON_STING
	
	db 33,MARILL
	moveset WATER_GUN, QUICK_ATTACK, BUBBLE, TACKLE
	
	db 36,SCYTHER
	moveset SLASH, DOUBLE_TEAM, QUICK_ATTACK, AGILITY
	db $FF
	
	db "OAK@"
	db SPECIAL_TRAINER2
	db PROF_OAK ; pic
	db AI_FULL_RESTORE
	
	db 66,TAUROS
	moveset TAKE_DOWN, LEER, RAGE, TAIL_WHIP
	
	db 67, EXEGGUTOR
	moveset STOMP, BARRAGE, HYPNOSIS, LEECH_SEED
	
	db 68, ARCANINE
	moveset EMBER, TAKE_DOWN, ROAR, LEER
	
	db 69, GYARADOS
	moveset HYDRO_PUMP, DRAGON_RAGE, LEER, HYPER_BEAM
	
	db 70, MEW
	moveset TRANSFORM, PSYCHIC_M, METRONOME, HYPER_BEAM
	db $FF
	
	db "JANINE@"
	db SPECIAL_TRAINER2
	db JANINE ; pic
	db AI_X_ATTACK ; AI
	
	db 44,CROBAT
	moveset WING_ATTACK, CONFUSE_RAY, SUPERSONIC, SCREECH
	
	db 44,WEEZING
	moveset SLUDGE, SMOG, TOXIC, EXPLOSION
	
	db 45,VENOMOTH
	moveset TOXIC, PSYCHIC_M, DOUBLE_TEAM, SUPERSONIC
	db $FF