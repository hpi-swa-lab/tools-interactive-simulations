as yet unclassified
green: aNumber

	rgba := (rgba bitClear: 8r0070) bitOr: (aNumber bitShift: 8)