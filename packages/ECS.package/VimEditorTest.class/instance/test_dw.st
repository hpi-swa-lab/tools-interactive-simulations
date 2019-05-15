as yet unclassified
test_dw

	sut contents: 'abcdef'.
	
	self keyStrokes: 'lldw'.
	self assert: 'ab' equals: sut contents string