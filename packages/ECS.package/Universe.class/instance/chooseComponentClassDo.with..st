component lifecyle
chooseComponentClassDo: aBlock with: componentClasses
	
	(UIManager default chooseFrom: componentClasses values: componentClasses)
		ifNotNil: [:class | aBlock value: class]