component lifecyle
getSingle: aComponentClass of: anEntityId

	| c |
	c := (components at: aComponentClass ifAbsentPut: [self constructStorageFor: aComponentClass]) atForFetch: anEntityId.
	^ c alive ifTrue: [c] ifFalse: []