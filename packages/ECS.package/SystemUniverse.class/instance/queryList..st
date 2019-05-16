api
queryList: aListOfComponentClasses

	| list |
	list := OrderedCollection new.
	self query: aListOfComponentClasses do: [:l | list add: l copy] spread: false.
	^ list