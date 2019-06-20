as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitProjectile id) do: [:projectile :projectileEntity |
		(aUniverse storageOf: #OnebitPosition) in: aUniverse at: projectile targetPosition query: #(Health id) do: [:health :entity |
			aUniverse spawnNewWith: #(OnebitDamage) do: [:damage |
				damage color: Color lightBlue; type: #water; damage: projectile damage; target: entity]].
		aUniverse remove: projectileEntity]