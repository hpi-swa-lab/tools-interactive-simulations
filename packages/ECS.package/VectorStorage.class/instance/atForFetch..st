as yet unclassified
atForFetch: anIndex

	^ anIndex > storage size
		ifTrue: [nullInstance]
		ifFalse: [storage at: anIndex]