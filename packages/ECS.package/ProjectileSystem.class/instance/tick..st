as yet unclassified
tick: aWorld

	aWorld query: {Projectile. #id} do: [:components |
		aWorld query: {Collision} do: [:collisionComponents |
			(collisionComponents first collider = components second or: [collisionComponents first collidee = components second]) ifTrue: [
				aWorld remove: components second]]]