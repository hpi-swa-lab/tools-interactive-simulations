as yet unclassified
component: aComponent

	| value |

	self title: aComponent class asString.
	currentClass := aComponent.
	aComponent class fields do: [:field |
		value := aComponent perform: field.
		self addMorphBack: (ECSComponentBlockField new
			fieldName: field;
			fieldType: (aComponent class >> field pragmaAt: #ecsType:) arguments first)]