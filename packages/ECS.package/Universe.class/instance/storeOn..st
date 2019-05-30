api
storeOn: aStream

	" have to hardcode Universe class name here because `self className` will use our subclasses' class name and thus duplicate the initialize "
	aStream nextPutAll: Universe name; nextPutAll: ' new'; cr.
	
	self pipelines do: [:pipeline |
		aStream nextPutAll: 'register: '. pipeline storeOn: aStream. aStream nextPut: $;; cr].
	
	(1 to: self maxEntityIndex) do: [:entity | | entityComponents |
		entityComponents := (self allComponentsOf: entity) select: [:c | c isNumber not].
		aStream nextPutAll: 'spawnNewWith: {'.
		entityComponents do: [:component | aStream nextPutAll: component className] separatedBy: [aStream nextPutAll: '. '].
		aStream nextPutAll: '} do: ['.
		entityComponents do: [:component | aStream nextPut: $:; nextPutAll: component className asLegalSelector; space].
		aStream nextPut: $|; space; cr.
		entityComponents do: [:component |
			aStream tab; nextPutAll: component className asLegalSelector; space.
			component storeFieldsOn: aStream] separatedBy: [aStream nextPut: $.. aStream cr].
		aStream nextPut: $]; nextPut: $;; cr].
	
	self templates do: [:template |
		aStream cr; tab; nextPutAll: 'addTemplate: '. template storeOn: aStream. aStream nextPut: $;; cr].
	
	aStream nextPutAll: 'yourself'