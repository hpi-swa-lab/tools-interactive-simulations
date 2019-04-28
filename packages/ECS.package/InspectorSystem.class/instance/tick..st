as yet unclassified
tick: aWorld

	aWorld query: {ClickEvent} do: [:clickComponents | | clickPosition |
		clickPosition := clickComponents first position.
		aWorld query: {Transform. #id} do: [:components | | entity |
			entity := components second.
			(components first bounds containsPoint: clickPosition) ifTrue: [entity explore]]]