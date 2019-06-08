as yet unclassified
updateAt

	| inst |
	inst := self new.
	^ [inst instVarAt: 1 put: 6; instVarAt: 2 put: 20] bench