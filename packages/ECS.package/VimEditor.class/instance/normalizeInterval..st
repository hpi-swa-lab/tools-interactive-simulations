as yet unclassified
normalizeInterval: anInterval

	^ anInterval start > anInterval stop
		ifTrue: [anInterval stop to: anInterval start - 1]
		ifFalse: [anInterval]