as yet unclassified
test_D

	sut contents: 'ab cdef jkl', String cr, 'qw we'.
	
	self keyStrokes: 'llllD'.
	self assert: 'ab c', String cr, 'qw we' equals: sut contents string.
	
	self keyStroke: $u.
	self assert: 'ab cdef jkl', String cr, 'qw we' equals: sut contents string