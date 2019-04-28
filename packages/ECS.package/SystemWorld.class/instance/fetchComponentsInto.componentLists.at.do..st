as yet unclassified
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock

	lists doWithIndex: [:list :componentIndex | (list at: index) ifNotNil: [:c | aCollection at: componentIndex put: c] ifNil: [^ self]].
	aBlock value: aCollection