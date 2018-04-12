SlowkingBaseStats:
db DEX_SLOWKING ; pokedex id
db 95 ; base hp
db 75 ; base attack
db 80 ; base defense
db 30 ; base speed
db 110 ; base special
db WATER ; species type 1
db PSYCHIC ; species type 2
db 70 ; catch rate
db 164 ; base exp yield
INCBIN "pic/bmon/slowking.pic",0,1 ; 77, sprite dimensions
dw SlowkingPicFront
dw SlowkingPicBack
; attacks known at lvl 0
db CONFUSION
db DISABLE
db HEADBUTT
db TACKLE
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19
	tmlearn 26,27,28,29,30,31,32
	tmlearn 33,34,37,38,39,40
	tmlearn 41,43,44,45,46
	tmlearn 49,50,53,54,55
db BANK(SlowkingPicFront)