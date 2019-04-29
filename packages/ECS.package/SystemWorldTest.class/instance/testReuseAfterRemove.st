as yet unclassified
testReuseAfterRemove

	| world entity entity2 entity3 |
	world := SystemWorld new.
	self assert: (world queryList: {Colliding}) isEmpty.
	
	entity := world spawnNewWith: {Colliding new. Physics new}.
	self assert: (world queryList: {Colliding. Physics}) size = 1.
	
	entity2 := world spawnNewWith: {Colliding new. Physics new}.
	self assert: (world queryList: {Colliding. Physics}) size = 2.
	
	world remove: entity.
	self assert: (world queryList: {Colliding. Physics}) size = 1.
	
	entity3 := world spawnNewWith: {Colliding new. Physics new}.
	self assert: (world queryList: {Colliding. Physics}) size = 2