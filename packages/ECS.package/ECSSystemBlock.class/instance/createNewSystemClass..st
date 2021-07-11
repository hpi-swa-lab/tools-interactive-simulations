as yet unclassified
createNewSystemClass: aSystemClassName

	| name newClass |
	name := aSystemClassName.
	(name endsWith: 'System') ifFalse: [name := name, 'System'].
	
	newClass := System subclass: name asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self universe class category.
		
	newClass compile: 'tick: aUniverse\\	' withCRs.
	
	^ newClass