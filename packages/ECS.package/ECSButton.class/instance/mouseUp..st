as yet unclassified
mouseUp: anEvent

	super mouseUp: anEvent.
	active ifTrue: [
		(self containsPoint: anEvent position) ifTrue: [self triggerEvent: #clicked].
		active := false.
		self changed]