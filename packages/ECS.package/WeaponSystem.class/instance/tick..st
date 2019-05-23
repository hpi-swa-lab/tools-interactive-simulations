as yet unclassified
tick: aUniverse

	| time |
	time := Time millisecondClockValue.
	aUniverse query: {Transform. Weapon. PlayerInput. Physics optional. #id} do: [:transform :weapon :inputMap :physics :id |
		time - weapon lastShotTime > weapon cooldown ifTrue: [
			aUniverse query: {KeyEvent} do: [:keyEvent |
				keyEvent key = inputMap shoot ifTrue: [
					weapon lastShotTime: time.
					self
						spawnProjectileAt: transform center
						in: aUniverse
						by: id
						to: (physics ifNotNil: #velocity ifNil: [100 , 0])]]]]