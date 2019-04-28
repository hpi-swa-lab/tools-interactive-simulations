as yet unclassified
tick: aWorld

	| velX velY events |
	events := aWorld queryList: {KeyEvent}.
	
	(events contains: [:event | event first key = $  ]) ifTrue: [^ aWorld resource: SimulationPaused do: #toggle].
	
	aWorld query: {Physics. PlayerInput. Transform. #id} do: [:components | | inputMap velocity position |
		velocity := components first velocity.
		inputMap := components second.
		position := components third position.
		velX := 0.
		velY := 0.
		
		(events contains: [:event | event first key = Character cr]) ifTrue: [
			self spawnProjectileAt: position in: aWorld by: components fourth].
		
		events do: [:event |
			event first key caseOf: {
				[inputMap left] -> [velX := -1].
				[inputMap right] -> [velX := 1].
				[inputMap up] ->  [velY := -1].
				[inputMap down] -> [velY := 1]} otherwise: []].
		
		components first velocity: components first velocity + ((velX @ velY) * components second acceleration)]