as yet unclassified
tick: aUniverse

	| camera |	
	camera := (aUniverse queryList: #(AnnoCamera)).
	camera ifEmpty: [^ self].
	camera := camera first first.
	
	aUniverse draw: [:canvas :universe | | tiles |
		tiles := universe queryList: #(AnnoTile Rendered).
		(tiles sorted: [:a :b |
			a first position <= b first position]) do: [:components | | origin annoTile rendered |
			annoTile := components first.
			rendered := components second.
		"aUniverse query: {AnnoTile. Rendered} do: [:annoTile :rendered | | origin |"
			origin := ECSVector2 
				x: (annoTile position x - annoTile position y) * TileSize x / 2
				y: (annoTile position x + annoTile position y) * TileSize y / 2.
			origin += camera position.
			rendered form
				ifNotNil: [rendered form drawOn: canvas at: (origin - (0, rendered form object height)) blend: Color white]
				ifNil: [canvas fillRectangle: (ECSAlignedRectangle origin: origin extent: TileSize) color: rendered color]]]