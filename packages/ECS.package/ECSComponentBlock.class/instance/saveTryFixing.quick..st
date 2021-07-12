as yet unclassified
saveTryFixing: aFixBoolean quick: aQuickBoolean

	| class |

	class := [:b |
		b
			class: self title contents
			super: EntityComponent
			instVars: (self fields collect: #fieldName)
			current: self id] sbStSave.
	
	self fields do: [:field |
		field fieldValue: (Smalltalk at: field fieldType) editorType new.
		[:b | b pragma: #ecsType: with: (b symbol: field fieldType) in: (b getter: field fieldName in: class)] sbStSave.
		[:b | b pragma: #ecsType: with: (b symbol: field fieldType) in: (b setter: field fieldName in: class)] sbStSave].
	
	[:b |
		b
			method: #fields
			in: class classSide
			do: (b return: (b array: (self fields collect: [:f | b symbol: f fieldName])))] sbStSave.

	[:b |
		b
			method: #initialize
			in: class
			do: {b to: #initialize send: (b name: 'super')}, (self fields collect: [:f | b assign: f fieldName to: ((Smalltalk at: f fieldType) ecsDefault) storeString parseAsSandblock])] sbStSave.
		
	(self universe componentClasses includes: self id) ifFalse: [self universe componentClasses add: self id].
	
	^ true