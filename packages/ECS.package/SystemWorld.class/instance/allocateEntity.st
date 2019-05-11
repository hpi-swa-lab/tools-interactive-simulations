entity lifecycle
allocateEntity

	| index |
	index := freeIndexList
		ifEmpty: [maxEntityIndex := maxEntityIndex + 1]
		ifNotEmpty: [freeIndexList removeLast].
	
	(components at: #id) at: index put: true.
	^ index