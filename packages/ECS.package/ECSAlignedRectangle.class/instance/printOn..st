as yet unclassified
printOn: aStream

	origin printOn: aStream.
	aStream nextPutAll: ' extent: '.
	self extent printOn: aStream