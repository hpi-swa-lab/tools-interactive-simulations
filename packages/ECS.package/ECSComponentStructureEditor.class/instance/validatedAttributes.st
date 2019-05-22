as yet unclassified
validatedAttributes

	^ instVarMorphs submorphs collect: [:each | | name className class | 
		name := each submorphs second text asString.
		className := each submorphs fourth text asSymbol.
		self checkAttributeName: name.
		class := Smalltalk at: className ifAbsent: [
			self validationError: 'The inst var type needs to be a valid class name.'].
		{name. class}]