component lifecyle
getSingle: aComponentClass of: anEntityId

	| c |
	c := (components at: aComponentClass) atForFetch: anEntityId.
	^ c alive ifTrue: [c] ifFalse: []