as yet unclassified
testKeepWhitespace_cw

	sut contents: 'abc def'.
	
	self keyStrokes: 'cw'.
	self assert: ' def' equals: sut contents string.
	self keyStrokes: 'ab'.
	self assert: 'ab def' equals: sut contents string