as yet unclassified
atForCreate: anIndex

	^ storage at: anIndex ifAbsentPut: [self type new]