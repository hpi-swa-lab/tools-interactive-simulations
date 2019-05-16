as yet unclassified
editorFor: aFieldSymbol of: aComponent

	| value |
	value := aComponent instVarNamed: aFieldSymbol.
	
	value isString ifTrue: [^ ECSCodeEditor new
		changeText: value;
		acceptAction: [:text | aComponent instVarNamed: aFieldSymbol put: text asString];
		yourself].
	
	value isNumber ifTrue: [^ ECSNumberInput new
		value: value;
		onChange: [:number | aComponent instVarNamed: aFieldSymbol put: number]].
	
	^ ECSLabel new contents: value printString