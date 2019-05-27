ui
chooseComponentClassDo: aBlock
	
	UIManager default chooseClassOrTrait ifNotNil: [:c | aBlock value: c]