as yet unclassified
showImpactIn: aUniverse at: position
	
	5
		timesRepeat: [
			aUniverse
				spawnNewWith: #( #'Transform' #'Rendered' #'OnebitExpiring' #'OnebitParticle' )
				do: [ :particleTransform :rendered :expiring :particle |
					expiring timeLeft: 200 atRandom.
					particle velocity: 20 atRandom - 10 / 8.0 , ((30 atRandom) negated / 10.0).
					particleTransform bounds: (position x , position y + (0 , 0 randomTo: 1 , 1) extent: 5 , 5).
					rendered
						color: (Color r: 0.491 g: 0.329 b: 0.145);
						form: nil]]