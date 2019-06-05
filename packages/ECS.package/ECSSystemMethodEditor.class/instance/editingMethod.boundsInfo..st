as yet unclassified
editingMethod: aMethod boundsInfo: aDictionary

	| savedBounds |
	editor editingMethod: aMethod.
	boundsInfo := aDictionary.
	
	savedBounds := boundsInfo at: aMethod selector ifAbsent: [self fallbackBounds].
	
	self bounds: ((Display boundingBox containsRect: savedBounds) ifTrue: [savedBounds] ifFalse: [self fallbackBounds])