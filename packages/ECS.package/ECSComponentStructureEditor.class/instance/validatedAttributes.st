validation
validatedAttributes

	^ instVarMorphs submorphs collect: [:each | | name class | 
		name := each submorphs second text asString.
		class := each submorphs fourth value.
		self checkAttributeName: name.
		{name. class}]