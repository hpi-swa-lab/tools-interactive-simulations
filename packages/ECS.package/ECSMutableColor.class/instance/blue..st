as yet unclassified
blue: aNumber

	rgba := (rgba bitClear: 8r0700) bitOr: (aNumber bitShift: 16)