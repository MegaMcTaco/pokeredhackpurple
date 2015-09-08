UmbreonBaseStats: ; 3926a (e:526a)
db DEX_UMBREON ; pokedex id
db 130 ; base hp
db 65 ; base attack
db 60 ; base defense
db 65 ; base speed
db 110 ; base special
db DARK ; species type 1
db DARK ; species type 2
db 45 ; catch rate
db 196 ; base exp yield
INCBIN "pic/bmon/umbreon.pic",0,1 ; 77, sprite dimensions
dw UmbreonPicFront
dw UmbreonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db CONFUSE_RAY
db 0 ; growth rate
; learnset
	tmlearn 8,20,28
	tmlearn 30,37,39
	tmlearn 40,42,44
	tmlearn 49,50
	tmlearn 0
	tmlearn 0
	tmlearn 0
db BANK(UmbreonPicFront)