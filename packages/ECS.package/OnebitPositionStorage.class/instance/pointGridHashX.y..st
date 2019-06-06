as yet unclassified
pointGridHashX: x y: y
	" Szudzik's pair function, maps two (signed) Integers to one "
	| hx hy |
	hx := x >= 0 ifTrue: [2 * x] ifFalse: [-2 * x - 1].
	hy := y >= 0 ifTrue: [2 * y] ifFalse: [-2 * y - 1].
	^ hx >= hy ifTrue: [ hx * hx + hx + hy ] ifFalse: [ hx + (hy * hy) ]