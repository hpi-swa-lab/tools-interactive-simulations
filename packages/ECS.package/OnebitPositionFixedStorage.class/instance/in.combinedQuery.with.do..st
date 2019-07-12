as yet unclassified
in: aUniverse combinedQuery: aCollection with: anotherCollection do: aBlock
	
	(aUniverse
		query: (aCollection copyWith: #'OnebitPosition')
		do: [ :components |
			| testPosition |
			
			(testPosition := (components last)).
			(self in: aUniverse at: testPosition query: anotherCollection do: [ :otherComponents |
				(aBlock valueWithArguments: (components allButLast , otherComponents)) ] spread: false) ]
		spread: false)