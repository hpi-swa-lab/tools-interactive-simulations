as yet unclassified
tick: aUniverse

	| time |
	time := Time millisecondClockValue.
	aUniverse query: {Transform. Weapon. PlayerInput. Physics optional. #id} do: [:components |
		time - components second lastShotTime > components second cooldown ifTrue: [
			aUniverse query: {KeyEvent} do: [:keyEvent |
				keyEvent first key = components third shoot ifTrue: [
					components second lastShotTime: time.
					self
						spawnProjectileAt: components first center
						in: aUniverse
						by: components fifth
						to: (components fourth ifNotNil: #velocity ifNil: [100 @ 0])]]]]