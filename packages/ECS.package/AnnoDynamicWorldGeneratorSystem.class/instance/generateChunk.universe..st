as yet unclassified
generateChunk: anECSVector2 universe: aUniverse

	aUniverse spawnNewWith: #(AnnoChunk) do: [:annoChunk |
		annoChunk position: anECSVector2].
	1 to: ChunkSize do: [:x | 1 to: ChunkSize do: [:y | 
		aUniverse spawnNewWith: #(AnnoTile Rendered) do: [:annoTile :rendered | | globalPos |
			globalPos := (x, y) + (anECSVector2 * ChunkSize).
			annoTile 
				position: globalPos;
				chunkPos: anECSVector2;
				isPreview: false;
				buildingPos: 0,0;
				isBuiltByPlayer: false.
			rendered form: (self generateForm: globalPos)]]]