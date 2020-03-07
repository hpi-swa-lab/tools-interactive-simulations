as yet unclassified
loopPerformAsMutator

	| inst |
	inst := self new.
	^ [self fields do: [:field | inst perform: field asSimpleSetter with: (inst perform: field)]] bench