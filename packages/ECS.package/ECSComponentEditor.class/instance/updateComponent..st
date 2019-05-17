as yet unclassified
updateComponent: aComponent

	component ~~ aComponent
		ifTrue: [
			self removeAllMorphs.
			aComponent class instVarNames do: [:name |
				self addMorphBack: (ECSRow new
					addMorphBack: (ECSLabel new contents: aComponent className asText allBold, '>>', name asText; hResizing: #spaceFill);
					addMorphBack: (self editorFor: name of: aComponent))].
				component := aComponent]
		ifFalse: [
			aComponent class instVarNames doWithIndex: [:name :index |
				(self submorphs at: index) submorphs second externalValueUpdate: (aComponent instVarNamed: name)]]