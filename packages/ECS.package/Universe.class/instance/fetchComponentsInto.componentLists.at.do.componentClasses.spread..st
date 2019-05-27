component lifecyle
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock componentClasses: aCollectionOfClasses spread: aBoolean

	lists doWithIndex: [:list :componentIndex | | component |
		component := list atForRead: index.
		component alive
			ifTrue: [aCollection at: componentIndex put: component]
			ifFalse: [(aCollectionOfClasses at: componentIndex) class = OptionalComponent
				ifTrue: [aCollection at: componentIndex put: nil]
				ifFalse: [^ self]]].
	
	aBoolean
		ifTrue: [aBlock valueWithArguments: aCollection]
		ifFalse: [aBlock value: aCollection]