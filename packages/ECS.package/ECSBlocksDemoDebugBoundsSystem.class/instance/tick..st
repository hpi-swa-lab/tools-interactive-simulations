as yet unclassified
tick: aUniverse
	
	aUniverse query: #(Rendered Transform) do: [:rendered :transform |
		aUniverse canvas fillRectangle: transform bounds color: (Color red alpha: 0.2)]