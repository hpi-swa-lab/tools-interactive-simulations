as yet unclassified
atForRead: anIndex

	^ storage at: anIndex ifAbsent: [self nullInstance]