as yet unclassified
addConstantTo: aSystem

	| name |
	name := UIManager default request: 'Name of the constant'.
	name ifEmpty: [^ self].
	name := name capitalized asSymbol.
	aSystem class addClassVarNamed: name.
	(constantsAreas at: aSystem) 
		addMorphBack: (self buildConstantRowFor: aSystem named: name)