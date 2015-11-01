FishingAnim: ; 707b6 (1c:47b6)
	ld c, 10
	call DelayFrames
	ld hl, wd736
	set 6, [hl] ; reserve the last 4 OAM entries
	ld a, [wPlayerGender] ; added gender check
    bit 2, a      ; added gender check
    jr z, .BoySpriteLoad
    ld de, GreenSprite
    ld hl, vNPCSprites
    ld bc, (BANK(GreenSprite) << 8) + $0c
    jr .KeepLoadingSpriteStuff
.BoySpriteLoad
    ld de, RedSprite ; $4180
    ld hl, vNPCSprites
    ld bc, (BANK(RedSprite) << 8) + $0c
.KeepLoadingSpriteStuff
	call CopyVideoData
	ld a, [wPlayerGender] ; added gender check
    bit 2, a      ; added gender check
    jr z, .BoyTiles ; skip loading Green's stuff if you're Red
	ld a, $4
	ld hl, GreenFishingTiles
    jr .ContinueRoutine ; go back to main routine after loading Green's stuff
.BoyTiles ; alternately, load Red's stuff
    ld a, $4
	ld hl, RedFishingTiles
.ContinueRoutine
	call LoadAnimSpriteGfx
	ld a, [wSpriteStateData1 + 2]
	ld c, a
	ld b, $0
	ld hl, FishingRodOAM
	add hl, bc
	ld de, wOAMBuffer + $9c
	ld bc, $4
	call CopyData
	ld c, 100
	call DelayFrames
	ld a, [wRodResponse]
	and a
	ld hl, NoNibbleText
	jr z, .done
	cp $2
	ld hl, NothingHereText
	jr z, .done

; there was a bite

; shake the player's sprite vertically
	ld b, 10
.loop
	ld hl, wSpriteStateData1 + 4 ; player's sprite Y screen position
	call .ShakePlayerSprite
	ld hl, wOAMBuffer + $9c
	call .ShakePlayerSprite
	call Delay3
	dec b
	jr nz, .loop

; If the player is facing up, hide the fishing rod so it doesn't overlap with
; the exclamation bubble that will be shown next.
	ld a, [wSpriteStateData1 + 2] ; player's sprite facing direction
	cp SPRITE_FACING_UP
	jr nz, .skipHidingFishingRod
	ld a, $a0
	ld [wOAMBuffer + $9c], a

.skipHidingFishingRod
	ld hl, wEmotionBubbleSpriteIndex
	xor a
	ld [hli], a ; player's sprite
	ld [hl], a ; EXCLAMATION_BUBBLE
	predef EmotionBubble

; If the player is facing up, unhide the fishing rod.
	ld a, [wSpriteStateData1 + 2] ; player's sprite facing direction
	cp SPRITE_FACING_UP
	jr nz, .skipUnhidingFishingRod
	ld a, $44
	ld [wOAMBuffer + $9c], a

.skipUnhidingFishingRod
	ld hl, ItsABiteText

.done
	call PrintText
	ld hl, wd736
	res 6, [hl] ; unreserve the last 4 OAM entries
	call LoadFontTilePatterns
	ret

.ShakePlayerSprite
	ld a, [hl]
	xor $1
	ld [hl], a
	ret

NoNibbleText: ; 70847 (1c:4847)
	TX_FAR _NoNibbleText
	db "@"

NothingHereText: ; 7084c (1c:484c)
	TX_FAR _NothingHereText
	db "@"

ItsABiteText: ; 70851 (1c:4851)
	TX_FAR _ItsABiteText
	db "@"

FishingRodOAM: ; 70856 (1c:4856)
; specifies how the fishing rod should be drawn on the screen
; first byte = screen y coordinate
; second byte = screen x coordinate
; third byte = tile number
; fourth byte = sprite properties
	db $5B, $4C, $FD, $00 ; player facing down
	db $44, $4C, $FD, $00 ; player facing up
	db $50, $40, $FE, $00 ; player facing left
	db $50, $58, $FE, $20 ; player facing right ($20 means "horizontally flip the tile")

RedFishingTiles: ; 70866 (1c:4866)
	dw RedFishingTilesFront
	db 2, BANK(RedFishingTilesFront)
	dw vNPCSprites + $20

	dw RedFishingTilesBack
	db 2, BANK(RedFishingTilesBack)
	dw vNPCSprites + $60

	dw RedFishingTilesSide
	db 2, BANK(RedFishingTilesSide)
	dw vNPCSprites + $a0

	dw RedFishingRodTiles
	db 3, BANK(RedFishingRodTiles)
	dw vNPCSprites2 + $7d0

GreenFishingTiles: ; newly added table of Green's sprites
    dw GreenFishingTilesFront
    db 2, BANK(GreenFishingTilesFront)
    dw vNPCSprites + $20

    dw GreenFishingTilesBack
    db 2, BANK(GreenFishingTilesBack)
    dw vNPCSprites + $60

    dw GreenFishingTilesSide
    db 2, BANK(GreenFishingTilesSide)
    dw vNPCSprites + $a0

    dw RedFishingRodTiles
    db 3, BANK(RedFishingRodTiles)
    dw vNPCSprites2 + $7d0	