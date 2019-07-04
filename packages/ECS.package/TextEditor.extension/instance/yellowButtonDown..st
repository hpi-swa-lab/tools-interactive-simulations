*ECS-CodeInstrumentation
yellowButtonDown: event
	"Process a yellow button event. Answer true if the event was handled, false otherwise."
	self flag: #todo. "Propose this on the mailing list"
	(paragraph attributesAt: event cursorPoint) do:[:attr|
		attr menu ifNotNil: [ 
			attr menu
				setInvokingView: attr;
				popUpEvent: event in: event handler world.
			^true]].
	^false