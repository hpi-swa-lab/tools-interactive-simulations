as yet unclassified
tick: aUniverse

	| now |
	now  := Time millisecondClockValue.
	aUniverse query: #(DeltaTime) do: [:deltaTime |
		deltaTime
			milliseconds: now - deltaTime last;
			last: now.
		
		deltaTime elapsed: deltaTime elapsed + deltaTime milliseconds.
		deltaTime fpsAccumulated: deltaTime fpsAccumulated + deltaTime milliseconds.
		deltaTime numAccumulated: deltaTime numAccumulated + 1.
		deltaTime numAccumulated >= 20 ifTrue: [
			deltaTime fpsAverage: (1000.0 / (deltaTime fpsAccumulated / deltaTime numAccumulated)).
			deltaTime fpsAccumulated: 0.
			deltaTime numAccumulated: 0].
		
		"aUniverse query: #(Timer id) do: [:timer :id |
			timer timeLeft: timer timeLeft - deltaTime milliseconds.
			timer timeLeft <= 0 ifTrue: [
				timer receiver perform: timer selector with: (timer arguments ifNil: [#()]).
				aUniverse remove: id]]"]