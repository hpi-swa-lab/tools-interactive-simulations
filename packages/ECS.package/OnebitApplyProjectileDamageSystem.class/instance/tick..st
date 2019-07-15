as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitProjectile' #'id' )
		do: [ :projectile :projectileEntity |
			| affectedArea |
			
			affectedArea := (aUniverse getSingle: #'OnebitExplosionProjectile' of: projectile source)
					ifNotNil: [
						affectedArea := ((-1 to: 1) gather: [ :x |
								(-1 to: 1) collect: [ :y |x , y]])
								collect: [ :p |p + projectile targetPosition]]
					ifNil: { projectile targetPosition }.
			affectedArea
				do: [ :position |
					| positions |
					
					positions := aUniverse storageOf: #'OnebitPosition'.
					positions
						in: aUniverse
						at: position
						query: #( #'Health' #'id' )
						do: [ :health :entity |
							| damageType |
							
							damageType := self
									damageTypeFor: projectile source
									in: aUniverse
									against: entity.
							aUniverse
								spawnNewWith: #( #'OnebitDamage' )
								do: [ :damage |
									damage
										color: damageType second;
										type: damageType first;
										damage: projectile damage;
										target: entity]].
					self showImpactIn: aUniverse at: position.
					self maySpawnOilIn: aUniverse from: projectile source at: position].
			aUniverse remove: projectileEntity]