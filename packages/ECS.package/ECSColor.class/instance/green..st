as yet unclassified
green: aNumber

	(rgba bitClear: 8r0070) bitOr: ((aNumber * 255.0) asInteger bitShift: 8)