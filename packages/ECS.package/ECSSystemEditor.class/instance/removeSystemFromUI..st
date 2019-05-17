as yet unclassified
removeSystemFromUI: aSystem

	nonRequiredFunctionsInUI removeKey: aSystem.
	systemFunctionsAreasInUI removeKey: aSystem.
	list removeItem: (systemsInUI removeKey: aSystem)