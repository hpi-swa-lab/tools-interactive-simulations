as yet unclassified
addSystem

	| name class |
	
	name := UIManager default
		chooseFromOrAddTo: (System subclasses collect: [:systemClass | systemClass name asSymbol])
		lines: OrderedCollection new
		title: 'Choose existing or create new system to add'.
	(name isNil or: [name isEmpty] or: [(systemsInUI keys collect: [:system | system className asSymbol]) includes: name asSymbol])
		ifTrue: [^ self].
	
	class := Smalltalk at: name ifAbsent: [self createNewSystemClass: name].
	pipeline register: class new