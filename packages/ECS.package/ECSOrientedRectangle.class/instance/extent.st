geometry
extent
	^self topLeft y = self topRight y
		ifTrue: [((self topRight  x - self topLeft x) , (self bottomLeft y - self topLeft y)) abs]
		ifFalse: [(self topLeft dist: self topRight) , (self topLeft dist: bottomLeft)]