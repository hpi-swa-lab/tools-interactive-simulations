as yet unclassified
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock ifNotMatching: anotherBlock

	lists doWithIndex: [:list :componentIndex | | component |
		component := (list atForRead: index).
		component alive
			ifTrue: [aCollection at: componentIndex put: component]
			ifFalse: [(componentClasses at: componentIndex) class = OptionalComponent
				ifTrue: [aCollection at: componentIndex put: nil]
				ifFalse: [^ anotherBlock value]]].
	
	^ aBlock value: aCollection