as yet unclassified
tick: aUniverse

	aUniverse query: {AnnoCamera. DeltaTime} do: [:camera :deltaTime | | speed |
		speed := (deltaTime milliseconds * 1.5) rounded.
	
		aUniverse query: {KeyEvent} do: [:keyEvent | keyEvent key caseOf: {
			[$W] -> [camera position y: camera position y + speed].
			[$A] -> [camera position x: camera position x + speed].
			[$S] -> [camera position y: camera position y - speed].
			[$D] -> [camera position x: camera position x - speed].
		} otherwise: []]]