as yet unclassified
testUndoMultipleLines_cw

	sut contents: 'abcdef', String cr, 'xyz'.
	
	self keyStrokes: 'llcw'.
	self assert: 'ab', String cr, 'xyz' equals: sut contents string.
	self keyStrokes: 'uio'.
	self assert: 'abuio', String cr, 'xyz' equals: sut contents string.
	self keyStroke: Character escape.
	self assert: (3 to: 5) equals: sut editor lastOperation appliedInterval.
	
	self keyStroke: $u.
	self assert: 'abcdef', String cr, 'xyz' equals: sut contents string