as yet unclassified
tick: aUniverse

	aUniverse query: {DeltaTime} do: [:deltaTime |
		aUniverse query: {OnebitExpiring. #id} do: [:expiring :entity |
			expiring timeLeft: expiring timeLeft - deltaTime milliseconds.
			expiring timeLeft <= 0 ifTrue: [aUniverse remove: entity]]]