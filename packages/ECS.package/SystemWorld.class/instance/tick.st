as yet unclassified
tick

	"systems do: [:system |
		self collectSystemResourcesFor: system do: [:resources |
			system
				tick: (LazyComponentList new
					signature: system components;
					entities: self entities)
				resources: resources]]"
	| previousSize |
	systems do: [:system | system tick: self].
	
	previousSize := entities size.
	entities removeAllSuchThat: [:e | e alive not].
	self alwaysUpdate
		ifTrue: [self changed: #getList]
		ifFalse: [previousSize > entities size ifTrue: [self changed: #getList]]