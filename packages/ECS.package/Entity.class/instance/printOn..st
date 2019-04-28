as yet unclassified
printOn: aStream

	aStream nextPutAll: '[Entity '.
		
	self debugLabel ifNotNil: [aStream nextPutAll: self debugLabel; space].
	
	aStream nextPut: $(; nextPutAll: (alive ifTrue: ['alive'] ifFalse: ['dead']); nextPutAll: ')]'