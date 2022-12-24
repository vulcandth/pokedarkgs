CategoryNames:
	table_width 2, CategoryNames
	dw .Physical
	dw .Special
	dw .Status
	assert_table_length NUM_MOVE_CATEGORIES

.Physical: db "PHYSICAL@"
.Special:  db "SPECIAL@"
.Status:   db "STATUS@"
