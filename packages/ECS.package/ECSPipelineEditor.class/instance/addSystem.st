button-functionality
addSystem

	| name class |
	
	name := UIManager default
		chooseFromOrAddTo: (System subclasses collect: #name) sorted
		lines: OrderedCollection new
		title: 'Choose existing or create new system to add'.
	(name isNil or: [name isEmpty] or: [(systemsInUI keys collect: [:system | system className asSymbol]) includes: name asSymbol])
		ifTrue: [^ self].
	
	class := Smalltalk at: name ifAbsent: [self createNewSystemClass: name].
	pipeline register: class new