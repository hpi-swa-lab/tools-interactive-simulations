as yet unclassified
updateElements: aList with: aUniverse

	aList do: [ :id | | element |
		id isCollection ifTrue: [id := id first].
		element := (self type newWith: id) updateWith: aUniverse.
		self elements at: id ifAbsentPut: [element]].
	
	self elements do: [ :element | 
		(self submorphs includes: element) 
			ifFalse: [scroll scroller addMorphBack: element]]
