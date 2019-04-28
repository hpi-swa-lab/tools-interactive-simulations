as yet unclassified
resolveCollisionY: components with: otherComponents

	(components first bounds intersects: otherComponents first bounds) ifTrue: [
		components first top < otherComponents first top
			ifTrue: [components first bottom: otherComponents first top - self eps]
			ifFalse: [components first top: otherComponents first bottom + self eps].
		components second velocityY: 0]