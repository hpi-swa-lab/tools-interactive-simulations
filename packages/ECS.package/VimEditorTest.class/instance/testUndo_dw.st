as yet unclassified
testUndo_dw

	sut contents: 'abcdef'.
	
	self keyStrokes: 'lldw'.
	self assert: 'ab' equals: sut contents string.
	
	self keyStroke: $u.
	self assert: 'abcdef' equals: sut contents string