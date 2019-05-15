as yet unclassified
toggleBody

	body owner
		ifNotNil: [self removeMorph: body]
		ifNil: [self addMorphBack: body].
	self layoutChanged