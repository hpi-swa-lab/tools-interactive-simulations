as yet unclassified
enumerateFields

	| inst |
	inst := self new.
	^ [inst class instVarNames] bench