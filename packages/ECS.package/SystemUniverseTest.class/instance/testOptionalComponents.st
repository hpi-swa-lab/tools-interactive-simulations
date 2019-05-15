as yet unclassified
testOptionalComponents

	| universe entity entity2 c1 c2 p2 list |
	universe := SystemUniverse new.
	
	c1 := Colliding new.
	c2 := Colliding new.
	p2 := Physics new.
	entity := universe spawnNewWith: {c1}.
	entity2 := universe spawnNewWith: {c2. p2}.
	
	list := universe queryList: {Colliding. OptionalComponent for: Physics}.
	self assert: ((list collect: #first) hasEqualElements: {c1. c2}).
	self assert: ((list collect: #second) hasEqualElements: {nil. p2})