as yet unclassified
tick: aUniverse

	aUniverse query: {Rendered. #id} do: [:rendered :entity |
		aUniverse remove: entity].
	
	aUniverse query: {ScreenSize} do: [:screenSize |
		100 timesRepeat: [
			self spawn: (5 atRandom , 1) at: (screenSize size // 64) atRandom in: aUniverse]].
	
	aUniverse spawnNewWith: {Transform. Rendered. Health. PlayerInput. Label} do: [:transform :rendered :health :playerInput :label |
		transform bounds: (0 , 0 square: 64).
		rendered color: nil; form: (ECSTileMapAsset of: #onebit at: (24, 4 square: 16) scale: 4).
		playerInput left: $A; right: $D; up: $W; down: $S; shoot: Character space; acceleration: 1.
		label label: 'player']