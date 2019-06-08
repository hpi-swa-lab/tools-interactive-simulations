as yet unclassified
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self className;
		nextPutAll: ' of: '. self bundle title asSymbol storeOn: aStream.
	aStream nextPutAll: ' at: '. self identifier storeOn: aStream.
	aStream nextPut: $)