as yet unclassified
start

	morph startStepping: #tick at: Time millisecondClockValue arguments: nil stepTime: 0.
	running := true.
	self resource: {DeltaTime} do: [:deltaTime | deltaTime last: Time millisecondClockValue]