component lifecyle
chooseComponentClassDo: aBlock
	
	| componentClasses |
	componentClasses := EntityComponent subclasses copy.
	(UIManager default chooseFrom: componentClasses values: componentClasses)
		ifNotNil: [:class | aBlock value: class]