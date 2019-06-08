as yet unclassified
updateInstVarNamed

	| inst |
	inst := self new.
	^ [inst instVarNamed: #x put: 6; instVarNamed: #y put: 20] bench