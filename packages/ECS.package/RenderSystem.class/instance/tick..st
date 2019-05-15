as yet unclassified
tick: aWorld

	aWorld draw: [:canvas |
		aWorld query: {Transform. Rendered} do: [:components | | color bounds |
			bounds := components first bounds.
			color := components second color.
			components second form
				ifNotNil: [canvas image: components second form at: bounds origin rule: Form blend]
				ifNil: [canvas fillRectangle: bounds color: color]].
		
		"self renderOutlineOf: aWorld on: cavas."
		self renderFramesPerSecondOf: aWorld on: canvas]