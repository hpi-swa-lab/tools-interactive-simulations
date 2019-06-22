button-functionality
removeConstantFrom: aSystem named: aSymbol row: aMorph

	aSystem class removeClassVarNamed: aSymbol.
	aMorph delete