as yet unclassified
testFetchesCorrectComponents

	| world entity entity2 c1 c2 p2 list |
	world := SystemWorld new.
	
	c1 := Colliding new.
	c2 := Colliding new.
	p2 := Physics new.
	entity := world spawnNewWith: {c1}.
	entity2 := world spawnNewWith: {c2. p2}.
	
	list := world queryList: {Colliding}.
	self assert: ((list collect: #first) hasEqualElements: {c1. c2})