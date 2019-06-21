button-functionality
removeMethod: aMethodSymbol from: aSystem

	functionsArea removeMorph: (nonRequiredFunctionsInUI removeKey: aMethodSymbol).
	aSystem class removeSelector: aMethodSymbol