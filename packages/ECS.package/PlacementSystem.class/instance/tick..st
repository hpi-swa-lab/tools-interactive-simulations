as yet unclassified
tick: aUniverse

	aUniverse query: #(Transform PendingPlacement id) do: [:transform :p :entity |
		aUniverse query: #(UniverseView) do: [:view |
			transform bounds center: view mousePosition.
			
			view leftJustUp ifTrue: [
				aUniverse remove: #PendingPlacement from: entity].
			
			"aUniverse draw: [:canvas :universe |
				0 to: view size x by: self gridSize do: [:x | canvas line: x @ 0 to: x @ view size y width: 1 color: Color red].
				0 to: view size y by: self gridSize do: [:y | canvas line: 0 @ y to: view size x @ y width: 1 color: Color red]]"]]