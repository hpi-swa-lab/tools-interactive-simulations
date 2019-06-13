as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		aUniverse query: #(AnnoCamera) do: [:camera | | tiles |
			tiles := universe queryList: #(AnnoTile Rendered).
			tiles sort: [:a :b | a first position x <=> b first position x caseOf: {
				[-1] -> [true].
				[0] -> [a first position y < b first position y].
				[1] -> [false]}].
			tiles do: [:components | | annoTile rendered x y |
				annoTile := components first.
				rendered := components second.
			"aUniverse query: #(AnnoTile Rendered) do: [:annoTile :rendered | | origin |"
				x := (annoTile position x - annoTile position y) * TileSize x / 2 + camera position x.
				y := (annoTile position x + annoTile position y) * TileSize y / 2 + camera position y - rendered form object height.
				rendered form
					ifNotNil: [rendered form drawOn: canvas at: x,y blend: Color white]
					ifNil: [canvas fillRectangle: (ECSAlignedRectangle origin: x,y extent: TileSize) color: rendered color]]]]