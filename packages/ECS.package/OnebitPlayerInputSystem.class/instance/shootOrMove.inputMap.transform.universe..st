as yet unclassified
shootOrMove: aVector inputMap: inputMap transform: position universe: aUniverse

	aUniverse query: {OnebitConfig} do: [:config |
		aUniverse query: {KeyEvent} do: [:keyEvent |
			keyEvent key = inputMap shoot ifTrue: [
				aUniverse
					spawnNewWith: {OnebitMoving. OnebitBurning. OnebitExpiring. OnebitPosition. Rendered}
					do: [:moving :burning :expiring :shootTransform :rendered |
					shootTransform x: position x + aVector x y: position y + aVector y.
					moving velocity: aVector.
					expiring timeLeft: 4000.
					rendered color: Color white; form: (ECSTileMapAsset of: #onebit at: (15 , 10 square: config tileSize) scale: config scale)].
				^ self]]].
	position x: position x + aVector x y: position y + aVector y