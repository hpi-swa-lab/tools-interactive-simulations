as yet unclassified
rowAtLocation: aPoint

	| y |
	y := aPoint y.
	y < self top ifTrue: [^ 1 min: self itemCount].
	^((y - self top // self itemHeight) + 1) min: self itemCount max: 0