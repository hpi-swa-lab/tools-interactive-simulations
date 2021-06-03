as yet unclassified
updateWith: aUniverse

	| method |
	self title: self id asString.
	method := (self id lookupSelector: #tick:) asSandblock.
	self addMorphBack: method