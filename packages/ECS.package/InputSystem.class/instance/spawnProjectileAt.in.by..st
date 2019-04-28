as yet unclassified
spawnProjectileAt: aPoint in: aWorld by: anEntity

	aWorld spawnNewWith: {
		Physics new.
		Colliding new ignoreList: {anEntity}.
		Transform new position: aPoint.
		Rendered new size: 10 @ 10; color: Color orange}