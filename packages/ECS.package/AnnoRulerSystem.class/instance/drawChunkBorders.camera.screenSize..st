as yet unclassified
drawChunkBorders: canvas camera: camera screenSize: screenSize

	| chunkOffset |
	chunkOffset := camera \\ (TileSize * ChunkSize).
	
	-1 * TileSize x * ChunkSize to: screenSize x by: TileSize x * ChunkSize do: [:x | 
		-1 * TileSize y * ChunkSize to: screenSize y by: TileSize y * ChunkSize do: [:y | | top bottom chunkPos |
			top := (TileSize x / 2 + x + chunkOffset x - (TileSize x / 2))@(y + chunkOffset y - (TileSize y / 2)).
			bottom := top + (0@(TileSize y * ChunkSize)).
			canvas line: top to: top + (TileSize * ChunkSize / 2) color: Color red.
			canvas line: top to: top - (TileSize * ChunkSize / 2 * (1, -1)) color: Color red.
			canvas line: bottom to: bottom - (TileSize * ChunkSize / 2) color: Color red.
			canvas line: bottom to: bottom + (TileSize * ChunkSize / 2 * (1, -1)) color: Color red.
			
			chunkPos := (AnnoHelpers pixelToMapPosition: top + (0, TileSize y / 2) - camera) // ChunkSize.
			canvas drawString: 
				chunkPos asString, 
				' x-y=', (chunkPos x - chunkPos y), 
				' x+y=', (chunkPos x + chunkPos y) 
				at: (top + bottom / 2) - (50, 0) font: nil color: Color white]].