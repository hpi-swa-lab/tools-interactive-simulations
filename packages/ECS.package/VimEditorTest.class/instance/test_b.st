as yet unclassified
test_b

	sut contents: 'abc def'.
	
	self keyStroke: $b.
	self assert: 1 equals: sut editor markIndex.
	self keyStroke: $w.
	self assert: 5 equals: sut editor markIndex.
	self keyStroke: $l.
	
	self keyStroke: $b.
	self assert: 5 equals: sut editor markIndex.
	
	self keyStroke: $b.
	self assert: 1 equals: sut editor markIndex