ChoosePlayerName: ; 695d (1:695d)
	call OakSpeechSlidePicRight
	ld a, [wPlayerGender]   ; Added gender check
    and a        ; Added gender check
    jr nz, .AreGirl ; Skip to girl names if you are a girl instead
	ld de, DefaultNamesPlayer
	call DisplayIntroNameTextBox
	ld a, [wCurrentMenuItem]
	and a
	jr z, .customName
	ld hl, DefaultNamesPlayerList
	call GetDefaultName
	ld de, wPlayerName
	call OakSpeechSlidePicLeft
	jr .done
.AreGirl ; Copy of the boy naming routine, just with girl's names
    ld de, DefaultNamesGirl ; $6aa8
    call DisplayIntroNameTextBox
    ld a, [wCurrentMenuItem] ; wCurrentMenuItem
    and a
    jr z, .customName
    ld hl, DefaultNamesGirlList ; $6af2
    call GetDefaultName
    ld de, wPlayerName ; wd158
    call OakSpeechSlidePicLeft
    jr .done ; End of new Girl Names routine
.customName
	ld hl, wPlayerName
	xor a ; NAME_PLAYER_SCREEN
	ld [wNamingScreenType], a
	call DisplayNamingScreen
	ld a, [wcf4b]
	cp "@"
	jr z, .customName
	call ClearScreen
	call Delay3
	ld de, RedPicFront
	ld b, BANK(RedPicFront)
	ld a, [wPlayerGender] ; Added gender check
    and a      ; Added gender check
    jr z, .AreBoy3
    ld de, GreenPicFront
    ld b, BANK(GreenPicFront)
.AreBoy3
	call IntroDisplayPicCenteredOrUpperRight
.done
	ld hl, YourNameIsText
	jp PrintText

YourNameIsText: ; 699f (1:699f)
	TX_FAR _YourNameIsText
	db "@"

ChooseRivalName: ; 69a4 (1:69a4)
	call OakSpeechSlidePicRight
	ld de, DefaultNamesRival
	call DisplayIntroNameTextBox
	ld a, [wCurrentMenuItem]
	and a
	jr z, .customName
	ld hl, DefaultNamesRivalList
	call GetDefaultName
	ld de, W_RIVALNAME
	call OakSpeechSlidePicLeft
	jr .done
.customName
	ld hl, W_RIVALNAME
	ld a, NAME_RIVAL_SCREEN
	ld [wNamingScreenType], a
	call DisplayNamingScreen
	ld a, [wcf4b]
	cp "@"
	jr z, .customName
	call ClearScreen
	call Delay3
	ld de, Rival1Pic
	ld b, $13
	call IntroDisplayPicCenteredOrUpperRight
.done
	ld hl, HisNameIsText
	jp PrintText

HisNameIsText: ; 69e7 (1:69e7)
	TX_FAR _HisNameIsText
	db "@"

OakSpeechSlidePicLeft: ; 69ec (1:69ec)
	push de
	coord hl, 0, 0
	lb bc, 12, 11
	call ClearScreenArea ; clear the name list text box
	ld c, 10
	call DelayFrames
	pop de
	ld hl, wcd6d
	ld bc, NAME_LENGTH
	call CopyData
	call Delay3
	coord hl, 12, 4
	lb de, 6, 6 * SCREEN_WIDTH + 5
	ld a, $ff
	jr OakSpeechSlidePicCommon

OakSpeechSlidePicRight: ; 6a12 (1:6a12)
	coord hl, 5, 4
	lb de, 6, 6 * SCREEN_WIDTH + 5
	xor a

OakSpeechSlidePicCommon: ; 6a19 (1:6a19)
	push hl
	push de
	push bc
	ld [hSlideDirection], a
	ld a, d
	ld [hSlideAmount], a
	ld a, e
	ld [hSlidingRegionSize], a
	ld c, a
	ld a, [hSlideDirection]
	and a
	jr nz, .next
; If sliding right, point hl to the end of the pic's tiles.
	ld d, 0
	add hl, de
.next
	ld d, h
	ld e, l
.loop
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld a, [hSlideDirection]
	and a
	jr nz, .slideLeft
; sliding right
	ld a, [hli]
	ld [hld], a
	dec hl
	jr .next2
.slideLeft
	ld a, [hld]
	ld [hli], a
	inc hl
.next2
	dec c
	jr nz, .loop
	ld a, [hSlideDirection]
	and a
	jr z, .next3
; If sliding left, we need to zero the last tile in the pic (there is no need
; to take a corresponding action when sliding right because hl initially points
; to a 0 tile in that case).
	xor a
	dec hl
	ld [hl], a
.next3
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3
	ld a, [hSlidingRegionSize]
	ld c, a
	ld h, d
	ld l, e
	ld a, [hSlideDirection]
	and a
	jr nz, .slideLeft2
	inc hl
	jr .next4
.slideLeft2
	dec hl
.next4
	ld d, h
	ld e, l
	ld a, [hSlideAmount]
	dec a
	ld [hSlideAmount], a
	jr nz, .loop
	pop bc
	pop de
	pop hl
	ret

DisplayIntroNameTextBox: ; 6a6c (1:6a6c)
	push de
	coord hl, 0, 0
	ld b, $a
	ld c, $9
	call TextBoxBorder
	coord hl, 3, 0
	ld de, .namestring
	call PlaceString
	pop de
	coord hl, 2, 2
	call PlaceString
	call UpdateSprites
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	inc a
	ld [wTopMenuItemX], a
	ld [wMenuWatchedKeys], a ; A_BUTTON
	inc a
	ld [wTopMenuItemY], a
	inc a
	ld [wMaxMenuItem], a
	jp HandleMenuInput

.namestring ; 6aa3 (1:6aa3)
	db "NAME@"

IF DEF(_RED)
DefaultNamesPlayer: ; 6aa8 (1:6aa8)
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "JACK"
	db   "@"

DefaultNamesGirl:
    db   "NEW NAME"
    next "GREEN"
    next "LAYLA"
    next "LILY"
    db   "@"	
	
DefaultNamesRival: ; 6abe (1:6abe)
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "JOHN"
	db   "@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayer: ; 6aa8 (1:6aa8)
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "JOHN"
	db   "@"

DefaultNamesGirl:
    db   "NEW NAME"
    next "GREEN"
    next "LAYLA"
    next "LILY"
    db   "@"		
	
DefaultNamesRival: ; 6abe (1:6abe)
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "JACK"
	db   "@"
ENDC

IF DEF(_YELLOW)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "YELLOW"
	next "ASH"
	next "JACK"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "JOHN"
	db   "@"
ENDC

GetDefaultName: ; 6ad6 (1:6ad6)
; a = name index
; hl = name list
	ld b, a
	ld c, 0
.loop
	ld d, h
	ld e, l
.innerLoop
	ld a, [hli]
	cp "@"
	jr nz, .innerLoop
	ld a, b
	cp c
	jr z, .foundName
	inc c
	jr .loop
.foundName
	ld h, d
	ld l, e
	ld de, wcd6d
	ld bc, $14
	jp CopyData

IF DEF(_RED)
DefaultNamesPlayerList: ; 6af2 (1:6af2)
	db "NEW NAME@RED@ASH@JACK@"
DefaultNamesRivalList: ; 6b08 (1:6b08)
	db "NEW NAME@BLUE@GARY@JOHN@"
DefaultNamesGirlList:
    db "NEW NAME@GREEN@LAYLA@LILY@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayerList: ; 6af2 (1:6af2)
	db "NEW NAME@BLUE@GARY@JOHN@"
DefaultNamesRivalList: ; 6b08 (1:6b08)
	db "NEW NAME@RED@ASH@JACK@"
DefaultNamesGirlList:
    db "NEW NAME@GREEN@LAYLA@LILY@"	
ENDC
IF DEF(_YELLOW)
DefaultNamesPlayerList:
	db "NEW NAME@YELLOW@ASH@JACK@"
DefaultNamesRivalList:
	db "NEW NAME@BLUE@GARY@JOHN@"
ENDC

TextTerminator_6b20: ; 6b20 (1:6b20)
	db "@"
