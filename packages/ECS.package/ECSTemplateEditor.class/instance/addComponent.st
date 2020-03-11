button-functionality
addComponent

	self universe chooseComponentClassDo: [:componentClass |
		template components add: componentClass new.
		self updateTemplate: template.
		
		self allMyInstancesDo: [:entity | self universe autoPersistAttach: componentClass name asSymbol to: entity]]