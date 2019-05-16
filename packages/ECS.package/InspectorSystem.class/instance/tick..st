as yet unclassified
tick: aUniverse

	aUniverse query: {ClickEvent} do: [:click |
		aUniverse query: {Transform. #id} do: [:transform :id |
			(transform bounds containsPoint: click position) ifTrue: [(aUniverse allComponentsOf: id) explore]]]