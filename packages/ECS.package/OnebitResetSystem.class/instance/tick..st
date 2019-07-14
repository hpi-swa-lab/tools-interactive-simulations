as yet unclassified
tick: aUniverse
	
	aUniverse query: #( #'OnebitGameState' ) do: [ :state |state selectedTower: 0].
	aUniverse query: #( #'Rendered' #'id' ) do: [ :rendered :entity |
		entity ~= 1 ifTrue: [aUniverse remove: entity]].
	aUniverse query: #( #'OnebitButton' #'id' ) do: [ :rendered :entity |
		aUniverse remove: entity].
	aUniverse query: #( #'OnebitDamage' #'id' ) do: [ :damage :entity |aUniverse remove: entity]