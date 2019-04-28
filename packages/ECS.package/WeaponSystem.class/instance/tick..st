as yet unclassified
tick: aWorld

	| time |
	time := Time millisecondClockValue.
	aWorld query: {Transform. Weapon. PlayerInput. #id} do: [:components |
		time - components second lastShotTime > components second cooldown ifTrue: [
			aWorld query: {KeyEvent} do: [:keyEvent |
				keyEvent first key = components third shoot ifTrue: [
					components second lastShotTime: time.
					self spawnProjectileAt: components first center in: aWorld by: components fourth]]]]