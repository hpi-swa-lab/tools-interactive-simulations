as yet unclassified
component: aComponent

	self title: aComponent class asString.
	self id: aComponent.
	currentClass := aComponent.
	aComponent class fields do: [:field |
		self addMorphBack: (ECSComponentBlockField newWith: field of: aComponent)]