accessing
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: ECSImageAsset name;
		nextPutAll: ' new of: '; nextPutAll: self bundle title;
		nextPutAll: ' at: '. self identifier storeOn: aStream.
	aStream nextPutAll: ' scale: '. self scale storeOn: aStream.
	aStream nextPut: $)