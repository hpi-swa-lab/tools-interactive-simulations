mainloop
start

	| now |
	now := Time millisecondClockValue.
	self query: {DeltaTime} do: [:deltaTime | deltaTime last: now].
	
	running := true.
	self triggerEvent: #start