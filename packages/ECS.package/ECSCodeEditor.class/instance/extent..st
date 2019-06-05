as yet unclassified
extent: aPoint

	self wrapFlag
		ifFalse: [super extent: (aPoint x @ self paragraphWidth) ceiling]
		ifTrue: [super extent: (self sizeForWidth: aPoint x)]