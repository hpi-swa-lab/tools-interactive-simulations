as yet unclassified
newWith: anId in: aUniverse
	
	| query entity |

	query := (aUniverse queryById: anId) first.
	entity := self new
		id: anId;
		title: (query 
			detect: [:component | component class == Label]
			ifFound: [:labelComponent | labelComponent label asString, ' (Entity ', anId asString, ')']
			ifNone: ['Entity ', anId asString]).
	query do: [:component |
		component isNumber not 
			ifTrue: [entity addComponent: component]].
	aUniverse when: #postTick send: #updateValues to: entity.
	^ entity