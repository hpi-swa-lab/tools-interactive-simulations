as yet unclassified
growToAccomodate: aNumber
	" only call with numbers higher than the current max "

	| newArray |
	newArray := Array new: (aNumber asLargerPowerOfTwo).
	newArray 
		replaceFrom: 1
		to: storage size
		with: storage
		startingAt: 1.
	storage size + 1 to: newArray size do: [:index | newArray at: index put: self type new].
	storage := newArray