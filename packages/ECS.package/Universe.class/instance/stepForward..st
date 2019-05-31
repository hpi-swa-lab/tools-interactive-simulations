mainloop
stepForward: aMilisecondsNumber

	self query: {DeltaTime} do: [:deltaTime |
		deltaTime last: Time millisecondClockValue - aMilisecondsNumber].
	self tick