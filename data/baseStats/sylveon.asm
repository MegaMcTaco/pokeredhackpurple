SylveonBaseStats: ; 3926a (e:526a)
db DEX_SYLVEON ; pokedex id
db 130 ; base hp
db 65 ; base attack
db 60 ; base defense
db 65 ; base speed
db 110 ; base special
db FAIRY ; species type 1
db FAIRY ; species type 2
db 45 ; catch rate
db 196 ; base exp yield
INCBIN "pic/bmon/sylveon.pic",0,1 ; 77, sprite dimensions
dw SylveonPicFront
dw SylveonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db 
db 
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 50,51
db BANK(SylveonPicFront)