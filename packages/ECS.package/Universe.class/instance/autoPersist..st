accessing
autoPersist: aBoolean

	autoPersist := aBoolean.
	self triggerEvent: #changeAutoPersist with: aBoolean