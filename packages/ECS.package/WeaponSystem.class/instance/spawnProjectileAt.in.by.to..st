as yet unclassified
spawnProjectileAt: aPoint in: aUniverse by: anEntity to: aVelocityPoint

	aUniverse spawnNewWith: {
		Physics new velocity: aVelocityPoint * 6.
		Projectile new damage: 10; timeToLive: 1000.
		Colliding new ignoreList: {anEntity}; group: anEntity.
		Transform new bounds: (aPoint extent: 10 @ 10).
		Rendered new color: Color orange}