as yet unclassified
spawnProjectileAt: aPoint in: aWorld by: anEntity

	aWorld spawn: (Entity new
		attach: Physics new;
		attach: (Colliding new ignoreList: {anEntity});
		attach: (Transform new position: aPoint);
		attach: (Rendered new size: 10 @ 10; color: Color orange))