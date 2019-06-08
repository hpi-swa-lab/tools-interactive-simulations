as yet unclassified
storeFieldsOn: aStream

	self class fields
		do: [:name |
			aStream nextPutAll: name; nextPutAll: ': '.
			(self perform: name) storeOn: aStream]
		separatedBy: [aStream nextPutAll: '; ']