as yet unclassified
stateArrayPut: anArray

	super stateArrayPut: anArray.
	mode := anArray at: 7.
	pendingOperation := anArray at: 8.
	pendingMotion := anArray at: 9.
	pendingCount := anArray at: 10.
	currentOperation := anArray at: 11.
	lastOperation := anArray at: 12.
	repeatableOperation := anArray at: 13.
	pendingRange := anArray at: 14