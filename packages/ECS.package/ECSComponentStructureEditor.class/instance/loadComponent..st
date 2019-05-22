as yet unclassified
loadComponent: aClass

	(EntityComponent subclasses includes: aClass) ifFalse: [^ self error: 'class must be an EntityComponent'].
	
	aClass instVarNames do: [:each | | pragma |
		pragma := (aClass methodDict at: each asSymbol) pragmas detect: [:p | p keyword = #ecs:type:].
		self addAttribute: each type: (Smalltalk at: pragma arguments second)].
	nameMorph changeText: aClass name.
	storageTypeMorph changeText: aClass storage name.
	lastComponentName := aClass name