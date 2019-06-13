api
storeEntity: anId on: aStream

	| entityComponents |
	entityComponents := (self allComponentsOf: anId) select: [:c | c isNumber not].
	entityComponents ifNotEmpty: [
		aStream nextPutAll: 'spawnNewWith: #('.
		entityComponents do: [:component | aStream nextPutAll: component className] separatedBy: [aStream nextPutAll: '. '].
		aStream nextPutAll: ') do: ['.
		entityComponents do: [:component | aStream nextPut: $:; nextPutAll: component className asLegalSelector; space].
		aStream nextPut: $|; space; cr.
		entityComponents do: [:component |
			aStream tab; nextPutAll: component className asLegalSelector; space.
			component storeFieldsOn: aStream] separatedBy: [aStream nextPut: $.. aStream cr].
		aStream nextPut: $]; nextPut: $;; cr]