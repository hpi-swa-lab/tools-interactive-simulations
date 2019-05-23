as yet unclassified
spawnParticlesIn: aUniverse at: aPoint

	5 timesRepeat: [ | entity |
		entity := aUniverse spawnNewWith: {
			Transform new bounds: (aPoint extent: 10,10).
			Rendered new color: "ECS"Color red.
			Physics new velocity: ((200 atRandom - 100),(200 atRandom - 100))}.
		aUniverse in: 200 milliSeconds send: #remove: to: aUniverse with: entity]