as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		canvas fillColor: ECSColor biscuit.
		universe query: #(Transform Rendered) do: [:transform :rendered |
			rendered form
				ifNotNil: [rendered form drawOn: canvas at: transform bounds origin blend: Color white]
				ifNil: [canvas fillRectangle: transform bounds color: rendered color]].
		
		self renderFramesPerSecondOf: universe on: canvas]