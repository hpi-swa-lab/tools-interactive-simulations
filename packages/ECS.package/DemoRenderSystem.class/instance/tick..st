as yet unclassified
tick: aUniverse
	
	aUniverse canvas fillColor: Color green.
	aUniverse query: #(Rendered Transform) do: [:rendered :transform |
		rendered form drawOn: aUniverse canvas at: transform bounds origin]