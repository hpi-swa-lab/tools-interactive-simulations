initialization
addConstant

	| name |
	name := UIManager default request: 'Name of the constant'.
	name ifEmpty: [^ self].
	name := name capitalized asSymbol.
	self system class addClassVarName: name.
	constantsArea
		addMorphBack: (self buildConstantRowNamed: name)