as yet unclassified
next

	index > maxIndex ifTrue: [^ nil].
	
	^ self
		fetchComponentsInto: filledComponents
		componentLists: componentLists
		at: index
		do: [:list | index := index + 1. list]
		ifNotMatching: [index := index + 1. self next]