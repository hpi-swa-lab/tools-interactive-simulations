as yet unclassified
tick: aUniverse
	
	(aUniverse
		query: #( #'OnebitGameState' #'OnebitConfig' #'DeltaTime' )
		do: [ :state :config :deltaTime |
			(state movingTimeout: ((state movingTimeout) - (deltaTime milliseconds))).
			(((state movingTimeout) <= 0)
				ifTrue: [
					(state movingTimeout: (config turnTime)).
					(aUniverse onceRunPipelineNamed: 'GameTick') ]).
			(((state state) == #'unset')
				ifTrue: [
					(state state: #'init').
					((aUniverse storageOf: #'OnebitPosition') extent: (config mapSize)).
					(aUniverse onceRunPipelineNamed: 'Generation') ]) ])