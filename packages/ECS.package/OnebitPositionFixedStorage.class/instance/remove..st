as yet unclassified
remove: anId

	| delete |
	delete := linearStorage atForFetch: anId.
	linearStorage remove: anId.
	(positionStorage at: delete y * extent x + delete x + 1) ifNotNil: [:l | l remove: anId ifAbsent: []]