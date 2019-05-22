as yet unclassified
alpha: aNumber

	^ (self bitClear: 8r7000) bitOr: (aNumber bitShift: 24)