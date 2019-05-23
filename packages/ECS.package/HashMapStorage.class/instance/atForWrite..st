as yet unclassified
atForWrite: anIndex

	^ storage at: anIndex ifAbsent: [self type new]