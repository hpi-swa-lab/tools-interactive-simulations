as yet unclassified
updateList

	| index |
	index := 1.
	self evaluateQuery
		do: [:components | | column |
			column := (self editorAt: index orAdd: [ECSEntityEditor new]) updateEntity: nil components: components.
			index := index + 1].
	
	list submorphs from: index to: list submorphCount do: [:m | list removeMorph: m]