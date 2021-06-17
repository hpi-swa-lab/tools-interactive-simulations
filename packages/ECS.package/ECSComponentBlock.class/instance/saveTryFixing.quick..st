as yet unclassified
saveTryFixing: aFixBoolean quick: aQuickBoolean

	| class |
	self flag: 'need to be fixed -> self componentName is the whole row with buttons'.
	class := [:b |
		b
			class: self componentName contents
			super: EntityComponent
			instVars: (self fields collect: #fieldName)
			current: currentClass] sbStSave.
	currentClass := class shownClass.
	
	self fields do: [:field |
		[:b | b pragma: #ecsType: with: (b symbol: field fieldType) in: (b getter: field fieldName in: class)] sbStSave.
		[:b | b pragma: #ecsType: with: (b symbol: field fieldType) in: (b setter: field fieldName in: class)] sbStSave].
	
	[:b |
		b
			method: #fields
			in: class classSide
			do: (b return: (b array self fields collect: [:f | b symbol: f fieldName]))] sbStSave.
	
	^ true