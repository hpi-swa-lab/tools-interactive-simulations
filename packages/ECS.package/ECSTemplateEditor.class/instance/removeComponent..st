button-functionality
removeComponent: aComponentEditor

	| component |
	component := aComponentEditor component.
	list removeMorph: aComponentEditor.
	template components remove: component.
	
	self allMyInstancesDo: [:entity | self universe autoPersistRemove: component className asSymbol from: entity]