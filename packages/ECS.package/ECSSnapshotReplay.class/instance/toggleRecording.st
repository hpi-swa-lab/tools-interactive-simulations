as yet unclassified
toggleRecording

	recording
		ifFalse: [
			recording := true.
			self universe query: {DeltaTime} do: [:deltaTime | startTime := deltaTime elapsed].
			recordIcon changeIconName: #iconStop.
			componentSnapshot := self universe components veryDeepCopy]
		ifTrue: [
			recording := false.
			self universe query: {DeltaTime} do: [:deltaTime | endTime := deltaTime elapsed].
			recordIcon changeIconName: #iconCircle.
			self universe when: #tick send: #checkReplay to: self.
			"self startStepping: #playSnapshot at: Time millisecondClockValue arguments: nil stepTime: (endTime - startTime)"]