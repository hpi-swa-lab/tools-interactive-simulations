as yet unclassified
tick: aUniverse

	aUniverse query: #(PendingPlacement OnebitPosition id) do: [:placing :position :entity |
		aUniverse query: #(UniverseView) do: [:view |
			position vector: view mousePosition // 24.
			view leftJustDown ifTrue: [aUniverse remove: #PendingPlacement from: entity]]]