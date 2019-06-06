component lifecyle
chooseComponentClassDo: aBlock
	
	| componentClasses |
	componentClasses := EntityComponent subclasses copy.
	(UIManager default chooseMultipleFrom: componentClasses values: componentClasses)
		ifNotNil: [:collection | collection do: [:class | aBlock value: class]]