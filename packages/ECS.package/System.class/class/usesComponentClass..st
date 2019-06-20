as yet unclassified
usesComponentClass: aClass

	(self methodDictionary at: #tick:) literalsDo: [:literal |
		(literal isArray and: [literal includes: aClass name])
			ifTrue: [^ true]].
		
	^ false