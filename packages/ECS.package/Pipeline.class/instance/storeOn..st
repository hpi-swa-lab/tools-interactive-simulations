as yet unclassified
storeOn: aStream

	aStream nextPut: $(.
	aStream nextPutAll: self className; nextPutAll: ' new'; cr.
	aStream tab; nextPutAll: 'title: '. self title storeOn: aStream. aStream nextPut: $;; cr.
	aStream tab; nextPutAll: 'runContinuously: '. self runContinuously storeOn: aStream.
	
	self systems do: [:system  |
		aStream nextPut: $;; cr; tab; nextPutAll: 'register: '; nextPutAll: system className; nextPutAll: ' new'].
	aStream nextPut: $)