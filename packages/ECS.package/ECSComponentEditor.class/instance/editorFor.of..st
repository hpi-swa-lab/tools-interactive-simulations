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
	
	value isColor ifTrue: [^ ECSColorButton new
		value: value;
		onChange: [:color | aComponent instVarNamed: aFieldSymbol put: color]].
	
	(value isKindOf: ECSAsset) ifTrue: [^ ECSAssetPreviewPicker new
		value: value;
		onChange: [:asset | aComponent instVarNamed: aFieldSymbol put: asset]].
	
	value isPoint ifTrue: [^ ECSPointInput new
		value: value;
		onChange: [:point | aComponent instVarNamed: aFieldSymbol put: point]].
	
	value isRectangle ifTrue: [^ ECSRectangleInput new
		value: value;
		onChange: [:rectangle | aComponent instVarNamed: aFieldSymbol put: rectangle]].
	
	^ ECSLabel new contents: value printString