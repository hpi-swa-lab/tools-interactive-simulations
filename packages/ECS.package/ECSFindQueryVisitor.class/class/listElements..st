as yet unclassified
listElements: aNode

	^ (aNode respondsTo: #key)
		ifTrue: [aNode key]
		ifFalse: [aNode elements collect: [:element | element isMessage ifTrue: [element receiver key] ifFalse: [element key]]]