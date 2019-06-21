button-functionality
togglePaused

	self system isEnabled ifTrue: [self system disable] ifFalse: [self system enable].
	stateButton icon changeIconName: (self stateIconForRunningState: self system isEnabled)