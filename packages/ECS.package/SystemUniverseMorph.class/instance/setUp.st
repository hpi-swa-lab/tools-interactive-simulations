as yet unclassified
setUp

	self wantsOGL ifTrue: [self setUpOGL].
	systemUniverse ifNotNil: [:w | w morph: self; setUp].
	systemUniverse query: {ScreenSize} do: [:size | size size: self extent]