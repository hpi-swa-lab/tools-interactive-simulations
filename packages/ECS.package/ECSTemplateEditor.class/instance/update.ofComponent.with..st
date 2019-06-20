as yet unclassified
update: aSymbol ofComponent: aComponent with: aValue

	self allMyInstancesDo: [:entity |
		(self universe getSingle: aComponent className asSymbol of: entity) ifNotNil: [:c |
			c instVarNamed: aSymbol put: aValue]]