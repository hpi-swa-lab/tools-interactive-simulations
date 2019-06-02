component lifecyle
stepTime: aNumber

	stepTime ~= aNumber ifTrue: [
		stepTime := aNumber.
		self triggerEvent: #stepTimeChanged]