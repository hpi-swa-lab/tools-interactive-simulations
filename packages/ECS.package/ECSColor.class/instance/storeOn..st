accessing
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self className; nextPutAll: ' rgba: '.
	self rgba storeOn: aStream base: 16.
	aStream nextPut: $)