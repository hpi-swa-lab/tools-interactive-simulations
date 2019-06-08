as yet unclassified
loopPerformMutatingFields

	| inst |
	inst := self new.
	^ [self fields with: self mutatingFields do: [:field :mutatingField |
			inst perform: mutatingField with: (inst perform: field)]] bench