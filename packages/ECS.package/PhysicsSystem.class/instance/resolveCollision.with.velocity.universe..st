as yet unclassified
resolveCollision: components with: otherComponents velocity: velocity universe: aUniverse

	" undo y position change, check x only "
	components first bounds position: components first bounds origin - (0 , velocity y).
	self resolveCollisionX: components with: otherComponents.
	
	" re-apply y position change, check y only "
	components first bounds position: components first bounds origin + (0 , velocity y).
	self resolveCollisionY: components with: otherComponents.
	
	aUniverse spawnNewWith: {Collision} do: [:collision | collision collider: components fourth; collidee: otherComponents fourth]