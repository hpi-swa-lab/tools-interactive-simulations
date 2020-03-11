ui-building-updating
buildFor: aComponent

	| canPersist |
	canPersist := id isNil or: [self universe autoPersist not or: [self universe canPersistChangeTo: id component: aComponent className asSymbol]].
	
	self
		removeAllMorphs;
		addMorphBack: (ECSRow new
			addMorphBack: (ECSLabel new
				hResizing: #spaceFill;
				contents: aComponent className asText allBold);
			addMorphBack: (ECSButton new
				icon: ECSIcon iconFilter;
				when: #clicked send: #openHighlightedMultiPipelineEditor to: self;
				balloonText: 'Open highlighted multi-pipeline editor for  ', aComponent className);
			addMorphBack: (ECSButton new
				icon: ECSIcon iconRemove;
				color: (canPersist ifTrue: [Color lightGray] ifFalse: [Color r: 0.7 g: 0 b: 0]);
				when: #clicked send: #removeMe to: self;
				balloonText: 'Remove ', aComponent className)).
	
	aComponent isNumber
		ifTrue: [
			self addMorphBack: (ECSRow new
				addMorphBack: (ECSLabel new
					hResizing: #spaceFill;
					contents: 'ID' asText allBold);
				addMorphBack: (ECSLabel new contents: aComponent asString))]
		ifFalse: [ | vars |
			vars := aComponent class fields.
			vars do: [:name | 
				self addMorphBack: (ECSRow new
					addMorphBack: (ECSLabel new
						contents: name;
						color: (canPersist ifTrue: [Color black] ifFalse: [Color red]);
						hResizing: #spaceFill);
					addMorphBack: (self editorFor: name of: aComponent))]].
	component := aComponent