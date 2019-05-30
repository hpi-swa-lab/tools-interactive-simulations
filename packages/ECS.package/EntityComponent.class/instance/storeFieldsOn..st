as yet unclassified
storeFieldsOn: aStream

	self class instVarNames
		do: [:name |
			aStream nextPutAll: name; nextPutAll: ': '.
			(self instVarNamed: name) storeOn: aStream]
		separatedBy: [aStream nextPutAll: '; ']