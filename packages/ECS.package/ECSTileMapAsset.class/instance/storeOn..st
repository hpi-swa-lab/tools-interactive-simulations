as yet unclassified
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self className;
		nextPutAll: ' of: '. self bundle title storeOn: aStream.
	aStream nextPutAll: ' at: '. self identifier storeOn: aStream.
	aStream nextPut: $)