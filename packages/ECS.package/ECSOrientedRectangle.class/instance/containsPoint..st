geometry
containsPoint: aPoint
	| top topDot right rightDot |
	top := self topRight - self topLeft.
	topDot := top dotProduct: aPoint - self topLeft.
	
	(0 <= topDot and: [topDot <= (top dotProduct: top)]) ifFalse: [^false].
	
	right := self bottomRight - self topRight.
	rightDot := right dotProduct: aPoint - self topRight.
	
	^0 <= rightDot and: [rightDot <= (right dotProduct: right)]