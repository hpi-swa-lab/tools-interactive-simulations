as yet unclassified
component: aComponentClass

	self componentName contents: aComponentClass name.
	currentClass := aComponentClass.
	aComponentClass fields do: [:field |
		self addMorphBack: (ECSComponentBlockField new
			fieldName: field;
			fieldType: (aComponentClass >> (field pragmaAt: #ecsType:)) arguments first)]