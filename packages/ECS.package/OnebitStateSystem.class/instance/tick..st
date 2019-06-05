as yet unclassified
tick: aUniverse

	aUniverse query: {OnebitGameState} do: [:state |
		state state == #unset ifTrue: [
			state state: #init.
			aUniverse onceRunPipelineNamed: 'Generation']]