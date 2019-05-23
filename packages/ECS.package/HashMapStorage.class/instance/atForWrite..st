as yet unclassified
atForWrite: anIndex

	^ storage at: anIndex ifAbsentPut: [self type new]