as yet unclassified
keyStroke: anEvent

	((systemWorld queryList: {KeyEvent}) noneSatisfy: [:list | list first key = anEvent keyCharacter]) ifTrue: [
		systemWorld spawn: (Entity new attach: (KeyEvent new key: anEvent keyCharacter))]