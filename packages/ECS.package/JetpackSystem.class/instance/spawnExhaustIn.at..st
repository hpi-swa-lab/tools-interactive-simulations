as yet unclassified
spawnExhaustIn: aUniverse at: aPoint

	20 timesRepeat: [| entity |
		entity := aUniverse spawnNewWith: {
			Rendered new color: (Color red alpha: 0.3)"; form: (ECSAssetBrowser formAt: (FileDirectory default / 'assets' / 'particle' / 'circle_05.png') size: 32)".
			Physics new velocity: 100 atRandom @ 100 atRandom.
			Transform new bounds: (Rectangle center: aPoint extent: 5 asPoint).
		}.
		aUniverse in: 300 milliSeconds send: #remove: to: aUniverse with: entity]