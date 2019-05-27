as yet unclassified
addComponent

	self universe chooseComponentClassDo: [:componentClass |
		template components add: componentClass new].
	self updateTemplate: template