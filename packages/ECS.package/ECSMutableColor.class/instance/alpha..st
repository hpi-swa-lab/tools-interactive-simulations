as yet unclassified
alpha: aNumber

	rgba := (rgba bitClear: 8r7000) bitOr: (aNumber bitShift: 24)