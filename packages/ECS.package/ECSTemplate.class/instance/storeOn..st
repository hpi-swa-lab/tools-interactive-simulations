as yet unclassified
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self className.
	aStream nextPutAll: ' new'.
	self components do: [:c | aStream nextPutAll: ' addComponent: ('. c storeOn: aStream. aStream nextPut: $)] separatedBy: [aStream nextPutAll: '; '].
	aStream nextPut: $)