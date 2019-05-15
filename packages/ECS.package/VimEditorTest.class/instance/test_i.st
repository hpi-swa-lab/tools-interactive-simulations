as yet unclassified
test_i

	sut contents: 'abcdef'.
	
	self keyStroke: $i.
	self assert: 1 equals: sut editor markIndex.
	self keyStroke: $a.
	self assert: 'aabcdef' equals: sut contents string.
	self keyStroke: Character escape.
	
	self keyStroke: $u.
	self assert: 'abcdef' equals: sut contents string