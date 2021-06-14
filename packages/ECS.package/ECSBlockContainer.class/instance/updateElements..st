as yet unclassified
updateElements: aList

	self flag: 'should be refactored'.
	aList do: [:id | | element |
		id isCollection ifTrue: [id := id first].
		(self type == ECSEntityBlock)
			ifTrue: [element := (self type newWith: id) updateWith: self universe] 
			ifFalse: [element := (self type newWith: id) update].
		element when: #delete send: #deleteElement: to: self.
		self elements at: id ifAbsentPut: [element]].
	
	self elements do: [:element | 
		(self submorphs includes: element) 
			ifFalse: [scroll scroller addMorphBack: element]]
