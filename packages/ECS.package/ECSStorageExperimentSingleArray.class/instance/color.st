accessing
color

	^ currentColor privateRGB: (array at: self componentSize * offset + 1); yourself