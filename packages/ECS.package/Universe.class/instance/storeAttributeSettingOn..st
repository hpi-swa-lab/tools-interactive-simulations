api
storeAttributeSettingOn: aStream

	aStream cr; nextPutAll: 'stepTime: '. self stepTime storeOn: aStream. aStream nextPut: $;; cr.
	
	self saveFilter ifNotNil: [
		aStream nextPutAll: 'saveFilter: '. saveFilter storeOn: aStream. aStream nextPut: $;; cr].
	
	self pipelines do: [:pipeline |
		aStream nextPutAll: 'register: '. pipeline storeOn: aStream. aStream nextPut: $;; cr].
	
	self saveFilter
		ifNotNil: [(self saveFilter value: self) do: [:components | self storeEntity: components first on: aStream]]
		ifNil: [(1 to: self maxEntityIndex) do: [:entity | self storeEntity: entity on: aStream]].
	
	self templates do: [:template |
		aStream cr; tab; nextPutAll: 'addTemplate: '. template storeOn: aStream. aStream nextPut: $;; cr].
	
	aStream nextPutAll: 'yourself'