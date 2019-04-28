as yet unclassified
attemptMoving: components by: velocity around: aCollectionOfEntities

	components third
		ifNil: [components first position: components first + velocity]
		ifNotNil: [:colliding |
			components first position: components first position + velocity.
			aCollectionOfEntities do: [:otherComponents |
				(otherComponents fourth ~= components fourth and:
				[(otherComponents first bounds intersects: components first bounds) and:
				[((components third ignoreList includes: otherComponents fourth) not and: [(otherComponents third ignoreList includes: components fourth) not])]]) ifTrue: [
					self resolveCollision: components with: otherComponents velocity: velocity]]]