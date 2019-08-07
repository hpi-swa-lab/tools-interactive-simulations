as yet unclassified
tick: aUniverse

	aUniverse query: #(DeltaTime) do: [:deltaTime |
		aUniverse query: #(DemoAIMovement Physics) do: [:movement :physics |
			movement switchDirectionTimeout: movement switchDirectionTimeout - deltaTime dt.
			physics velocity += (1 , 0 * (movement moveLeft ifTrue: [-1] ifFalse: [1])).
			
			movement switchDirectionTimeout < 0 ifTrue: [
				movement moveLeft: movement moveLeft not.
				movement switchDirectionTimeout: 4]]]