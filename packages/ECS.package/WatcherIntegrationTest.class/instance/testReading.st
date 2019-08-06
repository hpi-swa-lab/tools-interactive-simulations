as yet unclassified
testReading

	| source a b c method editor |
	source := 'tick: aUniverse
	^ {$a. $b. $c. $d. $e}'.
	system compile: source.
	a := source findString: '$a'.
	b := source findString: '$b'.
	c := source findString: '$c'.
	method := system >> #tick:.
	method propertyValueAt: #ecsWatcherIntervals put: (Dictionary newFrom: {
		(a to: a + 1) -> 'id-of-a'.
		(c to: c + 1) -> 'id-of-c'.
		(b to: b + 1) -> 'id-of-b'}).
		
	editor := ECSCodeMethodEditor new
		method: method;
		yourself.
	self assert: 'tick: aUniverse
	^ {$a"', (String value: 1), '". $b"', (String value: 1), '". $c"', (String value: 1), '". $d. $e}' equals: editor text asString.
	
	{a. 'a'. b + 3. 'b'. c + 6. 'c'} pairsDo: [:index :char | | id |
		id := 'id-of-', char.
		self checkAttributeAt: index + 0 forId: id andClass: ECSWatchedExpressionAttribute in: editor.
		self checkAttributeAt: index + 1 forId: id andClass: ECSWatchedExpressionAttribute in: editor.
		self checkAttributeAt: index + 3 forId: id andClass: ECSTextAnchor in: editor]
	