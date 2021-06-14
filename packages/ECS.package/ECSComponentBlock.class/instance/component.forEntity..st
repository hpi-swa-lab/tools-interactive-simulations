as yet unclassified
component: aComponent forEntity: aBoolean

	| value |
	self title: aComponent class asString.
	currentClass := aComponent.
	aComponent class fields do: [:field |
		value := aComponent perform: field.
		self addMorphBack: (
			aBoolean 
				ifTrue: [ECSComponentBlockField new
					fieldName: field;
					fieldValue: '0'] 
				ifFalse: [ECSComponentBlockField new
					fieldName: field;
					fieldType: (aComponent class >> field pragmaAt: #ecsType:) arguments first])]