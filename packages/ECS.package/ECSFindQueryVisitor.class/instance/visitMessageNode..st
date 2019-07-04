as yet unclassified
visitMessageNode: aNode

	((#(query: queryById: query:filter:) includes: aNode selector key) and: [aNode receiver name = 'self'])
		ifTrue: [result := self class listElements: aNode arguments first]