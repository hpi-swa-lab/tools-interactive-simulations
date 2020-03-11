as yet unclassified
tick: aUniverse

	aUniverse query: #(Transform PendingPlacement id) do: [:transform :p :entity |
		aUniverse query: #(UniverseView) do: [:view |
			aUniverse set: #bounds in: #Transform of: entity to: (transform bounds centered: view mousePosition) persist: true.
			"transform bounds center: view mousePosition."
			
			view leftJustUp ifTrue: [
				aUniverse remove: #PendingPlacement from: entity persisted: true].
			
			"aUniverse draw: [:canvas :universe |
				0 to: view size x by: self gridSize do: [:x | canvas line: x @ 0 to: x @ view size y width: 1 color: Color red].
				0 to: view size y by: self gridSize do: [:y | canvas line: 0 @ y to: view size x @ y width: 1 color: Color red]]"]]