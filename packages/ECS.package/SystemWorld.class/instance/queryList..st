as yet unclassified
queryList: aListOfComponentClasses

	| list |
	list := OrderedCollection new.
	(LazyComponentList new
		signature: aListOfComponentClasses;
		entities: self entities) do: [:l | list add: l copy].
	^ list