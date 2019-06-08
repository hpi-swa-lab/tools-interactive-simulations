accessing
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: ECSTileMapAsset name;
		nextPutAll: ' of: '. self bundle title asSymbol storeOn: aStream.
	aStream nextPutAll: ' at: '. self identifier storeOn: aStream.
	aStream nextPutAll: ' scale: '. self scale storeOn: aStream.
	aStream nextPutAll: ' rotation: '. self rotation storeOn: aStream.
	aStream nextPut: $)