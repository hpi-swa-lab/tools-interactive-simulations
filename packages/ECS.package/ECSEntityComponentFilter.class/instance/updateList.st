as yet unclassified
updateList

	| index |
	index := 1.
	self universe
		query: (self evaluateQuery copyWith: #id)
		do: [:components | | id column |
			id := components last.
			column := (self editorAt: index orAdd: [ECSEntityEditor new]) updateEntity: id components: components allButLast.
			index := index + 1]
		spread: false.
	
	list submorphs from: index to: list submorphCount do: [:m | list removeMorph: m]