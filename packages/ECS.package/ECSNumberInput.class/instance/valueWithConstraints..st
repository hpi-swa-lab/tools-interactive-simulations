as yet unclassified
valueWithConstraints: aNumber

	self value: (self value + aNumber clampLow: self min high: self max)