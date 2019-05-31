as yet unclassified
tick: aUniverse

	aUniverse query: {#id. AnnoTile} do: [:id :annoTile |
		aUniverse remove: id].
	aUniverse query: {#id. AnnoCamera} do: [:id :annoCamera |
		aUniverse remove: id].
	aUniverse spawnNewWith: {AnnoCamera} do: [:annoCamera |
		annoCamera position: (ECSVector2 x: 0 y: 0)].
	
	aUniverse query: {#id. Mouse} do: [:id :annoCamera |
		aUniverse remove: id].
	aUniverse spawnNewWith: {Mouse} do: [:mouse |
		mouse position: 0 , 0; leftJustDown: false; leftJustUp: false; leftDown: false; wheelDelta: (ECSVector2 x: 0 y: 0)]