as yet unclassified
tick: aUniverse

	| screenSize tmp camera offset chunkOffset chunkPos |
	tmp := (aUniverse queryList: {AnnoCamera. ScreenSize}).
	tmp ifEmpty: [^ self].
	camera := tmp first first position.
	screenSize := tmp first second size.
	
	offset := camera \\ TileSize.
	chunkOffset := camera \\ (TileSize * ChunkSize).

	aUniverse draw: [:canvas :universe |
		"Rulers"
		Distance y + offset y to: screenSize y by: Distance y do: [:y | | color |
			color := self colorForRulerAt: y - camera y.
			canvas fillRectangle: (ECSAlignedRectangle origin: 0,y extent: Length,1) color: color.
			canvas drawString: (y - camera y) asString at: (0,y) font: nil color: color].
		Distance x + offset x to: screenSize x by: Distance x do: [:x | | color |
			color := self colorForRulerAt: x - camera x.
			canvas fillRectangle: (ECSAlignedRectangle origin: x,0 extent: 1,Length) color: color.
			canvas drawString: (x - camera x) asString at: (x, 0) font: nil color: color].
		
		"Origin"
		canvas fillRectangle: (ECSAlignedRectangle origin: (0,0) + camera extent: 3,3) color: Color bubblegum.
		canvas drawString: '0, 0' at: (0,0) + camera font: nil color: Color bubblegum.
		
		-1 * TileSize x * ChunkSize to: screenSize x by: TileSize x * ChunkSize do: [:x | 
			-1 * TileSize y * ChunkSize to: screenSize y by: TileSize y * ChunkSize do: [:y | | top bottom |
				top := (TileSize x / 2 + x + chunkOffset x)@(y + chunkOffset y).
				bottom := top + (0@(TileSize y * ChunkSize)).
				canvas line: top to: top + (TileSize * ChunkSize / 2) color: Color red.
				canvas line: top to: top - (TileSize * ChunkSize / 2 * (1, -1)) color: Color red.
				canvas line: bottom to: bottom - (TileSize * ChunkSize / 2) color: Color red.
				canvas line: bottom to: bottom + (TileSize * ChunkSize / 2 * (1, -1)) color: Color red.
				
				chunkPos := (self pixelToMapPosition: top + (0, TileSize y / 2) - camera) // ChunkSize.
				canvas drawString: 
					chunkPos asString, 
					' x-y=', (chunkPos x - chunkPos y), 
					' x+y=', (chunkPos x + chunkPos y) 
					at: (top + bottom / 2) - (50, 0) font: nil color: Color red]]]