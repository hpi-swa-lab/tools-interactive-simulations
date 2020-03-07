button-functionality
toggleRecording

	recording
		ifFalse: [
			recording := true.
			loopingButton visible: false.
			recordButton label: 'Stop Recording'.
			recordButton icon changeIconName: #iconStop.
			self universe query: #(DeltaTime) do: [:deltaTime | startTime := deltaTime elapsed].
			
			eventHistory := OrderedCollection new.
			self universe when: #externalEvent send: #recordEvent: to: self.
			snapshot := self universe state veryDeepCopy]
		ifTrue: [
			recording := false.
			self universe query: #(DeltaTime) do: [:deltaTime | endTime := deltaTime elapsed].
			self universe removeActionsWithReceiver: self forEvent: #externalEvent.
			recordButton icon changeIconName: #iconCircle.
			recordButton label: 'Start Recording'.
			self toggleLooping]