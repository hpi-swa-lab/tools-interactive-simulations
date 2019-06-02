as yet unclassified
tick: aUniverse

	aUniverse query: {#id. AnnoTile} do: [:id :annoTile |
		aUniverse remove: id].
	aUniverse query: {#id. AnnoCamera} do: [:id :annoCamera |
		aUniverse remove: id].
	aUniverse spawnNewWith: {AnnoCamera} do: [:annoCamera |
		annoCamera position: (ECSVector2 x: 0 y: 0)].
	
	aUniverse query: {#id. Mouse. DeltaTime} do: [:id :mouse :deltaTime |
		aUniverse remove: id].
	aUniverse spawnNewWith: {Mouse. DeltaTime} do: [:mouse :deltaTime |
		deltaTime milliseconds: 0; last: Time millisecondClockValue; elapsed: 0.
		mouse position: 0 , 0; leftJustDown: false; leftJustUp: false; 
			leftDown: false; wheelDelta: (ECSVector2 x: 0 y: 0)]