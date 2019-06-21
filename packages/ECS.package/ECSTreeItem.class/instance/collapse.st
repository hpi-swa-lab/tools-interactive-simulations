menus
collapse

	expanded ifTrue: [
		expanded := false.
		self updateIcon.
		self triggerEvent: #collapse]
	