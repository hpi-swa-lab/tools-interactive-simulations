as yet unclassified
testSmoothNumber

	| num |
	num := ECSSmoothNumber new.
	num smoothingDuration: 10.
	self assert: 0 equals: num value.
	
	num report: 1.
	self assert: 0.1 equals: num value.
	
	2 to: 10 do: [:n | num report: n].
	self assert: 5.5 equals: num value.
	
	11 to: 20 do: [:n | num report: n].
	self assert: 15.5 equals: num value