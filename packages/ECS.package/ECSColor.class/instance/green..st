as yet unclassified
green: aNumber

	rgba := (rgba bitAnd: 16rffff00ff) bitOr: ((aNumber * 255.0) asInteger bitShift: 8)