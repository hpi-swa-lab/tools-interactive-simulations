as yet unclassified
matchEntityAt: index

	componentLists doWithIndex: [:list :componentIndex | | component |
		component := list atForFetch: index.
		component alive
			ifTrue: [filledComponents at: componentIndex put: component]
			ifFalse: [(componentClasses at: componentIndex) class = OptionalComponent
				ifTrue: [filledComponents at: componentIndex put: nil]
				ifFalse: [^ nil]]].
	
	^ filledComponents