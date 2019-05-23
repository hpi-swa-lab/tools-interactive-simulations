as yet unclassified
atForWrite: aNumber

	^ (alive at: aNumber) ifTrue: [aNumber] ifFalse: [alive at: aNumber put: true. aNumber]