as yet unclassified
spawnExhaustIn: aWorld at: aPoint

	20 timesRepeat: [
		aWorld spawnNewWith: {
			Rendered new color: (Color red alpha: 0.3); form: (ECSAssetBrowser formAt: (FileDirectory default / 'assets' / 'particle' / 'circle_05.png') size: 32).
			Physics new velocity: 100 atRandom @ 100 atRandom.
			Transform new bounds: (Rectangle center: aPoint extent: 5 asPoint).
		}]