as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitGameState' #'OnebitConfig' )
		do: [ :state :config |
			state selectedTower: 0.
			state score: 500.
			state turnCount: 0.
			state coins: config startingCoins].
	aUniverse query: #( #'Rendered' #'id' ) do: [ :rendered :entity |
		entity ~= 1 ifTrue: [aUniverse remove: entity]].
	aUniverse query: #( #'OnebitButton' #'id' ) do: [ :rendered :entity |
		aUniverse remove: entity].
	aUniverse query: #( #'PlayerInput' #'id' ) do: [ :rendered :entity |
		aUniverse remove: entity].
	aUniverse query: #( #'OnebitDamage' #'id' ) do: [ :damage :entity |aUniverse remove: entity]