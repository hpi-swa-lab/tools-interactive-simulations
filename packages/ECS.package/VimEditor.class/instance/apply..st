as yet unclassified
apply: anOperation

	anOperation previousCursor: self markIndex.
	anOperation applyIn: self.
	lastOperation ifNotNil: [:o | o nextOperation: anOperation].
	lastOperation := anOperation.
	repeatableOperation := anOperation