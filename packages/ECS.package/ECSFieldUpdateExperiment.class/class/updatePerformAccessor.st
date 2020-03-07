as yet unclassified
updatePerformAccessor

	| inst |
	inst := self new.
	^ [inst perform: #x asSimpleSetter with: 6; perform: #y asSimpleSetter with: 20] bench