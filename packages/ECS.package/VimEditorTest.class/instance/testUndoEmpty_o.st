as yet unclassified
testUndoEmpty_o

	sut contents: 'abc', String cr, 'def'.
	
	self keyStroke: $o.
	self assert: 'abc', String cr, String cr, 'def' equals: sut contents string.

	self keyStroke: Character escape.
	self keyStroke: $u.
	self assert: 'abc', String cr, 'def' equals: sut contents string