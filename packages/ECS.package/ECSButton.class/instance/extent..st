as yet unclassified
extent: aPoint

	| labelExtent |
	labelExtent := self label ifNotNil: [(TextStyle defaultFont widthOfString: self label) @ TextStyle defaultFont height] ifNil: [0 @ 0].
	super extent: (labelExtent max: (self icon ifNotNil: #extent ifNil: [0 @ 0])) + (self layoutInset * 2) asPoint