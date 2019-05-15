as yet unclassified
test_db

	sut contents: 'abcdef'.
	
	self keyStrokes: 'lldb'.
	self assert: 'cdef' equals: sut contents string.
	
	self keyStroke: $u.
	self assert: 'abcdef' equals: sut contents string