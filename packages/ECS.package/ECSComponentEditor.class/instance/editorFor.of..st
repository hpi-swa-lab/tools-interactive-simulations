ui-building-updating
editorFor: aFieldSymbol of: aComponent

	| value class |
	class := (aComponent class methodDict at: aFieldSymbol asSymbol ifAbsent: [^ ECSUnsupportedEditor new]) pragmas detect: [:p | p keyword = #ecsType:] ifFound: [:p | p arguments first] ifNone: [nil].
	value := aComponent perform: aFieldSymbol.
	class
		ifNotNil: [
			^ (ECSUpdatingEditable new editor: (Smalltalk at: class) editorType new)
				 onChange: [:val | 
					aComponent perform: aFieldSymbol asSimpleSetter with: val.
					self triggerEvent: #changedValue withArguments: {aFieldSymbol. aComponent. val}];
				 value: value].
	^ ECSLabel new contents: (value printString truncateWithElipsisTo: 10)