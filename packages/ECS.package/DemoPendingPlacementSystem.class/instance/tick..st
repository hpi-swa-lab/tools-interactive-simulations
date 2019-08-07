as yet unclassified
tick: aUniverse

	aUniverse query: #(Transform PendingPlacement id) do: [:transform :p :entity |
		aUniverse query: #(UniverseView) do: [:view |
			transform bounds position: (view mousePosition truncateTo: 64 asECSVector2).
			
			view leftJustUp ifTrue: [
				aUniverse remove: #PendingPlacement from: entity]]]