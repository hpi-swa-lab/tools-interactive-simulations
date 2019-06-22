replay
checkReplay

	self universe query: #(DeltaTime) do: [:deltaTime |
		progress value: (deltaTime elapsed - startTime) / (endTime - startTime).
		
		deltaTime elapsed > endTime
			ifTrue: [self playSnapshot]
			ifFalse: [ | start end |
				start := previousElapsed.
				end := deltaTime elapsed.
				previousElapsed := end.
				"end := Time millisecondClockValue - deltaTime last + start."
				eventHistory
					select: [:eventPair | eventPair first between: start and: end]
					thenDo: [:event | event second sentTo: self universe]]]