button-functionality
removeConstantFrom: aSystem named: aSymbol row: aMorph

	aSystem class removeClassVarName: aSymbol.
	aMorph delete