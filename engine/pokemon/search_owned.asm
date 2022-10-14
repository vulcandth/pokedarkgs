MonCheck:
; Check if the player owns any Pokémon of the species in wScriptVar.
; Return the result in wScriptVar.

	call CheckOwnMonAnywhere
	jr c, .exists

	; doesn't exist
	xor a
	ld [wScriptVar], a
	ret

.exists
	ld a, 1
	ld [wScriptVar], a
	ret

CheckOwnMonAnywhere:
; Check if the player owns any monsters of the species in wScriptVar.
; It must exist in either party or PC, and have the player's OT and ID.

	ld b, NUM_BOXES
.outer_loop
	inc b
	dec b
	ld c, PARTY_LENGTH
	jr z, .loop
	ld c, MONS_PER_BOX
.loop
	newfarcall GetStorageBoxMon
	jr z, .next

	; Check if the species is correct
	ld hl, wBufferMonAltSpecies ; TODO : fix species
	ld a, [wScriptVar]
	cp [hl]
	jr nz, .next

	; Verify ID
	ld hl, wBufferMonID
	ld a, [wPlayerID]
	cp [hl]
	jr nz, .next
	inc hl
	ld a, [wPlayerID + 1]
	cp [hl]
	jr nz, .next

	; check OT

	; Verify OT
	ld hl, wBufferMonOT
	ld de, wPlayerName
.cmp_ot
	ld a, [de]
	cp [hl]
	inc de
	inc hl
	jr nz, .next
	cp "@"
	scf
	ret z
	jr .cmp_ot
.next
	dec c
	jr nz, .loop
	dec b
	bit 7, b ; check for reaching -1
	jr z, .outer_loop
	; Failed to find a matching mon
	xor a
	ret

UpdateOTPointer:
	push hl
	ld hl, NAME_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ret
