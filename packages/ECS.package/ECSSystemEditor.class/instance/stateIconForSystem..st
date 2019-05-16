as yet unclassified
stateIconForSystem: aSystem

	^ aSystem isRunning ifTrue: [self runningIconName] ifFalse: [self pausedIconName]