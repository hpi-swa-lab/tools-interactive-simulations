as yet unclassified
testOnSecondLine_o

	sut contents: 'abc', String cr, 'wa', String cr, 'def'.
	
	self keyStroke: $j; keyStroke: $l; keyStroke: $l.
	self keyStroke: $o.
	self keyStroke: $x; keyStroke: $y.
	self assert: 'abc', String cr, 'wa', String cr, 'xy', String cr, 'def' equals: sut contents string