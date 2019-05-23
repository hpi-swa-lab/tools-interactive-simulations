as yet unclassified
blue: aNumber

	rgba := (rgba bitAnd: 16rffffff00) bitOr: (aNumber * 255.0) asInteger