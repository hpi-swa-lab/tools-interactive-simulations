as yet unclassified
testUndo_a

	sut contents: 'abcdef'.
	
	self keyStroke: $a.
	self assert: 2 equals: sut editor markIndex.
	self keyStroke: $w; keyStroke: $a.
	self assert: 'awabcdef' equals: sut contents string.

	self keyStroke: Character escape.
	self keyStroke: $u.
	self assert: 'abcdef' equals: sut contents string