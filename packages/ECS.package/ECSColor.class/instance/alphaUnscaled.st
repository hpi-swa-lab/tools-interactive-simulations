accessing
alphaUnscaled

	^ (rgba bitAnd: 16rff000000) bitShift: -24