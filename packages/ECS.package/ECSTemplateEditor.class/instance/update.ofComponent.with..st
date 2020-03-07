ui-building-updating
update: aSymbol ofComponent: aComponent with: aValue

	| field |
	field := aSymbol asSimpleSetter.
	self allMyInstancesDo: [:entity |
		(self universe getSingle: aComponent className asSymbol of: entity) ifNotNil: [:c |
			c perform: field with: aValue]]