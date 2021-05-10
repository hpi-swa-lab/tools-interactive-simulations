as yet unclassified
tick: aUniverse

	aUniverse query: #(KeyEvent) do: [:event |
		aUniverse query: #(MyPhysics Transform MyPlayer) do: [:physics :transform :player |
			event key = $W ifTrue: [| box id |
				box := aUniverse spawnTemplate: #fallingBox.
				id := (aUniverse getSingle: #Transform of: box).
					id bounds position: transform bounds left , 100.
					id bounds bottom >= transform bounds top 
						ifTrue: [physics velocity: 0 @ 0]
						ifFalse: [physics velocity: 0 @ JumpHeight]].
			event key = $A ifTrue: [physics velocity: MovementSpeed negated @ 0].
			event key = $D ifTrue: [physics velocity: MovementSpeed @ 0]]]