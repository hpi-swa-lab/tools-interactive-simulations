as yet unclassified
mapToPixelPosition: mapPosition offset: offset

	^ ((mapPosition x - mapPosition y - 1) * self tileSize x / 2 + offset x),
		((mapPosition x + mapPosition y + 1) * self tileSize y / 2 + offset y)