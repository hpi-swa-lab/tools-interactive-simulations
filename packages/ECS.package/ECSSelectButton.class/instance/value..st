as yet unclassified
value: anObject

	value := anObject.
	self label: (anObject ifNil: ['---'] ifNotNil: [labelBlock value: anObject])