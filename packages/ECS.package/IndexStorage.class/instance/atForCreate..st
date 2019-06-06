as yet unclassified
atForCreate: aNumber

	^ (alive atForCreate: aNumber) 
		ifTrue: [aNumber] 
		ifFalse: [alive at: aNumber put: true. aNumber]