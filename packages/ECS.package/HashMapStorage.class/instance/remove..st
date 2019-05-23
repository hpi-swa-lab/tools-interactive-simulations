as yet unclassified
remove: anIndex

	(storage at: anIndex) alive: false.
	storage removeKey: anIndex ifAbsent: []