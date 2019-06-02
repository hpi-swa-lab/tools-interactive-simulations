as yet unclassified
evaluateExpression: anExpression

	self doItIsAccept
		ifTrue: [self accept]
		ifFalse: [
			self selectedClassOrMetaClass class evaluatorClass new 
				evaluate: self textMorph selection
				in: nil
				to: nil
				environment: (model environment ifNil: [Smalltalk globals])
				notifying: self
				ifFail: [self flash. ^ nil]
				logged: true.]