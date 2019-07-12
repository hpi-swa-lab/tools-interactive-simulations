as yet unclassified
buttonAt: aPoint in: aUniverse do: aBlock

	(aUniverse
		query: #( #'OnebitButton' #'id' )
		do: [ :button :entity |
			(((button bounds) containsPoint: (aPoint)) ifTrue: [ aBlock value: entity ]) ])