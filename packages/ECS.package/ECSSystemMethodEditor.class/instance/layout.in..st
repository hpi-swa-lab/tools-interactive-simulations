as yet unclassified
layout: aMorph in: aRectangle

	editor bounds: (self position extent: editor minExtent).
	translateButton bounds: (self position + (aRectangle width @ 0) extent: translateButton minExtent).
	
	self extent: editor minExtent