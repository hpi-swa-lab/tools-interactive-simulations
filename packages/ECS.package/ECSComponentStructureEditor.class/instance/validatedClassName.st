validation
validatedClassName

	| name |
	name := nameMorph text asString.
	name ifEmpty: [self validationError: 'Please enter a name.'].
	Smalltalk at: #RBCondition ifAbsent: [
		name first isUppercase ifFalse: [self validationError: 'The first character should be capitalized.']].
	Smalltalk at: #RBCondition ifPresent: [:rbCondition | (rbCondition validClassName: name) ifFalse: [
			^ self validationError: 'The name is not a valid class name']].
	^ name asSymbol