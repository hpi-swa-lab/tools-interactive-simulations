as yet unclassified
tick: aUniverse

	aUniverse canvas fillColor: ECSColor biscuit.
	aUniverse query: #(Transform Rendered) do: [:transform :rendered |
		rendered form
			ifNotNil: [rendered form drawOn: aUniverse canvas at: transform bounds origin blend: Color white]
			ifNil: [aUniverse canvas fillRectangle: transform bounds color: rendered color]].
	
	self renderFramesPerSecondOf: aUniverse on: aUniverse canvas