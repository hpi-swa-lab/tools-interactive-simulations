as yet unclassified
storeOn: aStream

	aStream nextPutAll: self className; nextPutAll: ' new'.
	self class fields
		do: [:name |
			aStream space; nextPutAll: name; nextPutAll: ': '.
			(self perform: name) storeOn: aStream]
		separatedBy: [aStream nextPutAll: '; ']