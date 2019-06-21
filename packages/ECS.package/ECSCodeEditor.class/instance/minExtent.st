layout
minExtent

	^ super minExtent x @ (textMorph paragraph extent y + self extraSpacing)