as yet unclassified
tick: aWorld

	aWorld resource: DeltaTime do: [:deltaTime |
		aWorld query: {Projectile. #id. Transform} do: [:components |
			self spawnParticlesIn: aWorld at: components third center.
			aWorld query: {Collision} do: [:collisionComponents |
				(collisionComponents first collider = components second or: [collisionComponents first collidee = components second]) ifTrue: [
					aWorld remove: components second.
					self spawnExplosionIn: aWorld at: components third center]].
			components first timeToLive: components first timeToLive - deltaTime milliseconds.
			components first timeToLive <= 0 ifTrue: [
				aWorld remove: components second]]]