as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitConfig' )
		do: [ :config |
			aUniverse
				query: { #'OnebitMoving' . #'OnebitPosition' . #'OnebitWalking' optional }
				do: [ :moving :position :walking |
					| pos hasBlocker |
					
					pos := (position x + (moving velocity) x clampLow: 0 high: (config mapSize) x - 1)
							@ (position y + (moving velocity) y clampLow: 0 high: (config mapSize) y - 1).
						hasBlocker := false.
						walking
							ifNotNil: [
								(aUniverse storageOf: #'OnebitPosition')
									in: aUniverse
									at: pos
									query: #( #'OnebitBlockMovement' #'id' )
									do: [ :blocker :entity |
										hasBlocker := (blocker canTraverse) not.
										(blocker cost > 0 and: [blocker canDamage])
											ifTrue: [
												blocker cost: blocker cost - 1.
												blocker cost = 0
													ifTrue: [aUniverse remove: entity]]]].
						hasBlocker ifFalse: [position x: pos x y: pos y]]]