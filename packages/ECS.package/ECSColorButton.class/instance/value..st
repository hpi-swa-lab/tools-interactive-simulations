as yet unclassified
value: aColor

	aColor ~= colorBlob color ifTrue: [
		colorBlob color: (aColor ifNil: [ECSColor black])]