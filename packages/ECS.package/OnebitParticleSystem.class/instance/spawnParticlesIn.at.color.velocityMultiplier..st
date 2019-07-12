as yet unclassified
spawnParticlesIn: aUniverse at: position color: aColor velocityMultiplier: aPoint
	
	(aUniverse
		spawnNewWith: #( #'Transform' #'Rendered' #'OnebitExpiring' #'OnebitParticle' )
		do: [ :particleTransform :rendered :expiring :particle |
			(expiring timeLeft: (500 atRandom)).
			(particle velocity: (((((20 atRandom) - 10) / 8.0) , (((30 atRandom) negated) / 10.0)) * aPoint)).
			(particleTransform bounds: ((((position x) , (position y)) + ((0 , 0) randomTo: (1 , 1))) extent: (5 , 5))).
			(rendered
				color: aColor;
				form: nil) ])