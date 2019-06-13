as yet unclassified
testOptionalComponents

	| universe entity entity2 c1 c2 p2 list |
	universe := Universe new.
	
	entity := universe spawnNewWith: #(Colliding) do: [:c | c1 := c].
	entity2 := universe spawnNewWith: #(Colliding Physics) do: [:c :p | c2 := c. p2 := p].
	
	list := universe queryList: {#Colliding. #Physics optional}.
	self assert: ((list collect: #first) hasEqualElements: {c1. c2}).
	self assert: ((list collect: #second) hasEqualElements: {nil. p2})