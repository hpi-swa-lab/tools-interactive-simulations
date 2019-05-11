resources
resource: aResourceClass do: aBlock

	^ self resources
			detect: [:r | r class = aResourceClass]
			ifFound: aBlock
			ifNone: []