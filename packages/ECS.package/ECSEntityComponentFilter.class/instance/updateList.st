as yet unclassified
updateList

	| entities |
	entities := self universe queryList: (self evaluateQuery copyWith: #id).
	
	" TODO: do a full diff of the widget tree, otherwise we can't find updates to the components or re-use of the same entity id "
	entities do: [:components | | column id |
		id := components last.
		(currentEntities includes: id) ifFalse: [
			currentEntities add: id.
			
			column := ECSColumn new.
			components allButLastDo: [:component | column addMorphBack: (self buildComponentControls: component)].
			
			list addMorphBack: (ECSCollapsible new
				header: (ECSLabel new contents: (components detect: [:c | c class = Label] ifFound: #label ifNone: ['Entity ', id asString]));
				body: column)]]