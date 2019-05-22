as yet unclassified
green: aNumber

	^ (self bitClear: 8r0070) bitOr: (aNumber bitShift: 8)