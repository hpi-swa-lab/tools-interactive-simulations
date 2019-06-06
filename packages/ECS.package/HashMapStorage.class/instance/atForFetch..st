as yet unclassified
atForFetch: anIndex

	^ storage at: anIndex ifAbsent: [nullInstance]