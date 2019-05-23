as yet unclassified
spawnProjectileAt: aPoint in: aUniverse by: anEntity to: aVelocityPoint

	aUniverse spawnNewWith: {Physics. Projectile. Colliding. Transform. Rendered} do: [:physics :projectile :colliding :transform :rendered |
		physics velocity: aVelocityPoint * 6.
		projectile damage: 10; timeToLive: 1000.
		colliding ignoreList: {anEntity}; group: anEntity.
		transform bounds: (aPoint extent: 10 , 10).
		rendered color: Color orange; form: nil]