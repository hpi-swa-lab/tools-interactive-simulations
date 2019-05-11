copying
fillOval: r color: c borderWidth: borderWidth borderColor: borderColor
	
	self flag: #todo. "actual oval"
	^ self frameAndFillRectangle: r fillColor: c borderWidth: borderWidth borderColor: borderColor