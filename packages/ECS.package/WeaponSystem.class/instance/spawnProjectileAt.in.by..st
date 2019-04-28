as yet unclassified
spawnProjectileAt: aPoint in: aWorld by: anEntity

	aWorld spawnNewWith: {
		Physics new velocity: 400 @ 0.
		Projectile new damage: 10.
		Colliding new ignoreList: {anEntity}.
		Transform new bounds: (aPoint extent: 10 @ 10).
		Rendered new color: Color orange}