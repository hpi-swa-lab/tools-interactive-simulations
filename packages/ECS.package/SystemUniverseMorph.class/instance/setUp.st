as yet unclassified
setUp

	self wantsOGL ifTrue: [self setUpOGL].
	systemUniverse ifNotNil: [:u |
		u
			morph: self;
			setUp;
			query: {ScreenSize} do: [:size | size size: self extent]]