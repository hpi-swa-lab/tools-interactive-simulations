as yet unclassified
testAddingWithComponents

	| world entity entity2 |
	world := SystemWorld new.
	self assert: (world queryList: {Colliding}) isEmpty.
	
	entity := world spawnNewWith: {Colliding new}.
	self assert: (world queryList: {Colliding}) size = 1.
	self assert: (world queryList: {Colliding. Physics}) size = 0.
	
	world attach: (Physics new) to: entity.
	self assert: (world queryList: {Colliding. Physics}) size = 1.
	
	entity2 := world spawnNewWith: {Colliding new. Physics new}.
	self assert: (world queryList: {Colliding}) size = 2.
	self assert: (world queryList: {Colliding. Physics}) size = 2.
	
	world remove: Physics from: entity.
	self assert: (world queryList: {Colliding}) size = 2.
	self assert: (world queryList: {Colliding. Physics}) size = 1.
	
	world remove: entity.
	self assert: (world queryList: {Colliding}) size = 1.
	self assert: (world queryList: {Colliding. Physics}) size = 1.
	
	world remove: entity2.
	self assert: (world queryList: {Colliding}) size = 0.
	self assert: (world queryList: {Colliding. Physics}) size = 0.