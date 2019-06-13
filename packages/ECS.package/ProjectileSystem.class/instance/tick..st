as yet unclassified
tick: aUniverse

	aUniverse query: #(DeltaTime) do: [:deltaTime |
		aUniverse query: #(Projectile id Transform) do: [:projectile :id :transform |
			self spawnParticlesIn: aUniverse at: transform bounds center.
			aUniverse query: #(Collision) do: [:collision |
				(collision collider = id or: [collision collidee = id]) ifTrue: [
					aUniverse remove: id.
					self spawnExplosionIn: aUniverse at: transform bounds center]].
			projectile timeToLive: projectile timeToLive - deltaTime milliseconds.
			projectile timeToLive <= 0 ifTrue: [aUniverse remove: id]]]