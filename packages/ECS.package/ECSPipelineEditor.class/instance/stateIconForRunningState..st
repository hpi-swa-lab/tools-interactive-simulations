constants-and-icons
stateIconForRunningState: aBoolean

	^ aBoolean ifTrue: [self runningIconName] ifFalse: [self pausedIconName]