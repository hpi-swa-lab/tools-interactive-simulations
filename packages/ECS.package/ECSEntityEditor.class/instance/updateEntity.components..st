as yet unclassified
updateEntity: aNumber components: aCollection

	components := aCollection.
	self isExpanded ifTrue: [self updateComponents: aCollection].
	
	id ~= aNumber ifTrue: [
			id := aNumber.
			nameLabel contents: (aCollection detect: [:c | c class = Label] ifFound: #label ifNone: ['Entity ', aNumber asString])]