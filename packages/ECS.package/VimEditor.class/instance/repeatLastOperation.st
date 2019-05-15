as yet unclassified
repeatLastOperation

	repeatableOperation ifNotNil: [:o | | newOperation |
		newOperation := o repeatCopy.
		self apply: newOperation]