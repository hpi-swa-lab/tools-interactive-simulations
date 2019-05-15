as yet unclassified
test_dd

	sut contents: 'ab', String cr, 'hi', String cr, 'qw we'.
	
	self keyStrokes: 'jdd'.
	self assert: 'ab', String cr, 'qw we' equals: sut contents string.
	
	self keyStroke: $u.
	self assert: 'ab', String cr, 'hi', String cr, 'qw we' equals: sut contents string.
	
	self keyStrokes: '..'.
	self assert: 'ab' equals: sut contents string