as yet unclassified
extent: newExtent

	super extent: newExtent.
	
	self scroller hasSubmorphs ifTrue: [self scroller firstSubmorph width: self width]