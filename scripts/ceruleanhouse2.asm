CeruleanHouse2Script: ; 74e09 (1d:4e09)
    ld a, $1
    ld [wAutoTextBoxDrawingControl], a
    dec a
    ld [wDoNotWaitForButtonPressAfterDisplayingText], a
    ret

CeruleanHouse2TextPointers: ; 74e13 (1d:4e13)
    dw CeruleanHouse2Text1

CeruleanHouse2Text1: ; 74e15 (1d:4e15)
    TX_ASM
    ld hl, CeruleanHouse2Text_74e77
    call PrintText
    xor a
    ld [wCurrentMenuItem], a
    ld [wListScrollOffset], a
.asm_74e23
    ld hl, CeruleanHouse2Text_74e7c
    call PrintText
    ld hl, StoneItemList
    call LoadItemList
    ld hl, wItemList
    ld a, l
    ld [wListPointer], a
    ld a, h
    ld [wListPointer + 1], a
    xor a
    ld [wPrintItemPrices], a
    ld [wMenuItemToSwap], a
    ld a, SPECIALLISTMENU
    ld [wListMenuID], a
    call DisplayListMenuID
    jr c, .asm_74e60
    ld hl, MenuTextPointers
    ld a, [wWhichPokemon]
    add a
    ld d, $0
    ld e, a
    add hl, de
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call PrintText
    jr .asm_74e23
.asm_74e60
    xor a
    ld [wListScrollOffset], a
    ld hl, CeruleanHouse2Text_74e81
    call PrintText
    jp TextScriptEnd

StoneItemList: ; 74e6d (1d:4e6d)
    db 9,FIRE_STONE,THUNDER_STONE,WATER_STONE,LEAF_STONE,ICE_STONE,STEEL_STONE,FAIRY_STONE,SUN_STONE,MOON_STONE,$FF

CeruleanHouse2Text_74e77: ; 74e77 (1d:4e77)
    TX_FAR _CeruleanHouse2Text_74e77
    db "@"

CeruleanHouse2Text_74e7c: ; 74e7c (1d:4e7c)
    TX_FAR _CeruleanHouse2Text_74e7c
    db "@"

CeruleanHouse2Text_74e81: ; 74e81 (1d:4e81)
    TX_FAR _CeruleanHouse2Text_74e81
    db "@"

MenuTextPointers:
    dw FireStoneText
    dw ThunderStoneText
    dw WaterStoneText
    dw LeafStoneText
    dw IceStoneText
    dw SteelStoneText
    dw FairyStoneText
    dw SunStoneText
    dw MoonStoneText

FireStoneText:
    TX_FAR _FireStoneText
    db "@"
	
ThunderStoneText:
    TX_FAR _ThunderStoneText
    db "@"
	
WaterStoneText: 
    TX_FAR _WaterStoneText
    db "@"

LeafStoneText:
    TX_FAR _LeafStoneText
    db "@"

IceStoneText:
    TX_FAR _IceStoneText
    db "@"

SteelStoneText:
    TX_FAR _SteelStoneText
    db "@"

FairyStoneText:
    TX_FAR _FairyStoneText
    db "@"

SunStoneText:
    TX_FAR _SunStoneText
    db "@"

MoonStoneText:
    TX_FAR _MoonStoneText
    db "@"