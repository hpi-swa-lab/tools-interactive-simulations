as yet unclassified
allocateEntity

	| index |
	index := freeIndexList
		ifEmpty: [maxEntityIndex := maxEntityIndex + 1]
		ifNotEmpty: [freeIndexList removeLast].
	
	(components at: #id) atForCreate: index.
	^ index