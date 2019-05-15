as yet unclassified
test_C

	sut contents: 'ab cdef jkl', String cr, 'qw we'.
	
	self keyStrokes: 'llllCaw'.
	self assert: 'ab caw', String cr, 'qw we' equals: sut contents string.
	self keyStroke: Character escape.
	
	self keyStroke: $u.
	self assert: 'ab cdef jkl', String cr, 'qw we' equals: sut contents string