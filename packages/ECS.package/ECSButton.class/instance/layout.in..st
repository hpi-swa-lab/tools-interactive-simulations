as yet unclassified
layout: aMorph in: aRectangle

	| labelExtent |
	labelExtent := self label ifNotNil: [(TextStyle defaultFont widthOfString: self label) @ TextStyle defaultFont height] ifNil: [0 @ 0].
	self layoutBounds: (labelExtent max: (self icon ifNotNil: #extent ifNil: [0 @ 0]))