GetTrainerName_:
	ld hl, wLinkEnemyTrainerName
	ld a, [wLinkState]
	and a
	jr nz, .foundName
	ld a, [W_TRAINERCLASS]
	ld [wd0b5], a
	ld a, TRAINER_NAME
	ld [wNameListType], a
	ld a, BANK(TrainerNames)
	ld [wPredefBank], a
	call GetName
	ld hl, wcd6d
.foundName
	ld de, W_TRAINERNAME
	ld bc, $d
	jp CopyData