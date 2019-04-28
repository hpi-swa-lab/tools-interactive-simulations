as yet unclassified
collectSystemResourcesFor: aSystem do: aBlock

	aBlock value: (aSystem resources collect: [:resourceClass |
		self resources
			detect: [:r | r class = resourceClass]
			ifNone: [^ self]])