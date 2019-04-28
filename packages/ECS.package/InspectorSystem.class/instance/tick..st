as yet unclassified
tick: aWorld

	aWorld query: {ClickEvent} do: [:clickComponents | | clickPosition |
		clickPosition := clickComponents first position.
		aWorld query: {Transform. Rendered. Entity} do: [:components | | position size entity |
			position := components first position.
			size := components second size.
			entity := components third.
			((position extent: size) containsPoint: clickPosition) ifTrue: [entity explore]]]