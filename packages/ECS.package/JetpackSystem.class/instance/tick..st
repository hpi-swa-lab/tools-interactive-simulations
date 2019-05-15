as yet unclassified
tick: aWorld

	aWorld resource: DeltaTime do: [:deltaTime |
		aWorld query: {Jetpack. Physics. PlayerInput. Transform} do: [:components | | isAccelerating |
			isAccelerating := false.
			aWorld query: {KeyEvent} do: [:keyComponents |
				keyComponents first key = components third up ifTrue: [isAccelerating := true]].
			
			isAccelerating
					ifTrue: [
						components first fuel > 0 ifTrue: [
							self spawnExhaustIn: aWorld at: components fourth center.
							components second velocityY: components first acceleration negated.
							components first fuel: components first fuel - (self consumptionPerSecond * deltaTime dt)]]
					ifFalse: [
						components first fuel: components first fuel + (self recoveryPerSecond * deltaTime dt).
						components first fuel: (components first fuel min: components first capacity)]]].
	
	aWorld resource: ScreenSize do: [:screenSize |
		aWorld query: {Transform. JetpackFuelIndicator} do: [:components | | jetpack |
			jetpack := (aWorld get: {Jetpack} of: components second player) first.
			components first position: screenSize size x - 200 @ 0.
			components first width: 200 * (jetpack fuel / jetpack capacity)]]