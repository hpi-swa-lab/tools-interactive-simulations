as yet unclassified
testAddingWithComponents

	| universe entity entity2 |
	universe := Universe new.
	self assert: (universe queryList: #(Colliding)) isEmpty.
	
	entity := universe spawnNewWith: #(Colliding) do: [:c |].
	self assert: (universe queryList: {#Colliding}) size = 1.
	self assert: (universe queryList: {#Colliding. #Physics}) size = 0.
	
	universe attach: (#Physics) to: entity.
	self assert: (universe queryList: {#Colliding. #Physics}) size = 1.
	
	entity2 := universe spawnNewWith: {#Colliding. #Physics} do: [:c :p |].
	self assert: (universe queryList: {#Colliding}) size = 2.
	self assert: (universe queryList: {#Colliding. #Physics}) size = 2.
	
	universe remove: #Physics from: entity.
	self assert: (universe queryList: {#Colliding}) size = 2.
	self assert: (universe queryList: {#Colliding. #Physics}) size = 1.
	
	universe remove: entity.
	self assert: (universe queryList: {#Colliding}) size = 1.
	self assert: (universe queryList: {#Colliding. #Physics}) size = 1.
	
	universe remove: entity2.
	self assert: (universe queryList: {#Colliding}) size = 0.
	self assert: (universe queryList: {#Colliding. #Physics}) size = 0.