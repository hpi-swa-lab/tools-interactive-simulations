as yet unclassified
spawnExhaustIn: aUniverse at: aPoint

	20 timesRepeat: [| entity |
		entity := aUniverse spawnNewWith: {
			Rendered new color: ("ECS"Color red alpha: 0.3); form: (ECSAsset of: #particle at: 'circle_05.png' sized: 5 asECSVector2).
			Physics new velocity: 100 atRandom , 100 atRandom.
			Transform new bounds: (Rectangle center: aPoint extent: 5 asECSVector2).
		}.
		aUniverse in: 300 milliSeconds send: #remove: to: aUniverse with: entity]