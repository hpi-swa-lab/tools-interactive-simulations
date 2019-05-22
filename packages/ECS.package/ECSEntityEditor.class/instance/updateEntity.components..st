as yet unclassified
updateEntity: aNumber components: aCollection

	components := aCollection.
	self isExpanded ifTrue: [self updateComponents: aCollection].
	
	nameLabel contents: (aCollection detect: [:c | c class = Label] ifFound: #label ifNone: ['Entity'])