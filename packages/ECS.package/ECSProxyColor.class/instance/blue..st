as yet unclassified
blue: aNumber

	self rgba: ((self rgba bitClear: 8r0700) bitOr: (aNumber bitShift: 16))