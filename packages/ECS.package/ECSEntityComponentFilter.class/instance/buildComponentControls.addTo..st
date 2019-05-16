as yet unclassified
buildComponentControls: aComponent addTo: aMorph

	aComponent class instVarNames do: [:name |
		aMorph addMorphBack: (ECSRow new
			addMorphBack: (ECSLabel new contents: aComponent className asText allBold, '>>', name asText; hResizing: #spaceFill);
			addMorphBack: (self editorFor: name of: aComponent))]