as yet unclassified
benchBitArray

	| array mask |
	array := Array new: self entityCount.
	mask := (Smalltalk at: #BitArray ifAbsent: [Array]) new: self entityCount.
	
	1 to: self entityCount do: [:i |
		array at: i put: (ECSMutablePoint new x: 0.0; y: 0.0).
		mask at: i put: (i even ifTrue: [1] ifFalse: [0])].
	
	TimeProfileBrowser spyOn: [self runBitArray: array mask: mask]