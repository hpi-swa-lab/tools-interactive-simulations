as yet unclassified
allComponentsOf: anEntityId do: aBlock

	components valuesDo: [:componentList | | component |
		component := componentList atForFetch: anEntityId.
		component alive ifTrue: [aBlock value: component]]