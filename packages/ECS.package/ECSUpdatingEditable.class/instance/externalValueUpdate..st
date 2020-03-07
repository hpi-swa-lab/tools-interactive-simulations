as yet unclassified
externalValueUpdate: anObject

	self updatesLocked
		ifTrue: [currentValueDisplay contents: anObject asString]
		ifFalse: [editor externalValueUpdate: anObject]