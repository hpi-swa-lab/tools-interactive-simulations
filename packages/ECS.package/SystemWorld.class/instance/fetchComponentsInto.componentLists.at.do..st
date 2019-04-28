as yet unclassified
fetchComponentsInto: aCollection componentLists: lists at: index do: aBlock

	lists do: [:list | (list at: index) ifNotNil: [:c | aCollection at: index put: c] ifNil: [^ self]].
	aBlock value: aCollection