as yet unclassified
tick: aWorld

	aWorld query: {Collision. #id} do: [:components |
		aWorld remove: components second]