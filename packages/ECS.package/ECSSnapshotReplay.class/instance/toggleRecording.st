as yet unclassified
toggleRecording

	recording
		ifFalse: [
			recording := true.
			startTime := Time millisecondClockValue.
			recordIcon changeIconName: #iconStop.
			componentSnapshot := self universe components veryDeepCopy]
		ifTrue: [
			recording := false.
			endTime := Time millisecondClockValue.
			recordIcon changeIconName: #iconCircle.
			self startStepping: #playSnapshot at: Time millisecondClockValue arguments: nil stepTime: (endTime - startTime)]