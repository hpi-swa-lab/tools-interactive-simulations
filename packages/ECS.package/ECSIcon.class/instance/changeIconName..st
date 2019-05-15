colors
changeIconName: anIconNameSymbol

	self svg: (PHIcon perform: (anIconNameSymbol ifNil: [#iconEmpty])) svg.
	
	cachedForm := nil.
	iconName := anIconNameSymbol.
	self changed