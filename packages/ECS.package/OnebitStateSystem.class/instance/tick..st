as yet unclassified
tick: aUniverse

	aUniverse
		query: #( #'OnebitGameState' #'OnebitConfig' #'DeltaTime' )
		do: [ :state :config :deltaTime |
			SBWatch report: (state movingTimeout: state movingTimeout - deltaTime milliseconds) for: 774088900.
			state movingTimeout <= 0
				ifTrue: [
					state movingTimeout: config turnTime.
					aUniverse onceRunPipelineNamed: 'GameTick'].
			state state == #'unset'
				ifTrue: [
					state
						state: #'init';
						score: 0;
						coins: 0.
					(aUniverse storageOf: #'OnebitPosition') extent: config mapSize.
					aUniverse onceRunPipelineNamed: 'Generation']]
