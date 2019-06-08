as yet unclassified
loadComponent: aClass

	(EntityComponent subclasses includes: aClass) ifFalse: [^ self error: 'class must be an EntityComponent'].
	
	aClass fields do: [:each | | pragma |
		pragma := (aClass methodDict at: each asSymbol) pragmas detect: [:p | p keyword = #ecsType:] ifNone: [nil].
		self addAttribute: each type: (pragma ifNotNil: [Smalltalk at: pragma arguments first] ifNil: [Object])].
	nameMorph content: aClass name.
	storageTypeMorph value: aClass storage.
	lastComponentName := aClass name