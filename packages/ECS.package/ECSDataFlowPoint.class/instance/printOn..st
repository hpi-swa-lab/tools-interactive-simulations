as yet unclassified
printOn: aStream

	aStream nextPutAll: self className.
	aStream nextPut: $(.
	self components do: [:c | c storeOn: aStream] separatedBy: [aStream space].
	aStream nextPut: $)