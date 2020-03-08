api
query: aListOfComponentClasses filter: aFilterBlock do: aBlock

	state
		query: aListOfComponentClasses
		do: [:components |
			(aFilterBlock valueWithArguments: components)
				ifTrue: [aBlock valueWithArguments: components]]
		spread: false