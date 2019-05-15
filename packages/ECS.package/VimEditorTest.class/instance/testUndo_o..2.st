as yet unclassified
testUndo_o

	sut contents: 'abc', String cr, 'def'.
	
	self keyStroke: $o.
	self assert: (5 to: 5) equals: sut editor lastOperation appliedInterval.
	self assert: 5 equals: sut editor markIndex.
	self assert: 'abc', String cr, String cr, 'def' equals: sut contents string.
	self keyStroke: $w; keyStroke: $a.
	self assert: 'abc', String cr, 'wa', String cr, 'def' equals: sut contents string.
	
	self keyStroke: Character escape.
	self keyStroke: $u.
	self assert: 'abc', String cr, 'def' equals: sut contents string