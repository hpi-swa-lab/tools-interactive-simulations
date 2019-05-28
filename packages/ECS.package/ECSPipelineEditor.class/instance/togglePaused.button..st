as yet unclassified
togglePaused: aSystem button: anECSButton

	aSystem isEnabled ifTrue: [aSystem disable] ifFalse: [aSystem enable].
	anECSButton icon changeIconName: (self stateIconForRunningState: aSystem isEnabled)