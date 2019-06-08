as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitGameState. DeltaTime} do: [:state :deltaTime |
		state movingTimeout: state movingTimeout - deltaTime milliseconds.
		state movingTimeout <= 0 ifTrue: [
			state movingTimeout: 500.
			aUniverse onceRunPipelineNamed: 'GameTick'].
		
		state state == #unset ifTrue: [
			state state: #init.
			aUniverse onceRunPipelineNamed: 'Generation']]