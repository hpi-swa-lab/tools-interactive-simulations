as yet unclassified
tick: aUniverse

	aUniverse query: #(Transform PendingPlacement id) do: [:transform :p :entity |
		aUniverse query: #(UniverseView) do: [:view |
				0 to: view size x by: 64 do: [:x | aUniverse canvas line: x @ 0 to: x @ view size y width: 1 color: Color red].
				0 to: view size y by: 64 do: [:y | aUniverse canvas line: 0 @ y to: view size x @ y width: 1 color: Color red]]]