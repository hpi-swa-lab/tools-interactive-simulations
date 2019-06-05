as yet unclassified
buildStreet: aConfig in: aUniverse

	| current |
	current := aConfig mapSize atRandom - (aConfig mapSize // 2).
	40 timesRepeat: [ | direction |
		direction := {0,1. 0, -1. 1,0. -1,0} atRandom.
		
		30 atRandom timesRepeat: [
			aUniverse spawnNewWith: {Transform. Rendered} do: [:transform :rendered |
				transform bounds: (current copy square: aConfig tileSize * aConfig scale).
				rendered color: Color white; form: (ECSTileMapAsset
					of: #onebit
					at: ({1,0. 2,0. 3,0. 4,0} atRandom square: aConfig tileSize)
					scale: aConfig scale)].
				current += direction]]