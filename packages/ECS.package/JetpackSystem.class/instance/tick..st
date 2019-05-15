as yet unclassified
tick: aUniverse

	aUniverse resource: DeltaTime do: [:deltaTime |
		aUniverse query: {Jetpack. Physics. PlayerInput. Transform} do: [:components | | isAccelerating |
			isAccelerating := false.
			aUniverse query: {KeyEvent} do: [:keyComponents |
				keyComponents first key = components third up ifTrue: [isAccelerating := true]].
			
			isAccelerating
					ifTrue: [
						components first fuel > 0 ifTrue: [
							self spawnExhaustIn: aUniverse at: components fourth center.
							components second velocityY: components first acceleration negated.
							components first fuel: components first fuel - (self consumptionPerSecond * deltaTime dt)]]
					ifFalse: [
						components first fuel: components first fuel + (self recoveryPerSecond * deltaTime dt).
						components first fuel: (components first fuel min: components first capacity)]]].
	
	aUniverse resource: ScreenSize do: [:screenSize |
		aUniverse query: {Transform. JetpackFuelIndicator} do: [:components | | jetpack |
			jetpack := (aUniverse get: {Jetpack} of: components second player) first.
			components first position: screenSize size x - 200 @ 0.
			components first width: 200 * (jetpack fuel / jetpack capacity)]]