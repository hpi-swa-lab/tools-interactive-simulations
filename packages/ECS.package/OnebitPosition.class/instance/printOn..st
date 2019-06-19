as yet unclassified
printOn: aStream

	aStream nextPutAll: self className; nextPutAll: '(x: '; nextPutAll: x asString; nextPutAll: ' y: '; nextPutAll: y asString; nextPut: $)