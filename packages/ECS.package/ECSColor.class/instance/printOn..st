as yet unclassified
printOn: aStream

	aStream
		nextPutAll: 'ECSColor(';
		nextPutAll: self red asString;
		nextPutAll: ', ';
		nextPutAll: self green asString;
		nextPutAll: ', ';
		nextPutAll: self blue asString;
		nextPutAll: ', ';
		nextPutAll: self alpha asString;
		nextPut: $)