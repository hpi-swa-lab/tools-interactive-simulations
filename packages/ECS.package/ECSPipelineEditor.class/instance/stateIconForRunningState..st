as yet unclassified
stateIconForRunningState: aBoolean

	^ aBoolean ifTrue: [self runningIconName] ifFalse: [self pausedIconName]