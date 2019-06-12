as yet unclassified
tick: aUniverse

	aUniverse query: {AnnoCamera} do: [:camera | | speed |
		speed := 32. "todo: This should rely on DeltaTime"
	
		aUniverse query: {KeyEvent} do: [:keyEvent | keyEvent key caseOf: {
			[$W] -> [camera position y: camera position y + speed].
			[$A] -> [camera position x: camera position x + speed].
			[$S] -> [camera position y: camera position y - speed].
			[$D] -> [camera position x: camera position x - speed].
		} otherwise: []]]