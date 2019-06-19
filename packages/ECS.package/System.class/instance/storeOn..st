as yet unclassified
storeOn: aStream

	| constants |
	constants := self class classPool.
	
	constants ifNotEmpty: [aStream nextPut: $(].
	aStream nextPutAll: self className; nextPutAll: ' new'.
	self isDisabled ifTrue: [aStream nextPutAll: ' disable'].
	
	constants ifNotEmpty: [
		aStream cr.
		constants associations do: [:entry |
			aStream tab; nextPutAll: 'constantAt: #'; nextPutAll: entry key; nextPutAll: ' put: '.
			entry value storeOn: aStream] separatedBy: [aStream nextPut: $;; cr].
		aStream nextPut: $)].