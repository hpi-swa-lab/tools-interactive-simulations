accessing
redUnscaled

	^ ((rgba bitAnd: 16r00ff0000) bitShift: -16)