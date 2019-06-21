ui-building-updating-logic
removeMethod: aMethodSymbol from: aSystem

	(systemFunctionsAreasInUI at: aSystem) removeMorph: ((nonRequiredFunctionsInUI at: aSystem) removeKey: aMethodSymbol).
	aSystem class removeSelector: aMethodSymbol