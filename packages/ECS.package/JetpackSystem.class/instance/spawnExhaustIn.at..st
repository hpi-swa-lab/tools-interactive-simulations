as yet unclassified
spawnExhaustIn: aUniverse at: aPoint

	20 timesRepeat: [| entity |
		entity := aUniverse spawnNewWith: {Rendered. Physics. Transform} do: [:rendered :physics :transform |
			rendered color: (ECSColor red alpha: 0.3); form: (ECSAsset of: #particle at: 'circle_05.png' sized: 5 asECSVector2).
			physics velocity: 100 atRandom , 100 atRandom; friction: 0.9.
			transform bounds: (ECSAlignedRectangle center: aPoint extent: 5 asECSVector2)].
		aUniverse in: 300 milliSeconds send: #remove: to: aUniverse with: entity]