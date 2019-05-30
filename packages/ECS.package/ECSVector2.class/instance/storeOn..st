as yet unclassified
storeOn: aStream

	self x storeOn: aStream.
	aStream nextPutAll: ' , '.
	self y storeOn: aStream