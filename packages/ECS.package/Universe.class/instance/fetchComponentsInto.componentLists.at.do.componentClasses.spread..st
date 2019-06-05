component lifecyle
fetchComponentsInto: aCollection componentLists: lists at: entityIndex do: aBlock componentClasses: aCollectionOfClasses spread: aBoolean

	1 to: lists size do: [:index | | list component |
		list := lists at: index.
		component := list atForRead: entityIndex.
		component alive
			ifTrue: [aCollection at: index put: component]
			ifFalse: [(aCollectionOfClasses at: index) class = OptionalComponent
				ifTrue: [aCollection at: index put: nil]
				ifFalse: [^ self]]].
	
	aBoolean
		ifTrue: [aBlock valueWithArguments: aCollection]
		ifFalse: [aBlock value: aCollection]