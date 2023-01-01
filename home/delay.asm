DelayFrame::
; Wait for one frame
	ld a, 1
	ld [wVBlankOccurred], a

; Wait for the next VBlank, halting to conserve battery
.halt
	halt
	nop ; no-optimize nops (Required after halt)
	ld a, [wVBlankOccurred]
	and a
	jr nz, .halt
	ret

Delay3::
	ld c, 3
DelayFrames::
; Wait c frames
	call DelayFrame
	dec c
	jr nz, DelayFrames
	ret
