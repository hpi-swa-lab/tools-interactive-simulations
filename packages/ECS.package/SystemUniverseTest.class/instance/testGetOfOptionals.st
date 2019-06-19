as yet unclassified
testGetOfOptionals

	| universe entity list entity2 entity3 |
	universe := Universe new.
	
	entity := universe spawnNewWith: {#Colliding. #Physics} do: [:c :p |].
	entity2 := universe spawnNewWith: {#Colliding} do: [:c |].
	entity3 := universe spawnNewWith: {} do: [].
	
	list := universe get: {#Colliding. #Physics optional} of: entity.
	self assert: 2 equals: list size.
	
	list := universe get: {#Colliding. #Physics optional} of: entity2.
	self assert: 2 equals: list size.
	
	list := universe get: {#Colliding. #Physics optional} of: entity3.
	self assert: nil equals: list.
	
	list := universe get: {#Colliding. #Collision optional} of: entity.
	self assert: 2 equals: list size