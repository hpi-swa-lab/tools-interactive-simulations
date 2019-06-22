as yet unclassified
tick: aUniverse

	aUniverse query: #(Transform PendingPlacement id) do: [:transform :p :entity |
		aUniverse query: #(UniverseView. Mouse) do: [:screenSize :mouse |
			transform bounds center: mouse position.
			
			mouse leftJustUp ifTrue: [
				aUniverse remove: PendingPlacement from: entity].
			
			aUniverse draw: [:canvas :universe |
				0 to: screenSize size x by: self gridSize do: [:x | canvas line: x @ 0 to: x @ screenSize size y width: 1 color: Color red].
				0 to: screenSize size y by: self gridSize do: [:y | canvas line: 0 @ y to: screenSize size x @ y width: 1 color: Color red]]]]