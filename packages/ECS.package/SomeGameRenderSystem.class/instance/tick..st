as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		canvas fillColor: ECSColor green.
		universe query: #(Transform Rendered) do: [:transform :rendered |
			rendered form
			"rendered form drawOn: canvas at: transform bounds origin blend: Color white"
				ifNotNil: [canvas translucentImage: rendered form object at: transform bounds origin]
				ifNil: [canvas fillRectangle: transform bounds color: rendered color]].]