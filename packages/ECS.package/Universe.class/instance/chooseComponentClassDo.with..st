component lifecyle
chooseComponentClassDo: aBlock with: componentClasses
	
	(UIManager default chooseFrom: (componentClasses collect: #asString) values: componentClasses)
		ifNotNil: [:class | aBlock value: class]