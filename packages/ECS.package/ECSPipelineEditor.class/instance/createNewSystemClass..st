as yet unclassified
createNewSystemClass: aSystemClassName

	| name newClass |
	name := aSystemClassName.
	(name endsWith: 'System') ifFalse: [name := name, 'System'].
	
	newClass := System subclass: name asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'ECS2-Custom'.
		
	newClass compile: 'tick: aUniverse', String cr, String cr, String tab.
	
	^ newClass