as yet unclassified
checkReplay

	self universe query: {DeltaTime} do: [:deltaTime |
		deltaTime elapsed > endTime
			ifTrue: [self playSnapshot]
			ifFalse: [ | start end |
				start := deltaTime elapsed.
				end := Time millisecondClockValue - deltaTime last + start.
				eventHistory
					select: [:eventPair | eventPair first between: start and: end]
					thenDo: [:event | event second sentTo: self universe]]]