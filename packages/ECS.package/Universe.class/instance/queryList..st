api
queryList: aListOfComponentClasses

	| list |
	list := OrderedCollection new.
	state query: aListOfComponentClasses do: [:l | list add: l copy] spread: false.
	^ list