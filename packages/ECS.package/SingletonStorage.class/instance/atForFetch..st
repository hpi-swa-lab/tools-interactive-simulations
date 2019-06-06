as yet unclassified
atForFetch: aNumber

	^ myEntityId = aNumber ifTrue: [singleInstance] ifFalse: [nullInstance]