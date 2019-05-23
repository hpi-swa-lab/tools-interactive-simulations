as yet unclassified
attemptMoving: components by: velocity around: aCollectionOfEntities universe: aUniverse

	components third
		ifNil: [components first bounds position: components first bounds origin + velocity]
		ifNotNil: [:colliding |
			components first bounds position: components first bounds origin + velocity.
			aCollectionOfEntities do: [:otherComponents |
				(otherComponents fourth ~= components fourth and:
				[(otherComponents first bounds intersects: components first bounds) and:
				[self canCollide: components with: otherComponents]]) ifTrue: [
					self resolveCollision: components with: otherComponents velocity: velocity universe: aUniverse]]]