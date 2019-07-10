as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: { (#'Health' optional) . (#'Rendered' optional) . #'OnebitBurning' . #'OnebitPosition' . #'id' }
		do: [ :health :burningRendered :burning :position :entity |
			(health
				ifNotNil: [
					(aUniverse
						spawnNewWith: #( #'OnebitDamage' )
						do: [ :damage |
							(damage
								damage: 3;
								target: entity;
								color: (ECSColor red);
								type: #'fire') ]).
					((aUniverse storageOf: #'OnebitPosition')
						in: aUniverse
						neighborsOf: position
						query: #( #'OnebitFlammable' #'id' )
						do: [ :flammable :newEntity | (aUniverse attach: #'OnebitBurning' to: newEntity) ]).
					(burningRendered ifNotNil: [ ((burningRendered color) alpha: (((health current) / (health max)) asFloat)) ]) ]) ])