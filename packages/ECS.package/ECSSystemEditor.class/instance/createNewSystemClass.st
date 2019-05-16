as yet unclassified
createNewSystemClass

	| name newClass |
	name := UIManager default request: 'Enter name for new system class' initialAnswer: 'System'.
	name ifEmpty: [^ self].
	
	(name endsWith: 'System') ifFalse: [name := name, 'System'].
	
	newClass := System subclass: name asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'ECS2-Custom'.
		
	newClass compile: 'tick: aUniverse', String cr, String cr, String tab.
	self universe register: newClass new