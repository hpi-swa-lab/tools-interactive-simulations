as yet unclassified
testRepeat_cw

	sut contents: 'abcdef', String cr, 'xyz'.
	
	self keyStrokes: 'llcw'.
	self assert: 'ab', String cr, 'xyz' equals: sut contents string.
	self keyStrokes: 'uio'.
	self assert: 'abuio', String cr, 'xyz' equals: sut contents string.
	self keyStroke: Character escape.
	
	self keyStrokes: 'j0'.
	self assert: 7 equals: sut editor markIndex.
	self keyStroke: $..
	self assert: 'abuio', String cr, 'uio' equals: sut contents string