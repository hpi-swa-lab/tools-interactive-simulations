as yet unclassified
tick: aUniverse

	aUniverse query: {KeyEvent} do: [:keyEvent |
		aUniverse query: {PlayerInput. Transform} do: [:inputMap :transform |
			keyEvent key = inputMap down ifTrue: [self shootOrMove: (0 , 1) inputMap: inputMap transform: transform universe: aUniverse].
			keyEvent key = inputMap up ifTrue: [self shootOrMove: (0 , -1) inputMap: inputMap transform: transform universe: aUniverse].
			keyEvent key = inputMap left ifTrue: [self shootOrMove: (-1 , 0) inputMap: inputMap transform: transform universe: aUniverse].
			keyEvent key = inputMap right ifTrue: [self shootOrMove: (1 ,0) inputMap: inputMap transform: transform universe: aUniverse].
			]]