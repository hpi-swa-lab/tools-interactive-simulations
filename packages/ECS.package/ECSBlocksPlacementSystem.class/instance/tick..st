as yet unclassified
tick: aUniverse

	aUniverse
		query: #(#Transform #PendingPlacement #id)
		do: [:transform :p :entity | 
			aUniverse
				query: #(#UniverseView)
				do: [:view |  | halfSize |
					halfSize := transform bounds extent / 2.
					aUniverse
						autoPersistSet: #bounds
						in: #Transform
						of: entity
						to: (transform bounds centered: (view mousePosition + halfSize grid: transform bounds extent) - halfSize).
					view leftJustUp ifTrue: [
						aUniverse autoPersistRemove: #PendingPlacement from: entity.
						^ self]]].
	aUniverse
		query: #(#UniverseView)
		do: [:view | 
			view leftJustUp ifTrue: [
				aUniverse
					query: {#Transform. #id}
					do: [:transform :id | 
						(transform bounds containsPoint: view mousePosition) ifTrue: [
							view shiftPressed
								ifTrue: [aUniverse autoPersistAttach: #PendingPlacement to: id]
								ifFalse: [ECSEntityComponentFilter openForId: id universe: aUniverse]]]]]