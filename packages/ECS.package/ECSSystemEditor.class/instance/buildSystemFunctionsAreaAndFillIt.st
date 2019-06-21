initialization
buildSystemFunctionsAreaAndFillIt

	functionsArea := ECSColumn new.
	
	nonRequiredFunctionsInUI := Dictionary new.
	
	self system class methodDictionary keys sorted do: [:methodSymbol |
		(self requiredMethodSymbols includes: methodSymbol)
			ifTrue: [functionsArea addMorphFront: (self buildRequiredMethodUIElementfor: methodSymbol of: self system)]
			ifFalse: [functionsArea addMorphBack: (self buildMethodUIElementfor: methodSymbol of: self system)]].
	
	^ functionsArea