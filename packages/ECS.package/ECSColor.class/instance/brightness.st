accessing
brightness
	"Return the brightness of this color, a float in the range [0.0..1.0]."

	^ ((self redUnscaled max:
	    self greenUnscaled) max:
	    self blueUnscaled) asFloat / 255.0