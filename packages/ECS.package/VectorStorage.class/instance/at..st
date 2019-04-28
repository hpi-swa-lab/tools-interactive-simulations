as yet unclassified
at: anIndex

	^ anIndex > storage size
		ifTrue: [nil]
		ifFalse: [storage at: anIndex]