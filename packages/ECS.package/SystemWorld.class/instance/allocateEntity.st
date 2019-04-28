as yet unclassified
allocateEntity

	^ freeIndexList
		ifEmpty: [maxEntityIndex := maxEntityIndex + 1]
		ifNotEmpty: [freeIndexList removeLast]