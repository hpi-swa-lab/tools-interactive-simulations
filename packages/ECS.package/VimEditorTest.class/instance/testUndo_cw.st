as yet unclassified
testUndo_cw

	sut contents: 'abcdef'.
	
	self keyStrokes: 'llcw'.
	self assert: 'ab' equals: sut contents string.
	self keyStrokes: 'uio'.
	self assert: 'abuio' equals: sut contents string.
	self keyStroke: Character escape.
	
	self keyStroke: $u.
	self assert: 'abcdef' equals: sut contents string