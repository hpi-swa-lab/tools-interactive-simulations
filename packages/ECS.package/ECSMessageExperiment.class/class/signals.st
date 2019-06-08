as yet unclassified
signals

	| receiver senders point |
	receiver := ECSMessageExperiment new.
	senders := Array streamContents: [:s | 100 timesRepeat: [s nextPut: ECSMessageExperiment new]].
	
	senders do: [:sender |
		receiver connect: sender signal: #positionChanged: toSelector: #gotChange:].
	
	point := 50 @ 20.
	1000 timesRepeat: [
		senders do: [:sender |
			sender doChange: point]]