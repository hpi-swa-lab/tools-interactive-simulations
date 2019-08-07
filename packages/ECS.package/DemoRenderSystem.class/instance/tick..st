as yet unclassified
tick: aUniverse
	
	aUniverse canvas fillColor: Color white.
	aUniverse query: #(Rendered Transform) do: [:rendered :transform |
		rendered form
			ifNotNil: [rendered form drawOn: aUniverse canvas at: transform bounds origin]
			ifNil: [aUniverse canvas fillRectangle: transform bounds color: rendered color]]