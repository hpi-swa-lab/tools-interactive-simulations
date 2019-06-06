as yet unclassified
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self className.
	aStream nextPutAll: ' new'.
	aStream cr.
	aStream nextPutAll: 'name: ', $', self name, $'.
	self components ifNotNil: [aStream nextPut: $;].
	self components do: [:c | aStream nextPutAll: ' addComponent: ('. c storeOn: aStream. aStream nextPut: $)] separatedBy: [aStream nextPutAll: '; '].
	aStream nextPut: $)