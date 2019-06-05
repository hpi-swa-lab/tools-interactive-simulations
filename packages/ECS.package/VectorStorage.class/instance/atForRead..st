as yet unclassified
atForRead: anIndex

	^ anIndex > storage size
		ifTrue: [nullInstance]
		ifFalse: [storage at: anIndex]