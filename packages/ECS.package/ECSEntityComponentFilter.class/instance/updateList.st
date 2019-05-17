as yet unclassified
updateList

	| index |
	index := 1.
	self universe query: (self evaluateQuery copyWith: #id) do: [:components | | id column |
		id := components last.
		
		column := list submorphs at: index ifAbsent: [ECSColumn new].
		
		components allButLastDo: [:component | self buildComponentControls: component addTo: column].
		
		list addMorphBack: (ECSCollapsible new
			header: (ECSLabel new contents: (components detect: [:c | c class = Label] ifFound: #label ifNone: ['Entity ', id asString]));
			body: column).
		index := index + 1] spread: false.