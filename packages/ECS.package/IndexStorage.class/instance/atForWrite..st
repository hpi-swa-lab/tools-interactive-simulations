as yet unclassified
atForWrite: aNumber

	^ (alive atForWrite: aNumber) 
		ifTrue: [aNumber] 
		ifFalse: [alive at: aNumber put: true. aNumber]