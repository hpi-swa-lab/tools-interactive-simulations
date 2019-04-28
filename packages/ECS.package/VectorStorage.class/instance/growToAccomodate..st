as yet unclassified
growToAccomodate: aNumber

	| newArray |
	newArray := Array new: (aNumber asLargerPowerOfTwo).
	newArray 
		replaceFrom: 1
		to: storage size
		with: storage
		startingAt: 1.
	storage := newArray