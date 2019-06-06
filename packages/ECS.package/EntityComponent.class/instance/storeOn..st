as yet unclassified
storeOn: aStream

	aStream nextPutAll: self className; nextPutAll: ' new'.
	self class instVarNames
		do: [:name |
			aStream space; nextPutAll: name; nextPutAll: ': '.
			(self instVarNamed: name) storeOn: aStream]
		separatedBy: [aStream nextPutAll: '; ']