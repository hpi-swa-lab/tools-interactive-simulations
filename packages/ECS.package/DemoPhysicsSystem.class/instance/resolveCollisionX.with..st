as yet unclassified
resolveCollisionX: components with: otherComponents

	(components first bounds intersects: otherComponents first bounds) ifTrue: [
		components first bounds left < otherComponents first bounds left
			ifTrue: [components first bounds right: otherComponents first bounds left - self eps]
			ifFalse: [components first bounds left: otherComponents first bounds right + self eps].
		components second velocity x: 0]