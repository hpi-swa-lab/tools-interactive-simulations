as yet unclassified
tick: aWorld

	| velX velY events |
	events := aWorld queryList: {KeyEvent}.
	
	(events contains: [:event | event first key = $  ]) ifTrue: [^ aWorld resource: SimulationPaused do: #toggle].
	
	aWorld query: {Physics. PlayerInput} do: [:components | | inputMap velocity |
		velocity := components first velocity.
		inputMap := components second.
		velX := 0.
		velY := 0.
		
		events do: [:event |
			event first key caseOf: {
				[inputMap left] -> [velX := -1].
				[inputMap right] -> [velX := 1].
				[inputMap up] ->  [velY := -1].
				[inputMap down] -> [velY := 1]}
			otherwise: []].
		
		components first velocity: components first velocity + ((velX @ velY) * components second acceleration)]