as yet unclassified
loadComponent: aClass

	(EntityComponent subclasses includes: aClass) ifFalse: [^ self error: 'class must be an EntityComponent'].
	
	aClass instVarNames do: [:each | | pragma |
		pragma := (aClass methodDict at: each asSymbol) pragmas detect: [:p | p keyword = #ecs:type:] ifNone: [nil].
		self addAttribute: each type: (pragma ifNotNil: [Smalltalk at: pragma arguments second] ifNil: [Object])].
	nameMorph changeText: aClass name.
	storageTypeMorph value: aClass storage.
	lastComponentName := aClass name