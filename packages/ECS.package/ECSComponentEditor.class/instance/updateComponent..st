as yet unclassified
updateComponent: aComponent

	component ~~ aComponent
		ifTrue: [
			self removeAllMorphs.
			self addMorphBack: (ECSRow new
				addMorphBack: (ECSLabel new hResizing: #spaceFill; contents: aComponent className asText allBold);
				addMorphBack: (ECSButton new
					icon: ECSIcon iconRemove;
					when: #clicked send: #removeMe to: self;
					balloonText: 'Remove ', aComponent className)).
			
			" special case #id "
			aComponent isNumber
				ifTrue: [
					self addMorphBack: (ECSRow new
						addMorphBack: (ECSLabel new hResizing: #spaceFill; contents: 'ID' asText allBold);
						addMorphBack: (ECSLabel new contents: aComponent asString))]
				ifFalse: [ | vars |
					vars := aComponent class fields.
					vars do: [:name |
						self addMorphBack: (ECSRow new
							addMorphBack: (ECSLabel new
								contents: name;
								hResizing: #spaceFill);
							addMorphBack: (self editorFor: name of: aComponent))]].
				
				component := aComponent]
		ifFalse: [
			aComponent isNumber ifFalse: [
				aComponent class fields withIndexDo: [:name :index |
					(self submorphs at: index + 1) submorphs second externalValueUpdate: (aComponent perform: name)]]]