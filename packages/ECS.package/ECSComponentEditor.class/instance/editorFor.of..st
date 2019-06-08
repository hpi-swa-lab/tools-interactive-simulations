as yet unclassified
editorFor: aFieldSymbol of: aComponent

	| value class |
	class := (aComponent class methodDict at: aFieldSymbol asSymbol ifAbsent: [^ ECSUnsupportedEditor new]) pragmas
		detect: [:p | p keyword = #ecsType:]
		ifFound: [:p | p arguments first] ifNone: [].
	
	value := aComponent instVarNamed: aFieldSymbol.
	
	class ifNotNil: [
		^ (Smalltalk at: class) editorType new
			onChange: [:val |
				aComponent instVarNamed: aFieldSymbol put: val.
				self triggerEvent: #changedValue withArguments: {aFieldSymbol. aComponent. val}];
			value: value].
	
	^ ECSLabel new contents: value printString