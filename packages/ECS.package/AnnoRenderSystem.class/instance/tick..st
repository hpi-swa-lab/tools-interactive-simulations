as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		aUniverse query: #(AnnoCamera) do: [:camera | | tiles |
			tiles := universe queryList: #(AnnoTile Rendered).
			(tiles sorted: [:a :b |
				a first position <= b first position]) do: [:components | | origin annoTile rendered |
				annoTile := components first.
				rendered := components second.
			"aUniverse query: #(AnnoTile Rendered) do: [:annoTile :rendered | | origin |"
				origin := ECSVector2 
					x: (annoTile position x - annoTile position y) * TileSize x / 2
					y: (annoTile position x + annoTile position y) * TileSize y / 2.
				origin += camera position.
				origin -= (0, rendered form object height).
				rendered form
					ifNotNil: [rendered form drawOn: canvas at: origin blend: Color white]
					ifNil: [canvas fillRectangle: (ECSAlignedRectangle origin: origin extent: TileSize) color: rendered color]]]]