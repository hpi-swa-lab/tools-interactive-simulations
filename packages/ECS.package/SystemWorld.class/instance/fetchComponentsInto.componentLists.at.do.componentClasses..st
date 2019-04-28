as yet unclassified
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock componentClasses: aCollectionOfClasses

	lists doWithIndex: [:list :componentIndex | (list at: index)
		ifNotNil: [:c | aCollection at: componentIndex put: c]
		ifNil: [(aCollectionOfClasses at: componentIndex) class = OptionalComponent
			ifTrue: [aCollection at: componentIndex put: nil]
			ifFalse: [^ self]]].
	aBlock value: aCollection