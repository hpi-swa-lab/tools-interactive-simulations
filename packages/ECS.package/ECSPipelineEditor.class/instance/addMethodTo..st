as yet unclassified
addMethodTo: aSystem

	| methodSignature |
	methodSignature := UIManager default request: 'Enter name/signature for new method'.
	methodSignature ifEmpty: [^ self].
	
	aSystem class compile: methodSignature, String cr, String cr, String tab.
	
	(systemFunctionsAreasInUI at: aSystem) addMorphBack: (self buildMethodUIElementfor: methodSignature asSymbol of: aSystem)