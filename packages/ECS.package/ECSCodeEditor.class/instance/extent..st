as yet unclassified
extent: aPoint

	self fullExpand ifTrue: [
		^ super extent: self paragraphSize].
	
	self wrapFlag
		ifFalse: [super extent: (aPoint x @ self paragraphSize y) ceiling]
		ifTrue: [super extent: (self sizeForWidth: aPoint x)]