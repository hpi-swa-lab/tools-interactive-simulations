as yet unclassified
test_cw

	sut contents: 'abcdef'.
	
	self keyStrokes: 'llcw'.
	self assert: 'ab' equals: sut contents string.
	self keyStrokes: 'def'.
	self assert: 'abdef' equals: sut contents string