as yet unclassified
storeOn: aStream

	aStream nextPut: $(.
	self origin storeOn: aStream.
	aStream nextPutAll: ' corner: '.
	self corner storeOn: aStream.
	aStream nextPut: $)