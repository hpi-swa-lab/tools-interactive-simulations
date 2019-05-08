as yet unclassified
spawnParticlesIn: aWorld at: aPoint

	5 timesRepeat: [ | entity |
		entity := aWorld spawnNewWith: {
			Transform new bounds: (aPoint extent: 10 @ 10).
			Rendered new color: Color red.
			Physics new velocity: ((200 atRandom - 100) @ (200 atRandom - 100))}.
		aWorld in: 200 milliSeconds send: #remove: to: aWorld with: entity]