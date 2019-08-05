as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: #( #'OnebitBurning' #'OnebitPosition' )
		do: [ :burning :position |
			(2 timesRepeat: [ (self spawnParticlesIn: aUniverse at: position color: (Color red) velocityMultiplier: (1 , 1)) ]) ]).
	(aUniverse
		query: #( #'OnebitWet' #'OnebitPosition' )
		do: [ :wet :position | (self spawnParticlesIn: aUniverse at: position color: (Color blue) velocityMultiplier: (0 , -0.5)) ]).
	(aUniverse
		query: #( #'DeltaTime' )
		do: [ :deltaTime |
			(aUniverse query: #( #'Transform' #'OnebitParticle' ) do: [ :transform :particle |
				((transform bounds) += ((particle velocity) * (deltaTime dt))) ]) ])