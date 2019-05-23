as yet unclassified
remove: anIndex

	storage at: anIndex ifPresent: [:e | e alive: false].
	storage removeKey: anIndex ifAbsent: []