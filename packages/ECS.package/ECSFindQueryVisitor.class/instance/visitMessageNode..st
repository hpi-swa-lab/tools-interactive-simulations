as yet unclassified
visitMessageNode: aNode

	((#(query: queryById: query:filter:) includes: aNode selector key) and: [aNode receiver name = 'self'])
		ifTrue: [ | theArray |
			theArray := aNode arguments first.
			result := (theArray respondsTo: #key)
				ifTrue: [theArray key]
				ifFalse: [theArray elements collect: [:element | element isMessage ifTrue: [element receiver] ifFalse: [element]]]]