as yet unclassified
minExtent

	| labelExtent |
	labelExtent := self label ifNotNil: [(TextStyle defaultFont widthOfString: self label) @ TextStyle defaultFont height] ifNil: [0 @ 0].
	^ (labelExtent max: (self icon ifNotNil: #extent ifNil: [0 @ 0])) + (self layoutInset * 2) asPoint