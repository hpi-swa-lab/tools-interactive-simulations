as yet unclassified
tick: aUniverse

	| TileSize camera |
	TileSize := ECSVector2 x: 64 y: 32.
	
	camera := (aUniverse queryList: {AnnoCamera}).
	camera ifEmpty: [^ self].
	camera := camera first first.
	
	aUniverse draw: [:canvas :universe | | tiles |
		tiles := universe queryList: {AnnoTile. Rendered}.
		(tiles sorted: [:a :b |
			a first position <= b first position]) do: [:components | | origin annoTile rendered |
			annoTile := components first.
			rendered := components second.
			origin := ECSVector2 
				x: (annoTile position x - annoTile position y) * TileSize x / 2
				y: (annoTile position x + annoTile position y) * TileSize y / 2.
			origin := origin + camera position.
			rendered form
				ifNotNil: [rendered form drawOn: canvas at: (origin - (0, rendered form object height))]
				ifNil: [canvas fillRectangle: (ECSAlignedRectangle origin: origin extent: TileSize) color: rendered color]]]