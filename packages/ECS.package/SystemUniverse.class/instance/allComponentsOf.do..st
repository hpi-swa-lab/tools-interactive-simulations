component lifecyle
allComponentsOf: anEntityId do: aBlock

	components valuesDo: [:componentList | | component |
		component := componentList atForRead: anEntityId.
		component alive ifTrue: [aBlock value: component]]