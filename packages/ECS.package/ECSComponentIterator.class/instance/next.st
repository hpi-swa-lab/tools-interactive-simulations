as yet unclassified
next

	| next |
	next := nil.
	[next isNil] whileTrue: [
		index > maxIndex ifTrue: [^ nil].
		next := self matchEntityAt: index.
		index := index + 1]. 
	^ next