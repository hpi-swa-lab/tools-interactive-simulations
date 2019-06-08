as yet unclassified
loopPerformAsMutator

	| inst |
	inst := self new.
	^ [self fields do: [:field | inst perform: field asMutator with: (inst perform: field)]] bench