as yet unclassified
resolveCollisionX: components with: otherComponents

	(components first bounds intersects: otherComponents first bounds) ifTrue: [
		components first left < otherComponents first left
			ifTrue: [components first right: otherComponents first left - self eps]
			ifFalse: [components first left: otherComponents first right + self eps].
		components second velocityX: 0]