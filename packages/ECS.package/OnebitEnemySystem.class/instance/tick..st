as yet unclassified
tick: aUniverse

	aUniverse query: #(PlayerInput OnebitPosition) do: [:input :playerPosition |
		aUniverse query: #(OnebitEnemyMinion OnebitPosition OnebitMoving) do: [:minion :position :moving | | dx dy |
			dx := playerPosition x - position x.
			dy := playerPosition y - position y.
			(dx = 0 or: [dy = 0]) ifFalse: [
				moving velocity: (dx , dy) normalize round]]]