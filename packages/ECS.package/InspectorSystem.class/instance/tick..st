as yet unclassified
tick: aUniverse

	aUniverse query: {ClickEvent} do: [:clickComponents | | clickPosition |
		clickPosition := clickComponents first position.
		aUniverse query: {Transform. #id} do: [:components | | entity |
			entity := components second.
			(components first bounds containsPoint: clickPosition) ifTrue: [entity explore]]]