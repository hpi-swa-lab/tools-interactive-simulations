as yet unclassified
tick: aUniverse

	aUniverse query: #(UniverseView) do: [:view |
		view leftJustUp ifTrue: [
			aUniverse query: #(Transform id) do: [:transform :id |
				(transform bounds containsPoint: view mousePosition) ifTrue: [ECSEntityComponentFilter openForId: id universe: aUniverse]]]]