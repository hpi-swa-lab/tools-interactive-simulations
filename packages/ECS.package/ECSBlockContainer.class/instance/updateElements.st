as yet unclassified
updateElements

	| elementIds |	

	elementIds := self type elementsIn: self universe.
	elementIds do: [:id |
		self elements at: id ifAbsent: [| element |
			element := (self type newWith: id in: self universe).
			element when: #delete send: #deleteElement: to: self.
			self elements at: id put: element.
			scroll scroller addMorphBack: element]]
