as yet unclassified
start

	| now |
	now := Time millisecondClockValue.
	self resource: DeltaTime do: [:deltaTime | deltaTime last: now].
	morph startStepping: #tick at: now arguments: nil stepTime: 0.
	running := true.
	self changed: #isPaused