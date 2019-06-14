as yet unclassified
testTouched

	| num |
	num := ECSSmoothNumber new.
	self assert: num touched equals: false.
	
	num report: 0.
	self assert: num touched equals: true.
	
	num resetTouched.
	self assert: num touched equals: false.
	
	num touch.
	self assert: num touched equals: true