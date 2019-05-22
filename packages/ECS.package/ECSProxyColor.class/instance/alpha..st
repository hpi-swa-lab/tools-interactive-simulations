as yet unclassified
alpha: aNumber

	self rgba: ((self rgba bitClear: 8r7000) bitOr: (aNumber bitShift: 24))