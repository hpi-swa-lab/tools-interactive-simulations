as yet unclassified
updateElements: aList with: aUniverse

	aList do: [ :ids | | element query |
		query := aUniverse queryById: ids first.
		(self type generateIds: query) do: [ :id | 
			element := (self type newWith: id) updateWith: aUniverse.
			self elements at: id ifAbsentPut: [element]]].
	self elements do: [ :element | (self submorphs includes: element) ifFalse: [scroll scroller addMorphBack: element]]
