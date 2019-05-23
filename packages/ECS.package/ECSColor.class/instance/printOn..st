as yet unclassified
printOn: aStream

	aStream
		nextPutAll: 'ECSColor(';
		nextPutAll: self alpha asString;
		nextPutAll: ', ';
		nextPutAll: self red asString;
		nextPutAll: ', ';
		nextPutAll: self green asString;
		nextPutAll: ', ';
		nextPutAll: self blue asString;
		nextPut: $)