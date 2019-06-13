initialization
profileUniverse

	currentlyProfiling
		ifTrue: [currentlyProfiling := false]
		ifFalse: [ | tally |
			currentlyProfiling := true.
			tally := MessageTally new.
			tally spyEvery: 1 on: [[currentlyProfiling] whileTrue: [self world doOneCycle]].
			self exploreTally: tally]