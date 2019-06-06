as yet unclassified
buildSystemFunctionsAreaAndFillItFor: aSystem

	| functionsColumn |
	functionsColumn := ECSColumn new.
	
	nonRequiredFunctionsInUI at: aSystem put: Dictionary new.
	
	aSystem class methodDictionary keys do: [:methodSymbol |
		(self requiredMethodSymbols includes: methodSymbol)
			ifTrue: [functionsColumn addMorphFront: (self buildRequiredMethodUIElementfor: methodSymbol of: aSystem)]
			ifFalse: [functionsColumn addMorphBack: (self buildMethodUIElementfor: methodSymbol of: aSystem)]].
	
	systemFunctionsAreasInUI at: aSystem put: functionsColumn.
	
	^ functionsColumn.