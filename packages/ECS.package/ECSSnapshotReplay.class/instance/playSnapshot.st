as yet unclassified
playSnapshot

	self universe components: componentSnapshot veryDeepCopy.
	self universe query: {DeltaTime} do: [:deltaTime |
		deltaTime last: Time millisecondClockValue]