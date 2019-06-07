as yet unclassified
remove: anId

	| delete |
	delete := linearStorage atForFetch: anId.
	linearStorage remove: anId.
	(positionStorage at: (self pointGridHashX: delete x y: delete y)) remove: anId ifAbsent: []