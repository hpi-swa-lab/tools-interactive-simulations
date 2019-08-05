as yet unclassified
tick: aUniverse
	
	((aUniverse queryList: #( #'OnebitPosition' #'OnebitWater' ))
		do: [ :components |
			| positions |
			
			(positions := (aUniverse storageOf: #'OnebitPosition')).
			({ (1 , 0) . (0 , 1) . (-1 , 0) . (0 , -1) }
				do: [ :displace |
					(positions
						in: aUniverse
						at: (((components first) vector) + displace)
						query: { #'OnebitHole' . #'id' }
						do: [ :hole :entity |
							(aUniverse
								remove: #'OnebitHole' from: entity;
								attach: #'OnebitWater' to: entity) ]) ]).
			(positions
				in: aUniverse
				combinedQuery: #( #'OnebitWater' )
				with: { #'OnebitEnemyMinion' . #'id' . (#'OnebitBurning' optional) }
				do: [ :water :minion :entity :burning |
					(aUniverse attach: #'OnebitWet' to: entity).
					(burning ifNotNil: [ (aUniverse remove: #'OnebitBurning' from: entity) ]) ]) ])