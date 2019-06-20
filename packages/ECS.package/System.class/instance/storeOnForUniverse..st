as yet unclassified
storeOnForUniverse: aStream

	aStream
		nextPut: $;;
		cr; tab;
		nextPutAll: 'register: (';
		nextPutAll: self className;
		nextPutAll: ' new enabled: '.
	enabled storeOn: aStream.
	aStream nextPut: $)