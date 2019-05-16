as yet unclassified
buildComponentControls: aComponent

	| column |
	column := ECSColumn new
		layoutInset: (TextStyle defaultFont height @ (TextStyle defaultFont height / 4)) rounded;
		addMorphBack: (ECSLabel new contents: aComponent className asText allBold).
	
	aComponent class instVarNames do: [:name |
		column addMorphBack: (ECSRow new
			addMorphBack: (ECSLabel new contents: name; hResizing: #spaceFill);
			addMorphBack: (self editorFor: name of: aComponent))].
	
	^ column