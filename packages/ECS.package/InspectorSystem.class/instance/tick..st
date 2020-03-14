as yet unclassified
tick: aUniverse

	aUniverse query: #(UniverseView) do: [:view |
		view leftJustUp ifTrue: [
			aUniverse query: {#Transform. #PendingPlacement optional. #id} do: [:transform :pending :id |
				((transform bounds containsPoint: view mousePosition) and: [pending isNil]) ifTrue: [ECSEntityComponentFilter openForId: id universe: aUniverse]]]]