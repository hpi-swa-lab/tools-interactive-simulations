as yet unclassified
atForRead: anIndex

	^ anIndex > storage size
		ifTrue: [self nullInstance]
		ifFalse: [storage at: anIndex]