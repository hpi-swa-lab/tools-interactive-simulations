as yet unclassified
fetchComponentsInto: aCollection componentLists: lists at: entityIndex do: aBlock componentClasses: aCollectionOfClasses spread: aBoolean

	1 to: lists size do: [:index | | list component |
		list := lists at: index.
		component := list atForFetch: entityIndex.
		component alive
			ifTrue: [aCollection at: index put: component]
			ifFalse: [(aCollectionOfClasses at: index) isOptional
				ifTrue: [aCollection at: index put: nil]
				ifFalse: [^ self]]].
	
	accesses := accesses + 1.
	queryLocalAccesses := queryLocalAccesses + 1.
	aBoolean
		ifTrue: [aBlock valueWithArguments: aCollection]
		ifFalse: [aBlock value: aCollection]