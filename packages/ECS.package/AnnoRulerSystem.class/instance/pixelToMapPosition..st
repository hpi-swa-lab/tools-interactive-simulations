as yet unclassified
pixelToMapPosition: anECSVector2

	^
		(((anECSVector2 x / TileSize x) + (anECSVector2 y / TileSize y)),
		((anECSVector2 y / TileSize y) - (anECSVector2 x / TileSize x))) round