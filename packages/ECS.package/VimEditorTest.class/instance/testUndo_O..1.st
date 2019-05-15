as yet unclassified
testUndo_O

	sut contents: 'abc', String cr, 'def'.
	
	self keyStroke: $O.
	self assert: (1) equals: (sut editor beginningOfLine: 1).
	self assert: 1 equals: sut editor markIndex.
	self assert: (1 to: 1) equals: sut editor lastOperation appliedInterval.
	self assert: String cr, 'abc', String cr, 'def' equals: sut contents string.
	self keyStroke: $w; keyStroke: $a.
	self assert: 'wa', String cr, 'abc', String cr, 'def' equals: sut contents string.
	
	self keyStroke: Character escape.
	self keyStroke: $u.
	self assert: 'abc', String cr, 'def' equals: sut contents string