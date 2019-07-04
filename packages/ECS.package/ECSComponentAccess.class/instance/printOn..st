accessing
printOn: aStream

	aStream nextPutAll: self className; nextPut: $(.
	self componentClass storeOn: aStream.
	aStream nextPut: $,.
	self accessType printOn: aStream.
	aStream nextPut: $,.
	self sourceRange printOn: aStream.
	aStream nextPut: $).