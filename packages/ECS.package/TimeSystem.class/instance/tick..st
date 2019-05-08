as yet unclassified
tick: aWorld

	| now |
	now  := Time millisecondClockValue.
	aWorld resource: DeltaTime do: [:deltaTime |
		deltaTime
			milliseconds: now - deltaTime last;
			last: now.
		
		deltaTime fpsAccumulated: deltaTime fpsAccumulated + deltaTime milliseconds.
		deltaTime numAccumulated: deltaTime numAccumulated + 1.
		deltaTime numAccumulated >= 20 ifTrue: [
			deltaTime fpsAverage: (1000.0 / (deltaTime fpsAccumulated / deltaTime numAccumulated)).
			deltaTime fpsAccumulated: 0.
			deltaTime numAccumulated: 0].
		
		aWorld query: {Timer. #id} do: [:components | | timer |
			timer := components first.
			timer timeLeft: timer timeLeft - deltaTime milliseconds.
			timer timeLeft <= 0 ifTrue: [
				timer receiver perform: timer selector with: (timer arguments ifNil: [#()]).
				aWorld remove: components second]]]