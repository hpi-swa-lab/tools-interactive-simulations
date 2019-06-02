as yet unclassified
shootOrMove: aVector inputMap: inputMap transform: transform universe: aUniverse

	aUniverse query: {KeyEvent} do: [:keyEvent |
		keyEvent key = inputMap shoot ifTrue: [
			aUniverse
				spawnNewWith: {OnebitMoving. OnebitBurning. OnebitExpiring. Transform. Rendered}
				do: [:moving :burning :expiring :shootTransform :rendered |
				shootTransform bounds: transform bounds + aVector.
				moving velocity: aVector.
				expiring timeLeft: 1000.
				rendered color: nil; form: (ECSTileMapAsset of: #onebit at: (15 , 10 square: 16) scale: 4)].
			^ self]].
	transform bounds += aVector