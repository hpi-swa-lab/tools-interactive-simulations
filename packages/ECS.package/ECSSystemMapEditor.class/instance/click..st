as yet unclassified
click: anEvent

	| methodSignature selector |
	methodSignature := (UIManager default request: 'Enter name/signature for new method') ifEmpty: [^ self].
	
	selector := system class compile: methodSignature, String cr, String cr, String tab.
	self addMorphBack: ((self editorForMethod: (system class lookupSelector: selector))
		position: anEvent position - self position;
		yourself)