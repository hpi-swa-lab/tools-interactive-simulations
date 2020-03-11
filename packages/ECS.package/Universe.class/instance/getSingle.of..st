component lifecyle
getSingle: aComponentClass of: anEntityId

	| c |
	c := (state storageOf: aComponentClass) atForFetch: anEntityId.
	^ c alive ifTrue: [c] ifFalse: [nil]