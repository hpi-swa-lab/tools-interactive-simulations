as yet unclassified
createNewSystemClass

	| name newClass system |
	name := UIManager default request: 'Enter name for new system class' initialAnswer: 'System'.
	name ifEmpty: [^ self].
	
	(name endsWith: 'System') ifFalse: [name := name, 'System'].
	
	newClass := System subclass: name asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'ECS2-Custom'.
		
	newClass compile: 'tick: aUniverse', String cr, String cr, String tab.
	system := newClass new.
	self universe register: system