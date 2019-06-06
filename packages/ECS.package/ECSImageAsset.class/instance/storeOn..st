as yet unclassified
storeOn: aStream

	aStream nextPut: $(; nextPutAll: self className; nextPutAll: ' of: #'; nextPutAll: self bundle title; nextPutAll: ' at: '.
	self identifier storeOn: aStream.
	self isDerived ifTrue: [
		aStream nextPutAll: ' sized: '. self object extent asECSVector2 storeOn: aStream].
	aStream nextPut: $)