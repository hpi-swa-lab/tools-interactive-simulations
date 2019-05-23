as yet unclassified
red: aNumber

	rgba := (rgba bitAnd: 16rff00ffff) bitOr: ((aNumber * 255.0) asInteger bitShift: 16)