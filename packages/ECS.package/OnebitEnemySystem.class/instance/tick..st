as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitGameState) do: [:gameState |
		aUniverse query: #(OnebitBase OnebitPosition) do: [:base :basePosition |
			aUniverse query: #(id OnebitEnemyMinion OnebitPosition OnebitMoving) do: [:entity :minion :position :moving |
				position = basePosition
					ifTrue: [
						gameState score: gameState score - 10.
						aUniverse remove: entity]
					ifFalse: [
						minion nextSteps: (self nextStepFrom: position to: basePosition in: aUniverse).
						minion nextSteps ifNotEmpty: [
							moving velocity: minion nextSteps last - position]]]]]