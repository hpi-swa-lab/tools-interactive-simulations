as yet unclassified
tick: aUniverse

	| camera speed |
	camera := (aUniverse queryList: {AnnoCamera}).
	camera ifEmpty: [^ self].
	camera := camera first first.
	
	speed := 16. "todo: This should rely on DeltaTime"
	
	aUniverse query: {KeyEvent} do: [:keyEvent | keyEvent key caseOf: {
		[$W] -> [camera position y: camera position y + speed].
		[$A] -> [camera position x: camera position x + speed].
		[$S] -> [camera position y: camera position y - speed].
		[$D] -> [camera position x: camera position x - speed].
	} otherwise: []]