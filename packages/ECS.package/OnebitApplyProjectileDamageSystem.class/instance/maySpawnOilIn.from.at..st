as yet unclassified
maySpawnOilIn: aUniverse from: projectile at: position
	
	(aUniverse getSingle: #'OnebitOilProjectile' of: projectile)
		ifNotNil: [
			(aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				at: position
				query: #( #'OnebitBlocksPlacement' )
				do: [ :block |^ self].
			aUniverse
				spawnNewWith: #( #'Rendered' #'OnebitPosition' #'OnebitBlocksPlacement' )
				do: [ :rendered :oilPosition :block |
					rendered
						color: Color white;
						form: (ECSTileMapAsset of: #'onebit' at: (11 , 1 square: 16) scale: 2).
					oilPosition vector: position]]