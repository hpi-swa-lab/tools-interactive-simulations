squeak-compat
privateRGB
	" return color in squeak format. Note: this function will almost never produce identical values to squeak colors, as we save them with a different precision "

	^ (((self blueUnscaled bitShift: 2) bitOr:
	((self greenUnscaled bitShift: 12))) bitOr:
	((self redUnscaled bitShift: 22)))