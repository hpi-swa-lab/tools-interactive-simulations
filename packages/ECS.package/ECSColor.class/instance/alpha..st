accessing
alpha: aNumber

	rgba := (rgba bitAnd: 16r00ffffff) bitOr: ((aNumber * 255.0) asInteger bitShift: 24)