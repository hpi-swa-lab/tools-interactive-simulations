as yet unclassified
objectEvents

	| receiver senders point |
	receiver := ECSMessageExperiment new.
	senders := Array streamContents: [:s | 100 timesRepeat: [s nextPut: ECSMessageExperiment new]].
	
	senders do: [:sender |
		senders when: #positionChange send: #gotChange: to: receiver].
	
	point := 50 @ 20.
	1000 timesRepeat: [
		senders do: [:sender |
			sender doChangeEvent: point]]