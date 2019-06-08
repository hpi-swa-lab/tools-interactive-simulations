as yet unclassified
updatePerformAccessor

	| inst |
	inst := self new.
	^ [inst perform: #x asMutator with: 6; perform: #y asMutator with: 20] bench