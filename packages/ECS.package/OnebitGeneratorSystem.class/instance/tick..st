as yet unclassified
tick: aUniverse

	aUniverse query: {Rendered. #id} do: [:rendered :entity |
		aUniverse remove: entity].
	
	aUniverse query: {OnebitConfig} do: [:config |
		1000 timesRepeat: [
			self spawn: (5 atRandom , 1) at: config mapSize atRandom - (config mapSize // 2) config: config in: aUniverse].
	
		aUniverse
			spawnNewWith: {Transform. Rendered. Health. PlayerInput. Label. OnebitCameraFocus}
			do: [:transform :rendered :health :playerInput :label :cameraFocus |
				transform bounds: (0 , 0 square: config tileSize * config scale).
				rendered color: nil; form: (ECSTileMapAsset of: #onebit at: (24, 4 square: config tileSize) scale: config scale).
				playerInput left: $A; right: $D; up: $W; down: $S; shoot: Character space; acceleration: 1.
				label label: 'player']]