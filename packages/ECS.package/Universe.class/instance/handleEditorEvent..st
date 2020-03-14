events
handleEditorEvent: anEvent

	anEvent value.
	self triggerEvent: #externalEvent with: {anEvent. 0}