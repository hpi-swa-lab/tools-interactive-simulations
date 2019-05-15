as yet unclassified
tick: aUniverse

	aUniverse resource: DeltaTime do: [:deltaTime |
		aUniverse query: {Projectile. #id. Transform} do: [:components |
			self spawnParticlesIn: aUniverse at: components third center.
			aUniverse query: {Collision} do: [:collisionComponents |
				(collisionComponents first collider = components second or: [collisionComponents first collidee = components second]) ifTrue: [
					aUniverse remove: components second.
					self spawnExplosionIn: aUniverse at: components third center]].
			components first timeToLive: components first timeToLive - deltaTime milliseconds.
			components first timeToLive <= 0 ifTrue: [
				aUniverse remove: components second]]]