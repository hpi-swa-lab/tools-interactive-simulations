as yet unclassified
tick: aUniverse

	aUniverse query: #(id AnnoTile) do: [:id :annoTile |
		aUniverse remove: id].
	aUniverse query: #(id #AnnoChunk) do: [:id :annoChunk |
		aUniverse remove: id].
	aUniverse query: #(id AnnoCamera) do: [:id :annoCamera |
		aUniverse remove: id].
	aUniverse query: #(id DeltaTime) do: [:id :deltaTime |
		aUniverse remove: id].
	aUniverse spawnNewWith: #(DeltaTime) do: [:deltaTime |
		deltaTime milliseconds: 0; last: Time millisecondClockValue; elapsed: 0]