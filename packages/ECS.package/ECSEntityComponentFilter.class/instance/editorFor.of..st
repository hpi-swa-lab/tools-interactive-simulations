as yet unclassified
editorFor: aFieldSymbol of: aComponent

	| value |
	value := aComponent instVarNamed: aFieldSymbol.
	value isString ifTrue: [^ ECSCodeEditor new changeText: value].
	value isNumber ifTrue: [^ ECSNumberInput new value: value].
	^ ECSLabel new contents: value printString