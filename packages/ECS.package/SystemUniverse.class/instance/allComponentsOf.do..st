component lifecyle
allComponentsOf: anEntityId do: aBlock

	components valuesDo: [:componentList |
		(componentList at: anEntityId) ifNotNil: aBlock]