as yet unclassified
atForFetch: aNumber

	^ (alive atForFetch: aNumber) ifTrue: [aNumber] ifFalse: [0]