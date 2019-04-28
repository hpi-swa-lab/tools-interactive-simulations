as yet unclassified
start

	morph startStepping: #tick at: Time millisecondClockValue arguments: nil stepTime: 0.
	running := true.
	self resources: {DeltaTime} do: [:resources | resources first last: Time millisecondClockValue]