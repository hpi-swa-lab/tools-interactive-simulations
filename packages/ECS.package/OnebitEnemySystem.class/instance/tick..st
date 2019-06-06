as yet unclassified
tick: aUniverse

	aUniverse query: {PlayerInput. Transform} do: [:input :playerTransform |
		aUniverse query: {OnebitEnemyMinion. Transform. OnebitMoving} do: [:minion :transform :moving | | delta |
			delta := playerTransform bounds origin - transform bounds origin.
			delta  ~= (0 , 0) ifTrue: [
				moving velocity: delta normalize round]]]