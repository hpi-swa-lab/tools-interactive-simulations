as yet unclassified
green: aNumber

	self rgba: ((self rgba bitClear: 8r0070) bitOr: (aNumber bitShift: 8))