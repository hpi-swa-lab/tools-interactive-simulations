accessing
greenUnscaled

	^ ((rgba bitAnd: 16r0000ff00) bitShift: -8)