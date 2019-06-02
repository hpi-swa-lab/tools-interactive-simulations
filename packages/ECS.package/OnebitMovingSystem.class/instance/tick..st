as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitMoving. Transform} do: [:moving :transform |
		transform bounds += moving velocity]