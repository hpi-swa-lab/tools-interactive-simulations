as yet unclassified
tick: aUniverse
	
	| positions |
	
	positions := aUniverse storageOf: #'OnebitPosition'.
	aUniverse
		query: { #'Health' optional . #'Rendered' optional . #'OnebitBurning' . #'OnebitPosition' . #'id' }
		do: [ :health :burningRendered :burning :position :entity |
			health
				ifNotNil: [
					aUniverse
						spawnNewWith: #( #'OnebitDamage' )
						do: [ :damage |
							damage
								damage: 3;
								target: entity;
								color: Color red;
								type: #'fire'].
					positions
						in: aUniverse
						neighborsOf: position
						query: { #'OnebitFlammable' . #'id' . #'OnebitWet' optional }
						do: [ :flammable :newEntity :wet |
							aUniverse attach: #'OnebitBurning' to: newEntity.
							wet ifNotNil: [aUniverse remove: #'OnebitWet' from: newEntity]].
					burningRendered
						ifNotNil: [burningRendered color alpha: (health current / health max) asFloat]].
			positions
				in: aUniverse
				at: position
				query: #( #'OnebitOily' #'id' )
				do: [ :oily :oildId |
					aUniverse remove: oildId.
					positions
						in: aUniverse
						around: position
						query: #( #'Health' #'id' )
						do: [ :otherHealth :otherId |
							aUniverse
								spawnNewWith: #( #'OnebitDamage' )
								do: [ :damage |
									damage
										target: otherId;
										color: Color red;
										type: #'fire';
										damage: 100]]]]