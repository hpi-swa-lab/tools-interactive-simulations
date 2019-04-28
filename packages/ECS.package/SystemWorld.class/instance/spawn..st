as yet unclassified
spawn: anEntity

	anEntity comeAlive.
	
	freeIndexList
		ifEmpty: [entities add: anEntity]
		ifNotEmpty: [entities at: freeIndexList removeLast put: anEntity].
	
	self changed: #getList