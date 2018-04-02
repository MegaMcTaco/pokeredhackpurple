EspeonBaseStats: ; 3926a (e:526a)
db DEX_ESPEON ; pokedex id
db 130 ; base hp
db 65 ; base attack
db 60 ; base defense
db 110 ; base speed
db 110 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 196 ; base exp yield
INCBIN "pic/bmon/espeon.pic",0,1 ; 77, sprite dimensions
dw EspeonPicFront
dw EspeonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 
db 
db 0 ; growth rate
; learnset
	tmlearn 7,9
	tmlearn 18,23
	tmlearn 29,30,31
	tmlearn 33,34
	tmlearn 40,43
	tmlearn 44
	tmlearn 47,49
db BANK(EspeonPicFront)