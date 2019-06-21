button-functionality
addMethod

	| methodSignature |
	methodSignature := UIManager default request: 'Enter name/signature for new method'.
	methodSignature ifEmpty: [^ self].
	
	self system class compile: methodSignature, String cr, String cr, String tab.
	
	functionsArea addMorphBack: 
		(self buildMethodUIElementfor: methodSignature findSelector asSymbol of: self system)