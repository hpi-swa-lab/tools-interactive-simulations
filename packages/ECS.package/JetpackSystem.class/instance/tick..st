as yet unclassified
tick: aUniverse

	aUniverse query: {DeltaTime} do: [:deltaTime |
		aUniverse query: {Jetpack. Physics. PlayerInput. Transform} do: [:jetpack :physics :inputMap :transform | | isAccelerating |
			isAccelerating := false.
			aUniverse query: {KeyEvent} do: [:keyComponents |
				keyComponents key = inputMap up ifTrue: [isAccelerating := true]].
			
			isAccelerating
					ifTrue: [
						jetpack fuel > 0 ifTrue: [
							self spawnExhaustIn: aUniverse at: transform bounds center.
							physics velocity y: jetpack acceleration negated.
							jetpack fuel: jetpack fuel - (self consumptionPerSecond * deltaTime dt)]]
					ifFalse: [
						jetpack fuel: jetpack fuel + (self recoveryPerSecond * deltaTime dt).
						jetpack fuel: (jetpack fuel min: jetpack capacity)]]].
	
	aUniverse query: {ScreenSize} do: [:screenSize |
		aUniverse query: {Transform. JetpackFuelIndicator} do: [:transform :jetpackFuelIndicator | | jetpack |
			jetpack := (aUniverse get: {Jetpack} of: jetpackFuelIndicator player) first.
			transform bounds position: screenSize size x - 200 , 0.
			transform bounds width: 200 * (jetpack fuel / jetpack capacity)]]