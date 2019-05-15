as yet unclassified
testFetchesCorrectComponents

	| universe entity entity2 c1 c2 p2 list |
	universe := SystemUniverse new.
	
	c1 := Colliding new.
	c2 := Colliding new.
	p2 := Physics new.
	entity := universe spawnNewWith: {c1}.
	entity2 := universe spawnNewWith: {c2. p2}.
	
	list := universe queryList: {Colliding}.
	self assert: ((list collect: #first) hasEqualElements: {c1. c2})