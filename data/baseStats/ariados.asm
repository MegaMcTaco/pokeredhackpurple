AriadosBaseStats:
db DEX_ARIADOS ; pokedex id
db 70 ; base hp
db 90 ; base attack
db 70 ; base defense
db 40 ; base speed
db 60 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 159 ; base exp yield
INCBIN "pic/bmon/ariados.pic",0,1 ; 55, sprite dimensions
dw AriadosPicFront
dw AriadosPicBack
; attacks known at lvl 0
db POISON_STING
db STRING_SHOT
db LEER
db CONSTRICT
db 0 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15
	tmlearn 20,21
	tmlearn 31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50,51
db BANK(AriadosPicFront)
