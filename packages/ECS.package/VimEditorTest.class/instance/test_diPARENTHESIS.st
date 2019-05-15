as yet unclassified
test_diPARENTHESIS

	sut contents: 'ab(cde)fgh'.
	
	self keyStrokes: 'lllldi('.
	self assert: 'ab()fgh' equals: sut contents string