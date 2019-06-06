as yet unclassified
storeForTemplateOn: aStream

	aStream nextPutAll: self className; nextPutAll: ' new'" x: '. x storeOn: aStream.
	aStream nextPutAll: '; y:'. y storeOn: aStream"