as yet unclassified
testFetchesCorrectComponents

	| universe entity entity2 c1 c2 p2 list |
	universe := Universe new.
	
	c1 := Colliding new.
	c2 := Colliding new.
	p2 := Physics new.
	entity := universe spawnNewWith: #(Colliding) do: [:c |].
	entity2 := universe spawnNewWith: #(Colliding Physics) do: [:c :p |].
	
	list := universe queryList: #(Colliding).
	self assert: ((list collect: #first) hasEqualElements: {
		(universe components at: #Colliding) atForFetch: 1.
		(universe components at: #Colliding) atForFetch: 2
	})