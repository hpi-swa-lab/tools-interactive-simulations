as yet unclassified
updateComponent: aComponent

	component ~~ aComponent
		ifTrue: [
			self removeAllMorphs.
			
			" special case #id "
			aComponent isNumber
				ifTrue: [
					self addMorphBack: (ECSRow new
						addMorphBack: (ECSLabel new hResizing: #spaceFill; contents: 'ID' asText allBold);
						addMorphBack: (ECSLabel new contents: aComponent asString))]
				ifFalse: [ | vars |
					vars := aComponent class instVarNames.
					vars ifEmpty: [self addMorphBack: (ECSLabel new contents: aComponent className asText allBold)].
					vars do: [:name |
						self addMorphBack: (ECSRow new
							addMorphBack: (ECSLabel new
								contents: aComponent className asText allBold, '>>', name;
								hResizing: #spaceFill);
							addMorphBack: (self editorFor: name of: aComponent))]].
				
				component := aComponent]
		ifFalse: [
			aComponent class instVarNames doWithIndex: [:name :index |
				(self submorphs at: index) submorphs second externalValueUpdate: (aComponent instVarNamed: name)]]