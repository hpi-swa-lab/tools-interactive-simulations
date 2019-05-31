as yet unclassified
toggleRecording

	recording
		ifFalse: [
			recording := true.
			recordIcon changeIconName: #iconStop.
			self universe query: {DeltaTime} do: [:deltaTime | startTime := deltaTime elapsed].
			
			eventHistory := OrderedCollection new.
			self universe when: #externalEvent send: #recordEvent: to: self.
			componentSnapshot := self universe components veryDeepCopy]
		ifTrue: [
			recording := false.
			self universe query: {DeltaTime} do: [:deltaTime | endTime := deltaTime elapsed].
			self universe removeActionsWithReceiver: self forEvent: #externalEvent.
			recordIcon changeIconName: #iconCircle.
			self toggleLooping]