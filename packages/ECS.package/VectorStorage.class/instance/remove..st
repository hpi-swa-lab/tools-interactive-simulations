as yet unclassified
remove: aNumber

	aNumber <= storage size ifTrue: [
		storage at: aNumber put: nil]