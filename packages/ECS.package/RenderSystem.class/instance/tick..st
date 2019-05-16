as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		universe query: {Transform. Rendered} do: [:transform :rendered |
			rendered form
				ifNotNil: [canvas image: rendered form at: transform bounds origin rule: Form blend]
				ifNil: [canvas fillRectangle: transform bounds color: rendered color]].
		
		self renderFramesPerSecondOf: universe on: canvas]