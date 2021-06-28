as yet unclassified
newWith: anId in: aUniverse
	
	| query entity |

	query := (aUniverse queryById: anId) first.
	entity := self new
		id: anId;
		universe: aUniverse;
		title: (query 
			detect: [:component | component class == Label]
			ifFound: [:labelComponent | labelComponent label asString]
			ifNone: ['<unnamed entity>']).
	query do: [:component |
		component isNumber not 
			ifTrue: [entity addComponent: component]].
	aUniverse when: #postTick send: #updateValues to: entity.
	^ entity