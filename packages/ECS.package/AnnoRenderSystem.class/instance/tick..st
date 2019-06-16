as yet unclassified
tick: aUniverse

	aUniverse draw: [:canvas :universe |
		aUniverse query: #(AnnoCamera) do: [:camera | | tiles |
			tiles := universe queryList: #(AnnoTile Rendered).
			tiles sort: [:a :b | a first position x <=> b first position x caseOf: {
				[-1] -> [true].
				[0] -> [a first position y <=> b first position y caseOf: {
					[-1] -> [true].
					[0] -> [(a first isPreview or: [a first isBuiltByPlayer]) not].
					[1] -> [false]
				}].
				[1] -> [false]}].
			tiles do: [:components | | annoTile rendered pos form |
				annoTile := components first.
				rendered := components second.
			"aUniverse query: #(AnnoTile Rendered) do: [:annoTile :rendered | | pos |"
				pos := AnnoHelpers mapToPixelPosition: annoTile position offset: camera position.
				pos -= (0, rendered form object height).
				form := rendered form object.
				canvas translucentImage: form at: pos
				"rendered form drawOn: canvas at: pos blend: Color white"]]]