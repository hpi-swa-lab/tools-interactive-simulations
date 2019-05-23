as yet unclassified
alpha: aNumber

	(rgba bitClear: 8r7000) bitOr: ((aNumber * 255.0) asInteger bitShift: 24)