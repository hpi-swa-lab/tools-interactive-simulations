as yet unclassified
resolveCollision: components with: otherComponents velocity: velocity world: aWorld

	" undo y position change, check x only "
	components first position: components first position - (0 @ velocity y).
	self resolveCollisionX: components with: otherComponents.
	
	" re-apply y position change, check y only "
	components first position: components first position + (0 @ velocity y).
	self resolveCollisionY: components with: otherComponents.
	
	aWorld spawnNewWith: {Collision new collider: components fourth; collidee: otherComponents fourth}