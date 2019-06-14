as yet unclassified
tick: aUniverse

	aUniverse query: {#OnebitDamage. #id} do: [:damage :damageEntity |
		(aUniverse getSingle: #OnebitPosition of: damage target) ifNotNil: [:position |
			10 timesRepeat: [aUniverse
					spawnNewWith: #(Transform Rendered OnebitExpiring OnebitParticle)
					do: [:particleTransform :rendered :expiring :particle |
						expiring timeLeft: 200 atRandom.
						particle velocity: 20 atRandom - 10 / 8.0, (30 atRandom negated / 10.0).
						particleTransform bounds: (position x , position y + (0 , 0 randomTo: 1 , 1) extent: 5 , 5).
						rendered color: Color lightBlue; form: nil]]].
		
		(aUniverse getSingle: #Health of: damage target) ifNotNil: [:health |
			health current: health current - damage damage.
			health current <= 0 ifTrue: [aUniverse remove: damage target]].
		aUniverse remove: damageEntity]