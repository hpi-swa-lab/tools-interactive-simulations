event handling
click: anEvent

	selected ifTrue: [self deselect] ifFalse: [self select]