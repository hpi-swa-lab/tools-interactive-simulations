as yet unclassified
resolveCollisionY: components with: otherComponents

	(components first bounds intersects: otherComponents first bounds) ifTrue: [
		components first bounds top < otherComponents first bounds top
			ifTrue: [components first bounds bottom: otherComponents first bounds top - self eps]
			ifFalse: [components first bounds top: otherComponents first bounds bottom + self eps].
		components second velocity y: 0]