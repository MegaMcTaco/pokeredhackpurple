GlaceonBaseStats: ; 38fe6 (e:4fe6)
db DEX_GLACEON ; pokedex id
db 80 ; base hp
db 85 ; base attack
db 95 ; base defense
db 25 ; base speed
db 30 ; base special
db ICE ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 135 ; base exp yield
INCBIN "pic/bmon/glaceon.pic",0,1 ; 77, sprite dimensions
dw GlaceonPicFront
dw GlaceonPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db GROWL
db BIDE
db PSYCHIC
db 0 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10
	tmlearn 20,24
	tmlearn 25,26,27,28,31,32
	tmlearn 34,38,40
	tmlearn 44,48
	tmlearn 50,54
db BANK(GlaceonPicFront)
