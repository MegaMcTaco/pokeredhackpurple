SpinarakBaseStats:
db DEX_SPINARAK ; pokedex id
db 40 ; base hp
db 60 ; base attack
db 40 ; base defense
db 30 ; base speed
db 40 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 52 ; base exp yield
INCBIN "pic/bmon/spinarak.pic",0,1 ; 55, sprite dimensions
dw SpinarakPicFront
dw SpinarakPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15
	tmlearn 20,21
	tmlearn 31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(SpinarakPicFront)
