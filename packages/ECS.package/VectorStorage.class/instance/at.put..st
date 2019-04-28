as yet unclassified
at: aNumber put: anObject

	storage size < aNumber ifTrue: [self growToAccomodate: aNumber].
	storage at: aNumber put: anObject