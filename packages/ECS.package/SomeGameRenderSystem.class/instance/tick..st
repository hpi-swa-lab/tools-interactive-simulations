as yet unclassified
tick: aUniverse

	aUniverse canvas fillColor: ECSColor green.
	aUniverse query: #(Transform Rendered) do: [:transform :rendered |
		rendered form
		"rendered form drawOn: canvas at: transform bounds origin blend: Color white"
			ifNotNil: [aUniverse canvas translucentImage: rendered form object at: transform bounds origin]
			ifNil: [aUniverse canvas fillRectangle: transform bounds color: rendered color]]