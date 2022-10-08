InitList:
; This entire function is useless.
	ld a, [wInitListType]

	cp INIT_ENEMYOT_LIST
	jr nz, .check_party_ot_name
	ld hl, wOTPartyCount
	ld a, ENEMY_OT_NAME
	jr .done

.check_party_ot_name
	cp INIT_PLAYEROT_LIST
	jr nz, .check_mon_name
	ld hl, wPartyCount
	ld a, PARTY_OT_NAME
	jr .done

.check_mon_name
	cp INIT_MON_LIST
	jr nz, .check_item_name
	ld hl, wCurMartCount
	ld a, MON_NAME
	jr .done

.check_item_name
	cp INIT_BAG_ITEM_LIST
	jr nz, .check_ob_item_name
	ld hl, wNumItems
	ld a, ITEM_NAME
	jr .done

.check_ob_item_name
	ld hl, wCurMartCount
	ld a, ITEM_NAME
.done
	ld [wNamedObjectType], a
	ld a, l
	ld [wListPointer], a
	ld a, h
	ld [wListPointer + 1], a
	ld bc, ItemAttributes
	ld a, c
	ld [wItemAttributesPointer], a
	ld a, b
	ld [wItemAttributesPointer + 1], a
	ret
