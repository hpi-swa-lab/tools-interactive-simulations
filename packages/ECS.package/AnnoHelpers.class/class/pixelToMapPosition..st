as yet unclassified
pixelToMapPosition: anECSVector2

	^
		(((anECSVector2 x / self tileSize x) + (anECSVector2 y / self tileSize y)),
		((anECSVector2 y / self tileSize y) - (anECSVector2 x / self tileSize x))) round