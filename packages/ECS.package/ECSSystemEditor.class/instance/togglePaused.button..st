as yet unclassified
togglePaused: aSystem button: anECSButton

	aSystem isPaused ifTrue: [aSystem resume] ifFalse: [aSystem pause].
	anECSButton icon changeIconName: (self stateIconForSystem: aSystem)