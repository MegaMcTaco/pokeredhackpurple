CeladonMansion3Script: ; 48790 (12:4790)
	jp EnableAutoTextBoxDrawing

CeladonMansion3TextPointers: ; 48793 (12:4793)
	dw ProgrammerText
	dw GraphicArtistText
	dw WriterText
	dw DirectorText
	dw GameFreakPCText1
	dw GameFreakPCText2
	dw GameFreakPCText3
	dw GameFreakSignText

ProgrammerText: ; 487a3 (12:47a3)
	TX_FAR _ProgrammerText
	db "@"

GraphicArtistText: ; 487a8 (12:47a8)
	TX_FAR _GraphicArtistText
	db "@"

WriterText: ; 487ad (12:47ad)
	TX_FAR _WriterText
	db "@"

DirectorText: ; 487b2 (12:47b2)
	TX_ASM

	; check pokédex
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	cp 150
	jr nz, .gotmew
	jr nc, .CompletedDex
	ld hl, .GameDesigner
	jr .done
.CompletedDex
	ld hl, .CompletedDexText
.done
	call PrintText
	jp TextScriptEnd

.GameDesigner ; 487d0 (12:47d0)
	TX_FAR _GameDesignerText
	db "@"

.CompletedDexText
	TX_FAR _CompletedDexText
	db $6
	TX_ASM
    ld a, [wd72e]
    and a ; got mew?
    jr z, .givemew
.givemew
    ld hl, .MeetMewGuyText
    call PrintText
	call z, WaitForTextScrollButtonPress
    lb bc, MEW, 5
    call GivePokemon
    ld a, [wSimulatedJoypadStatesEnd]
    and a
    call z, WaitForTextScrollButtonPress
    call EnableAutoTextBoxDrawing
    ld hl, .HeresYourMewText
    call PrintText
	ld hl, wd72e
	set 0, [hl]
	jr z, .gotmew
.gotmew
    ld hl, .GaveMewText
	call PrintText
   	jp TextScriptEnd
	
.GaveMewText
	TX_FAR _GaveMewText
	db $6
	TX_ASM
	callab DisplayDiploma
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd	
    
.MeetMewGuyText
    TX_FAR _MeetMewGuyText
    db "@"

.HeresYourMewText
    TX_FAR _HeresYourMewText
    db "@"
	jp TextScriptEnd

GameFreakPCText1: ; 487eb (12:47eb)
	TX_FAR _CeladonMansion3Text5
	db "@"

GameFreakPCText2: ; 487f0 (12:47f0)
	TX_FAR _CeladonMansion3Text6
	db "@"

GameFreakPCText3: ; 487f5 (12:47f5)
	TX_FAR _CeladonMansion3Text7
	db "@"

GameFreakSignText: ; 487fa (12:47fa)
	TX_FAR _CeladonMansion3Text8
	db "@"
