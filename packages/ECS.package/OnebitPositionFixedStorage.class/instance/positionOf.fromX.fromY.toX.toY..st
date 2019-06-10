as yet unclassified
positionOf: anId fromX: oldX fromY: oldY toX: newX toY: newY

	(positionStorage at: oldY * extent x + oldX + 1) ifNotNil: [:c | c remove: anId ifAbsent: []].
	((positionStorage at: newY * extent x + newX + 1)
		ifNil: [positionStorage at: newY * extent x + newX + 1 put: OrderedCollection new]) add: anId