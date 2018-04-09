FightingDojoObject: ; 0x5cf9b (size=72)
	db $3 ; border block

	db $2 ; warps
	db $b, $4, $1, $ff
	db $b, $5, $1, $ff

	db $0 ; signs

	db $7 ; objects
	object SPRITE_BUG_CATCHER, $5, $3, STAY, DOWN, $1, OPP_BUG_CATCHER, $5
	object SPRITE_BUG_CATCHER, $3, $4, STAY, RIGHT, $2, OPP_BUG_CATCHER, $6
	object SPRITE_BUG_CATCHER, $3, $6, STAY, RIGHT, $3, OPP_BUG_CATCHER, $7
	object SPRITE_BUG_CATCHER, $5, $5, STAY, LEFT, $4, OPP_BUG_CATCHER, $8
	object SPRITE_BUG_CATCHER, $5, $7, STAY, LEFT, $5, OPP_BUG_CATCHER, $9
	object SPRITE_BALL, $4, $1, STAY, NONE, $6 ; person
	object SPRITE_BALL, $5, $1, STAY, NONE, $7 ; person

	; warp-to
	EVENT_DISP FIGHTING_DOJO_WIDTH, $b, $4
	EVENT_DISP FIGHTING_DOJO_WIDTH, $b, $5
