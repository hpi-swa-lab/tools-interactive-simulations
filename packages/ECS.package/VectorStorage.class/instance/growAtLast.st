as yet unclassified
growAtLast

	| newArray |
	newArray := Array new: (storage size * 2 max: 1).
	newArray 
		replaceFrom: 1
		to: storage size
		with: storage
		startingAt: 1.
	storage := newArray