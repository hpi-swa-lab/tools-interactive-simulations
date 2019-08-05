as yet unclassified
nextLargest

	x := x < 0 ifTrue: [x floor] ifFalse: [x ceiling].
	y := y < 0 ifTrue: [y floor] ifFalse: [y ceiling]