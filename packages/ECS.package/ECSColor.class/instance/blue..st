as yet unclassified
blue: aNumber

	(rgba bitClear: 8r0700) bitOr: ((aNumber * 255.0) asInteger bitShift: 16)