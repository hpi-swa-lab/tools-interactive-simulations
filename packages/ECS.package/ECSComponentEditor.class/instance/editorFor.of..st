as yet unclassified
editorFor: aFieldSymbol of: aComponent

	| value class |
	class := (aComponent class methodDict at: aFieldSymbol asSymbol ifAbsent: [^ Morph new]) pragmas detect: [:p | p keyword = #ecsType:] ifFound: [:p | p arguments first] ifNone: [].
	value := aComponent instVarNamed: aFieldSymbol.
	class ifNotNil: [
		^ (Smalltalk at: class) editorType new
			onChange: [:val | aComponent instVarNamed: aFieldSymbol put: val];
			value: value].
	
	^ ECSLabel new contents: value printString
	
	"value isString ifTrue: [^ ECSCodeEditor new
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
	"