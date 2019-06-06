as yet unclassified
positionOf: anId fromX: oldX fromY: oldY toX: newX toY: newY

	positionStorage at: (self pointGridHashX: oldX y: oldY) ifPresent: [:c | c remove: anId ifAbsent: []].
	(positionStorage at: (self pointGridHashX: newX y: newY) ifAbsentPut: [OrderedCollection new]) add: anId