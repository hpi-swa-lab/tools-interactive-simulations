as yet unclassified
updateWith: aUniverse

	| query |
	
	query := (aUniverse queryById: self id) first.
	self title: (query 
		detect: [ :component | component class == Label]
		ifFound:  [:labelComponent | labelComponent label asString, ' (Entity ', self id asString, ')']
		ifNone: ['Entity ', self id asString]).
	query do: [ :component |
		component isNumber not ifTrue: [
			(self addComponent: component)]]