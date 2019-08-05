as yet unclassified
squaredDistanceTo: aVector

	| a b |
	a :=  self x - aVector x.
	b := self y - aVector y.
	^ (a * a) + (b * b)