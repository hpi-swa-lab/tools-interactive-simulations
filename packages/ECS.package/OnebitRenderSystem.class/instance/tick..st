as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		canvas fillColor: (Color fromString: '#472d3c').
		aUniverse query: {Rendered. Transform} do: [:rendered :transform |
			rendered form ifNotNil: [:f | f drawOn: canvas at: transform bounds origin]]
		]
	