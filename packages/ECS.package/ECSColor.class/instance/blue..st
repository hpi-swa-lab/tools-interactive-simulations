as yet unclassified
blue: aNumber

	^ (self bitClear: 8r0700) bitOr: (aNumber bitShift: 16)