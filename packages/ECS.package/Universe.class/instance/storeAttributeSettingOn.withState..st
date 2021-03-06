api
storeAttributeSettingOn: aStream withState: aState

	aStream cr; nextPutAll: 'stepTime: '. self stepTime storeOn: aStream. aStream nextPut: $;; cr.
	
	self saveFilter ifNotNil: [
		aStream nextPutAll: 'saveFilter: '. saveFilter storeOn: aStream. aStream nextPut: $;; cr].
	
	self pipelines do: [:pipeline |
		aStream nextPutAll: 'register: '. pipeline storeOn: aStream. aStream nextPut: $;; cr].
	
	self saveFilter
		ifNotNil: [(self saveFilter value: self) do: [:components | aState storeEntity: components first on: aStream]]
		ifNil: [(1 to: aState maxEntityIndex) do: [:entity | aState storeEntity: entity on: aStream]].
	
	self templates do: [:template |
		aStream cr; tab; nextPutAll: 'addTemplate: '. template storeOn: aStream. aStream nextPut: $;; cr].
	
	aStream nextPutAll: 'save; yourself'