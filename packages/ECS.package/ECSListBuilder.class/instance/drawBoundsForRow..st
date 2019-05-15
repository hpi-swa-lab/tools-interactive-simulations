as yet unclassified
drawBoundsForRow: row

	| topLeft drawBounds |
	topLeft := self topLeft x @ (self topLeft y + ((row - 1) * self itemHeight)).
	drawBounds := topLeft extent: self width @ self itemHeight.
	^ drawBounds