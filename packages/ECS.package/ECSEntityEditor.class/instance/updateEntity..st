ui-building-updating
updateEntity: aCollection

	| newId |
	components := aCollection.
	self isExpanded ifTrue: [self updateComponents: aCollection].
	
	newId := aCollection detect: #isNumber ifNone: [].
	newId ~= id ifTrue: [
		id := newId.
		nameLabel contents: (aCollection
			detect: [:c | c class = Label]
			ifFound: [:labelComponent | labelComponent label asString, ' (Entity ', id asString, ')']
			ifNone: ['Entity ', id asString])]