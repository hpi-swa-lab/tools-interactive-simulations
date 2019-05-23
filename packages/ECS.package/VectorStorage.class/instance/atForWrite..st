as yet unclassified
atForWrite: anIndex

	^ anIndex > storage size
		ifTrue: [self growToAccomodate: anIndex. storage at: anIndex]
		ifFalse: [storage at: anIndex]