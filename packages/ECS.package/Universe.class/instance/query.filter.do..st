api
query: aListOfComponentClasses filter: aFilterBlock do: aBlock

	self
		query: aListOfComponentClasses
		do: [:components |
			(aFilterBlock valueWithArguments: components)
				ifTrue: [aBlock valueWithArguments: components]]
		spread: false