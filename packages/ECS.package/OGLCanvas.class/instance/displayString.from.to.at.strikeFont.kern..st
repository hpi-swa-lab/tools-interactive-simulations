bitblt-compat
displayString: aString from: startIndex to: stopIndex at: aPoint strikeFont: font kern: kernDelta

	" bitblt compat "
	self drawString: aString from: startIndex to: stopIndex in: (aPoint extent: 10000 @ 10000) font: font color: currentForegroundColor