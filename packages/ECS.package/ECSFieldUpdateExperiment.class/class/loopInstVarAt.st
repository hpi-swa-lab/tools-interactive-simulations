as yet unclassified
loopInstVarAt

	| inst |
	inst := self new.
	^ [1 to: self instSize do: [:index |
			inst instVarAt: index put: (inst instVarAt: index)]] bench