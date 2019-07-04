as yet unclassified
tick: aUniverse

	1""
	
	"| velX velY events |
	events := aUniverse queryList: {KeyEvent}.
	
	aUniverse query: {Transform. PlayerInput} do: [:transform :inputMap |
		
		events do: [:event |
			event first key caseOf: {
				[inputMap left] -> [velX := -1].
				[inputMap right] -> [velX := 1].
				[inputMap up] ->  [velY := -1].
				[inputMap down] -> [velY := 1]}
			otherwise: []].
		
		physics velocity: physics velocity + ((velX , velY) * inputMap acceleration)]"

	