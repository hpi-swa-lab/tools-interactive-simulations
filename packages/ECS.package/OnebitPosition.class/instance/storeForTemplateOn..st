as yet unclassified
storeForTemplateOn: aStream

	" can't store x:y: because it requires that the storage is already set "
	aStream nextPutAll: self className; nextPutAll: ' new'" x: '. x storeOn: aStream.
	aStream nextPutAll: '; y:'. y storeOn: aStream"