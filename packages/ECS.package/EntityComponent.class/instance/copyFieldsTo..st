as yet unclassified
copyFieldsTo: aComponent

	self class instVarNames do: [:name |
		aComponent instVarNamed: name put: (self instVarNamed: name)]