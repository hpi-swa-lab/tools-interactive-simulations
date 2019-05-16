component lifecyle
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock componentClasses: aCollectionOfClasses spread: aBoolean

	lists doWithIndex: [:list :componentIndex | (list at: index)
		ifNotNil: [:c | aCollection at: componentIndex put: c]
		ifNil: [(aCollectionOfClasses at: componentIndex) class = OptionalComponent
			ifTrue: [aCollection at: componentIndex put: nil]
			ifFalse: [^ self]]].
	
	aBoolean
		ifTrue: [aBlock valueWithArguments: aCollection]
		ifFalse: [aBlock value: aCollection]