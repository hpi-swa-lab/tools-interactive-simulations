as yet unclassified
tick: aUniverse

	aUniverse query: #(Mouse) do: [:mouse |
		mouse leftJustUp ifTrue: [
			aUniverse query: #(Transform id) do: [:transform :id |
				(transform bounds containsPoint: mouse position) ifTrue: [ECSEntityComponentFilter openForId: id universe: aUniverse]]]]