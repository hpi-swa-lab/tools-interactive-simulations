as yet unclassified
spawnExplosionIn: aUniverse at: aPoint

	50 timesRepeat: [ | entity |
		entity := aUniverse spawnNewWith: {
			Transform new bounds: (aPoint extent: 20 @ 20).
			Rendered new color: (Color red interpolatedAlphaMix: ThreadSafeRandom default next with: Color yellow).
			Physics new velocity: ((600 atRandom - 300) @ (600 atRandom - 300))}.
		aUniverse in: 300 milliSeconds send: #remove: to: aUniverse with: entity]