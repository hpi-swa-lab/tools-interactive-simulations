as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitConfig' #'DeltaTime' #'OnebitGameState' )
		do: [ :config :deltaTime :state |
			state ticksTillSpawn: state ticksTillSpawn - 1.
			state ticksTillSpawn <= 0
				ifTrue: [
					| enemy |
					
					state ticksTillSpawn: config spawnTimeout.
					(((state turnCount) sqrt) ceiling max: 5)
						timesRepeat: [
							| position |
							
							enemy := aUniverse spawnTemplate: #'Enemy'.
							position := 4 atRandom
									caseOf: { [1] -> [((config mapSize) x) atRandom - 1 , 0] . [
											2]
											-> [
												((config mapSize) x) atRandom - 1
													, ((config mapSize) y - 1)] . [3]
													-> [0 , (((config mapSize) x) atRandom - 1)] . [
														4]
														-> [
															(config mapSize) x - 1
																, (((config mapSize) x) atRandom
																	- 1)] }.
													(aUniverse
														getSingle: #'OnebitPosition'
														of: enemy)
														vector: position.
													aUniverse
														attach: ((state turnCount > 30
															and: [4 atRandom = 1])
															ifTrue: [
																(aUniverse
																	getSingle: 
																	#'Rendered'
																	of: enemy)
																	form: (
																	ECSTileMapAsset
																		of: 
																		#'onebit'
																		at: (31 , 5
																			square: 
																			config tileSize)
																		scale: 2).
																#'OnebitFlying']
															ifFalse: [#'OnebitWalking'])
														to: enemy]].
									state turnCount: state turnCount + 1.
									state coins: state coins + config coinsPerTurn]