as yet unclassified
test_S

	sut contents: 'ab cdef jkl', String cr, 'qw we'.
	
	self keyStrokes: 'llllSaw'.
	self assert: 'aw', String cr, 'qw we' equals: sut contents string.
	self keyStroke: Character escape.
	
	self keyStroke: $u.
	self assert: 'ab cdef jkl', String cr, 'qw we' equals: sut contents string.
	
	self keyStrokes: 'j.'.
	self assert: 'ab cdef jkl', String cr, 'aw' equals: sut contents string