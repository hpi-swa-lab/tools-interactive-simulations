as yet unclassified
updateEntity: aNumber components: aCollection

	components := aCollection.
	self isExpanded ifTrue: [self updateComponents: aCollection].
	
	id := aCollection detect: #isNumber ifNone: [].
	nameLabel contents: (aCollection
		detect: [:c | c class = Label]
		ifFound: [:labelComponent | labelComponent label asString]
		ifNone: ['Entity ', id asString])