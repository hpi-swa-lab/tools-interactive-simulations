as yet unclassified
loopOptimized

	| inst |
	inst := self new.
	^ [self fieldsDo: [:field :mutatingField |
			inst perform: mutatingField with: (inst perform: field)]] bench