as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitGameState' )
		do: [ :gameState |
			aUniverse
				query: #( #'OnebitBase' #'OnebitPosition' )
				do: [ :base :basePosition |
					aUniverse
						query: { #'id' . #'OnebitEnemyMinion' . #'OnebitPosition' . #'OnebitMoving' . 
							#'OnebitWalking' optional . #'OnebitFlying' optional }
						do: [ :entity :minion :position :moving :walking :flying |
							position = basePosition
								ifTrue: [
									gameState score: gameState score - 10.
									aUniverse remove: entity]
								ifFalse: [
									walking
										ifNotNil: [
											minion
												nextSteps: (self
													nextStepFrom: position
													to: basePosition
													in: aUniverse).
											minion nextSteps
												ifNotEmpty: [
													moving
														velocity: (minion nextSteps) last
															- position]]
											ifNil: [
												moving
													velocity: ((basePosition - position) normalize) nextLargest
														* ((basePosition
															squaredDistanceTo: position)
															<= 2
																ifTrue: [1]
																ifFalse: [2])]]]]]