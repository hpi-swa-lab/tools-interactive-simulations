as yet unclassified
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock ifNotMatching: anotherBlock

	lists doWithIndex: [:list :componentIndex | (list at: index)
		ifNotNil: [:c | aCollection at: componentIndex put: c]
		ifNil: [(componentClasses at: componentIndex) class = OptionalComponent
			ifTrue: [aCollection at: componentIndex put: nil]
			ifFalse: [^ anotherBlock value]]].
	
	^ aBlock value: aCollection