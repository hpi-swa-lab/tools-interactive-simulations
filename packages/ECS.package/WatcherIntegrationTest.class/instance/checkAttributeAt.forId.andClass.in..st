as yet unclassified
checkAttributeAt: index forId: id andClass: class in: editor
	
	| attributes attribute |
	attributes := (editor text attributesAt: index) select: [:each | each isKindOf: class].
	self assert: 1 equals: attributes size.
	attribute := attributes first.
	self assert: editor equals: attribute codeEditor.
	id ifNotNil: [self assert: id equals: attribute id]