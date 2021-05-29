as yet unclassified
generateIds: aList

	^ aList first select: [ :e | e isNumber not] thenCollect: [:e | e class].