as yet unclassified
tick: aUniverse

	aUniverse query: {Mouse} do: [:mouse |
		mouse leftJustDown ifTrue: [
			aUniverse query: {Transform. #id} do: [:transform :id |
				(transform bounds containsPoint: mouse position) ifTrue: [(aUniverse allComponentsOf: id) explore]]]]