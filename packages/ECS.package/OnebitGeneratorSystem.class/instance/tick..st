as yet unclassified
tick: aUniverse

	aUniverse query: {Rendered. #id} do: [:rendered :entity |
		aUniverse remove: entity].
	
	aUniverse query: {OnebitConfig} do: [:config |
		3000 timesRepeat: [
			self spawn: (5 atRandom , 1) at: config mapSize atRandom - (config mapSize // 2) config: config in: aUniverse].
		
		aUniverse
			spawnNewWith: {OnebitPosition. Rendered. Health. PlayerInput. Label. OnebitCameraFocus}
			do: [:position :rendered :health :playerInput :label :cameraFocus |
				position x: 0 y: 0.
				rendered color: ECSColor black; form: (ECSTileMapAsset of: #onebit at: (24, 4 square: config tileSize) scale: config scale).
				playerInput left: $A; right: $D; up: $W; down: $S; shoot: Character space; acceleration: 1.
				label label: 'player'].
		
		10 timesRepeat: [self buildStreet: config in: aUniverse].
		self placeSpawnPointsIn: aUniverse config: config]