; Register aliases

_hl_::
	jp hl

_de_::
	push de
	ret

SwapHLDE::
	push de
	ld d, h
	ld e, l
	pop hl
	ret
