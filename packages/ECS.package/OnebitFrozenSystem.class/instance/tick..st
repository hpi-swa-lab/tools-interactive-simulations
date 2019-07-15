as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitFrozen' #'OnebitMoving' #'id' )
		do: [ :frozen :moving :entity |
			moving velocity: 0 , 0.
			frozen duration: frozen duration - 1.
			frozen duration = 0 ifTrue: [aUniverse remove: #'OnebitFrozen' from: entity]].
	aUniverse
		query: #( #'OnebitWet' #'OnebitCold' #'id' )
		do: [ :wet :cold :entity |
			aUniverse
				attach: #'OnebitFrozen' to: entity;
				remove: #'OnebitWet' from: entity;
				remove: #'OnebitCold' from: entity.
			(aUniverse getSingle: #'OnebitFrozen' of: entity) duration: 3]