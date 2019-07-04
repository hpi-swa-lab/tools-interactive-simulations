initialize-release
printOn: aStream

	aStream nextPutAll: self className.
	aStream nextPut: $(.
	self components do: [:c | c storeOn: aStream] separatedBy: [aStream space].
	aStream space.
	aStream nextPutAll: morph system className.
	aStream nextPut: $)