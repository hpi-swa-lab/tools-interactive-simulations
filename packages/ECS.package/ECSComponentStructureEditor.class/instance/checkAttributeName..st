validation
checkAttributeName: aString

	Smalltalk at: #RBCondition ifAbsent: [
		aString first isUppercase ifTrue: [self validationError: 'The first character should not be capitalized.']].
	Smalltalk at: #RBCondition ifPresent: [:rbCondition | 
		(rbCondition checkInstanceVariableName: aString in: EntityComponent) ifFalse: [
			^ self validationError: 'The name is not a valid instance variable name']]