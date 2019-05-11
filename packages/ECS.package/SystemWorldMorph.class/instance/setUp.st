as yet unclassified
setUp

	self wantsOGL ifTrue: [self setUpOGL].
	systemWorld ifNotNil: [:w | w morph: self; setUp].
	screenSizeResource size: self extent