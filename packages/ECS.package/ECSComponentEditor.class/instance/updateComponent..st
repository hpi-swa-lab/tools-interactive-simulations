as yet unclassified
updateComponent: aComponent

	component ~~ aComponent
		ifTrue: [
			self removeAllMorphs.
			self addMorph: (ECSButton new
				icon: ECSIcon iconRemove;
				when: #clicked send: #removeMe to: self;
				hResizing: #spaceFill;
				balloonText: 'Remove component from template').
			
			
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
				(self submorphs at: index+1) submorphs second externalValueUpdate: (aComponent instVarNamed: name)]]