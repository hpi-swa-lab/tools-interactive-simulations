as yet unclassified
testReuseAfterRemove

	| universe entity entity2 entity3 |
	universe := Universe new.
	self assert: (universe queryList: #(Colliding)) isEmpty.
	
	entity := universe spawnNewWith: #(Colliding Physics) do: [:c :p |].
	self assert: (universe queryList: #(Colliding Physics)) size = 1.
	
	entity2 := universe spawnNewWith: #(Colliding Physics) do: [:c :p |].
	self assert: (universe queryList: #(Colliding Physics)) size = 2.
	
	universe remove: entity.
	self assert: (universe queryList: #(Colliding Physics)) size = 1.
	
	entity3 := universe spawnNewWith: #(Colliding Physics) do: [:c :p |].
	self assert: (universe queryList: #(Colliding Physics)) size = 2