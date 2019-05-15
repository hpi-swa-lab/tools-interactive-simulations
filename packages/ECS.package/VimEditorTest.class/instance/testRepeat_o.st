as yet unclassified
testRepeat_o

	sut contents: 'abc', String cr, 'def'.
	
	self keyStroke: $o.
	self assert: 'abc', String cr, String cr, 'def' equals: sut contents string.
	self keyStroke: $w; keyStroke: $a.
	self assert: 'abc', String cr, 'wa', String cr, 'def' equals: sut contents string.
	self keyStroke: Character escape.
	self assert: 7 equals: sut editor markIndex.
	
	self assert: 7 equals: sut paragraph lines second last.
	
	self keyStroke: $..
	
	"self assert: (8 to: 10) equals: sut editor lastOperation appliedInterval."
	self assert: 'abc', String cr, 'wa', String cr, 'wa', String cr, 'def' equals: sut contents string.